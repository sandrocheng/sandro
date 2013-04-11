/*jadclipse*/// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) radix(10) lradix(10) 
// Source File Name:   CharacterEncoder.java

package com.tencent.onesecurity.util;

import java.io.*;
import java.nio.ByteBuffer;

public abstract class CharacterEncoder
{

    public CharacterEncoder()
    {
    }

    protected abstract int bytesPerAtom();

    protected abstract int bytesPerLine();

    protected void encodeBufferPrefix(OutputStream outputstream)
        throws IOException
    {
        pStream = new PrintStream(outputstream);
    }

    protected void encodeBufferSuffix(OutputStream outputstream)
        throws IOException
    {
    }

    protected void encodeLinePrefix(OutputStream outputstream, int i)
        throws IOException
    {
    }

    protected void encodeLineSuffix(OutputStream outputstream)
        throws IOException
    {
        pStream.println();
    }

    protected abstract void encodeAtom(OutputStream outputstream, byte abyte0[], int i, int j)
        throws IOException;

    protected int readFully(InputStream inputstream, byte abyte0[])
        throws IOException
    {
        for(int i = 0; i < abyte0.length; i++)
        {
            int j = inputstream.read();
            if(j == -1)
                return i;
            abyte0[i] = (byte)j;
        }

        return abyte0.length;
    }

    public void encode(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[bytesPerLine()];
        encodeBufferPrefix(outputstream);
        do
        {
            int j = readFully(inputstream, abyte0);
            if(j == 0)
                break;
            encodeLinePrefix(outputstream, j);
            for(int i = 0; i < j; i += bytesPerAtom())
                if(i + bytesPerAtom() <= j)
                    encodeAtom(outputstream, abyte0, i, bytesPerAtom());
                else
                    encodeAtom(outputstream, abyte0, i, j - i);

            if(j < bytesPerLine())
                break;
            encodeLineSuffix(outputstream);
        } while(true);
        encodeBufferSuffix(outputstream);
    }

    public void encode(byte abyte0[], OutputStream outputstream)
        throws IOException
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        encode(((InputStream) (bytearrayinputstream)), outputstream);
    }

    public String encode(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        String s = null;
        try
        {
            encode(((InputStream) (bytearrayinputstream)), ((OutputStream) (bytearrayoutputstream)));
            s = bytearrayoutputstream.toString("8859_1");
        }
        catch(Exception exception)
        {
            throw new Error("CharacterEncoder.encode internal error");
        }
        return s;
    }

    private byte[] getBytes(ByteBuffer bytebuffer)
    {
        byte abyte0[] = null;
        if(bytebuffer.hasArray())
        {
            byte abyte1[] = bytebuffer.array();
            if(abyte1.length == bytebuffer.capacity() && abyte1.length == bytebuffer.remaining())
            {
                abyte0 = abyte1;
                bytebuffer.position(bytebuffer.limit());
            }
        }
        if(abyte0 == null)
        {
            abyte0 = new byte[bytebuffer.remaining()];
            bytebuffer.get(abyte0);
        }
        return abyte0;
    }

    public void encode(ByteBuffer bytebuffer, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = getBytes(bytebuffer);
        encode(abyte0, outputstream);
    }

    public String encode(ByteBuffer bytebuffer)
    {
        byte abyte0[] = getBytes(bytebuffer);
        return encode(abyte0);
    }

    public void encodeBuffer(InputStream inputstream, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = new byte[bytesPerLine()];
        encodeBufferPrefix(outputstream);
        int j;
        do
        {
            j = readFully(inputstream, abyte0);
            if(j == 0)
                break;
            encodeLinePrefix(outputstream, j);
            for(int i = 0; i < j; i += bytesPerAtom())
                if(i + bytesPerAtom() <= j)
                    encodeAtom(outputstream, abyte0, i, bytesPerAtom());
                else
                    encodeAtom(outputstream, abyte0, i, j - i);

            encodeLineSuffix(outputstream);
        } while(j >= bytesPerLine());
        encodeBufferSuffix(outputstream);
    }

    public void encodeBuffer(byte abyte0[], OutputStream outputstream)
        throws IOException
    {
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        encodeBuffer(((InputStream) (bytearrayinputstream)), outputstream);
    }

    public String encodeBuffer(byte abyte0[])
    {
        ByteArrayOutputStream bytearrayoutputstream = new ByteArrayOutputStream();
        ByteArrayInputStream bytearrayinputstream = new ByteArrayInputStream(abyte0);
        try
        {
            encodeBuffer(((InputStream) (bytearrayinputstream)), ((OutputStream) (bytearrayoutputstream)));
        }
        catch(Exception exception)
        {
            throw new Error("CharacterEncoder.encodeBuffer internal error");
        }
        return bytearrayoutputstream.toString();
    }

    public void encodeBuffer(ByteBuffer bytebuffer, OutputStream outputstream)
        throws IOException
    {
        byte abyte0[] = getBytes(bytebuffer);
        encodeBuffer(abyte0, outputstream);
    }

    public String encodeBuffer(ByteBuffer bytebuffer)
    {
        byte abyte0[] = getBytes(bytebuffer);
        return encodeBuffer(abyte0);
    }

    protected PrintStream pStream;
}