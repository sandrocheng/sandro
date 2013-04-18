package com.d.a;

import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.PrintStream;
import java.io.RandomAccessFile;
import java.nio.Buffer;
import java.nio.ByteBuffer;

public final class c
{
  private ByteBuffer a = ByteBuffer.allocate(1024);
  private byte[] b = this.a.array();

  private void a(int paramInt, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    int i = paramInt;
    while (i > 0)
    {
      int j = Math.min(this.b.length, i);
      int k = paramInputStream.read(this.b, 0, j);
      if (k == -1)
        throw new EOFException("cannot read " + i);
      paramOutputStream.write(this.b, 0, k);
      i -= k;
    }
  }

  private void a(long paramLong, int paramInt, g paramg, OutputStream paramOutputStream)
  {
    paramg.a(paramLong);
    int i = paramInt;
    while (i > 0)
    {
      int j = Math.min(this.a.capacity(), i);
      this.a.clear().limit(j);
      int k = paramg.a(this.a);
      if (k == -1)
        throw new EOFException("in copy " + paramLong + " " + i);
      paramOutputStream.write(this.a.array(), 0, k);
      i -= k;
    }
  }

  private void a(File paramFile1, File paramFile2, File paramFile3)
  {
    f localf = new f(new RandomAccessFile(paramFile1, "r"));
    FileInputStream localFileInputStream = new FileInputStream(paramFile2);
    FileOutputStream localFileOutputStream = new FileOutputStream(paramFile3);
    try
    {
      a(localf, localFileInputStream, localFileOutputStream);
      return;
    }
    catch (IOException localIOException)
    {
      throw localIOException;
    }
    finally
    {
      localf.close();
      localFileInputStream.close();
      localFileOutputStream.close();
    }
  }

  private void a(byte[] paramArrayOfByte, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    a(new a(paramArrayOfByte), paramInputStream, paramOutputStream);
  }

  private static void a(String[] paramArrayOfString)
  {
    if (paramArrayOfString.length != 3)
    {
      System.err.println("usage GDiffPatch source patch output");
      System.err.println("aborting..");
    }
    while (true)
    {
      return;
      File localFile1;
      File localFile2;
      File localFile3;
      try
      {
        localFile1 = new File(paramArrayOfString[0]);
        localFile2 = new File(paramArrayOfString[1]);
        localFile3 = new File(paramArrayOfString[2]);
        if ((localFile1.length() <= 2147483647L) && (localFile2.length() <= 2147483647L))
          break label128;
        System.err.println("source or patch is too large, max length is 2147483647");
        System.err.println("aborting..");
      }
      catch (Exception localException)
      {
        System.err.println("error while patching: " + localException);
      }
      continue;
      label128: c localc = new c();
      f localf = new f(new RandomAccessFile(localFile1, "r"));
      FileInputStream localFileInputStream = new FileInputStream(localFile2);
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile3);
      try
      {
        localc.a(localf, localFileInputStream, localFileOutputStream);
        localf.close();
        localFileInputStream.close();
        localFileOutputStream.close();
        System.out.println("finished patching file");
      }
      catch (IOException localIOException)
      {
        throw localIOException;
      }
      finally
      {
        localf.close();
        localFileInputStream.close();
        localFileOutputStream.close();
      }
    }
  }

  private byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    a(paramArrayOfByte1, new ByteArrayInputStream(paramArrayOfByte2), localByteArrayOutputStream);
    return localByteArrayOutputStream.toByteArray();
  }

  public final void a(g paramg, InputStream paramInputStream, OutputStream paramOutputStream)
  {
    DataOutputStream localDataOutputStream = new DataOutputStream(paramOutputStream);
    DataInputStream localDataInputStream = new DataInputStream(paramInputStream);
    if ((localDataInputStream.readUnsignedByte() != 209) || (localDataInputStream.readUnsignedByte() != 255) || (localDataInputStream.readUnsignedByte() != 209) || (localDataInputStream.readUnsignedByte() != 255) || (localDataInputStream.readUnsignedByte() != 4))
      throw new e("magic string not found, aborting!");
    while (true)
    {
      int i = localDataInputStream.readUnsignedByte();
      if (i == 0)
        break;
      if (i <= 246)
        a(i, localDataInputStream, localDataOutputStream);
      else
        switch (i)
        {
        default:
          throw new IllegalStateException("command " + i);
        case 247:
          a(localDataInputStream.readUnsignedShort(), localDataInputStream, localDataOutputStream);
          break;
        case 248:
          a(localDataInputStream.readInt(), localDataInputStream, localDataOutputStream);
          break;
        case 249:
          int i7 = localDataInputStream.readUnsignedShort();
          int i8 = localDataInputStream.readUnsignedByte();
          a(i7, i8, paramg, localDataOutputStream);
          break;
        case 250:
          int i5 = localDataInputStream.readUnsignedShort();
          int i6 = localDataInputStream.readUnsignedShort();
          a(i5, i6, paramg, localDataOutputStream);
          break;
        case 251:
          int i3 = localDataInputStream.readUnsignedShort();
          int i4 = localDataInputStream.readInt();
          a(i3, i4, paramg, localDataOutputStream);
          break;
        case 252:
          int i1 = localDataInputStream.readInt();
          int i2 = localDataInputStream.readUnsignedByte();
          a(i1, i2, paramg, localDataOutputStream);
          break;
        case 253:
          int m = localDataInputStream.readInt();
          int n = localDataInputStream.readUnsignedShort();
          a(m, n, paramg, localDataOutputStream);
          break;
        case 254:
          int j = localDataInputStream.readInt();
          int k = localDataInputStream.readInt();
          a(j, k, paramg, localDataOutputStream);
          break;
        case 255:
          a(localDataInputStream.readLong(), localDataInputStream.readInt(), paramg, localDataOutputStream);
        }
    }
    localDataOutputStream.flush();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.d.a.c
 * JD-Core Version:    0.6.2
 */