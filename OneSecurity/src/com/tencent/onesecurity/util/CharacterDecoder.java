/*jadclipse*/// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.

package com.tencent.onesecurity.util;

import java.io.*;
import java.nio.ByteBuffer;

// Referenced classes of package sun.misc:
//            CEStreamExhausted

public abstract class CharacterDecoder
{

    public CharacterDecoder()
    {
    }

    protected abstract int bytesPerAtom();

    protected abstract int bytesPerLine();

    protected void decodeBufferPrefix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
    }

    protected void decodeBufferSuffix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
    }

    protected int decodeLinePrefix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
        return bytesPerLine();
    }

    protected void decodeLineSuffix(PushbackInputStream pushbackinputstream, OutputStream outputstream)
        throws IOException
    {
    }

    protected void decodeAtom(PushbackInputStream pushbackinputstream, OutputStream outputstream, int i)
        throws IOException
    {
        //throw new CEStreamExhausted();
    }

    protected int readFully(InputStream inputstream, byte abyte0[], int i, int j)
        throws IOException
    {
        for(int k = 0; k < j; k++)
        {
            int l = inputstream.read();
            if(l == -1)
                return k != 0 ? k : -1;
            abyte0[k + i] = (byte)l;
        }

        return j;
    }

    public void decodeBuffer(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        int j = 0;
        PushbackInputStream pushbackinputstream = new PushbackInputStream(inputstream);
        decodeBufferPrefix(pushbackinputstream, outputstream);
        try
        {
            do
            {
                int k = decodeLinePrefix(pushbackinputstream, outputstream);
                int i;
                for(i = 0; i + bytesPerAtom() < k; i += bytesPerAtom())
                {
                    decodeAtom(pushbackinputstream, outputstream, bytesPerAtom());
                    j += bytesPerAtom();
                }

                if(i + bytesPerAtom() == k)
                {
                    decodeAtom(pushbackinputstream, outputstream, bytesPerAtom());
                    j += bytesPerAtom();
                } else
                {
                    decodeAtom(pushbackinputstream, outputstream, k - i);
                    j += k - i;
                }
                decodeLineSuffix(pushbackinputstream, outputstream);
            } while(true);
        }
        catch(Exception cestreamexhausted)
        {
            decodeBufferSuffix(pushbackinputstream, outputstream);
        }
    }

    public byte[] decodeBuffer(String s)
        throws IOException
    {
        byte abyte0[] = new byte[s.length()];
        s.getBytes(0, s.length(), abyte0, 0);
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        decodeBuffer(((InputStream) (bytearrayinputstream)), ((OutputStream) (bytearrayoutputstream)));
        return bytearrayoutputstream.toByteArray();
    }

    public byte[] decodeBuffer(InputStream inputstream)
        throws IOException
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        decodeBuffer(inputstream, ((OutputStream) (bytearrayoutputstream)));
        return bytearrayoutputstream.toByteArray();
    }

    public ByteBuffer decodeBufferToByteBuffer(String s)
        throws IOException
    {
        return ByteBuffer.wrap(decodeBuffer(s));
    }

    public ByteBuffer decodeBufferToByteBuffer(InputStream inputstream)
        throws IOException
    {
        return ByteBuffer.wrap(decodeBuffer(inputstream));
    }
}