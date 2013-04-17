package com.tencent.faceverify.util;

import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

public class FileUtils
{
  public static void closeQuietly(Closeable paramCloseable)
  {
    if (paramCloseable != null);
    try
    {
      paramCloseable.close();
      label10: return;
    }
    catch (IOException localIOException)
    {
      break label10;
    }
  }

  public static void closeQuietly(InputStream paramInputStream)
  {
    if (paramInputStream != null);
    try
    {
      paramInputStream.close();
      label10: return;
    }
    catch (IOException localIOException)
    {
      break label10;
    }
  }

  public static FileInputStream openInputStream(File paramFile)
    throws IOException
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory())
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      if (!paramFile.canRead())
        throw new IOException("File '" + paramFile + "' cannot be read");
    }
    else
    {
      throw new FileNotFoundException("File '" + paramFile + "' does not exist");
    }
    return new FileInputStream(paramFile);
  }

  public static FileOutputStream openOutputStream(File paramFile, boolean paramBoolean)
    throws IOException
  {
    if (paramFile.exists())
    {
      if (paramFile.isDirectory())
        throw new IOException("File '" + paramFile + "' exists but is a directory");
      if (!paramFile.canWrite())
        throw new IOException("File '" + paramFile + "' cannot be written to");
    }
    else
    {
      File localFile = paramFile.getParentFile();
      if ((localFile != null) && (!localFile.mkdirs()) && (!localFile.isDirectory()))
        throw new IOException("Directory '" + localFile + "' could not be created");
    }
    return new FileOutputStream(paramFile, paramBoolean);
  }

  // ERROR //
  public static byte[] readFileToByteArray(File paramFile)
    throws IOException
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: aload_0
    //   3: invokestatic 92	com/tencent/faceverify/util/FileUtils:openInputStream	(Ljava/io/File;)Ljava/io/FileInputStream;
    //   6: astore_1
    //   7: aload_1
    //   8: aload_0
    //   9: invokevirtual 96	java/io/File:length	()J
    //   12: invokestatic 100	com/tencent/faceverify/util/FileUtils:toByteArray	(Ljava/io/InputStream;J)[B
    //   15: astore 4
    //   17: aload_1
    //   18: ifnull +9 -> 27
    //   21: aload_1
    //   22: invokeinterface 17 1 0
    //   27: aload 4
    //   29: areturn
    //   30: astore_2
    //   31: aload_1
    //   32: ifnull +9 -> 41
    //   35: aload_1
    //   36: invokeinterface 17 1 0
    //   41: aload_2
    //   42: athrow
    //   43: astore 5
    //   45: goto -18 -> 27
    //   48: astore_3
    //   49: goto -8 -> 41
    //
    // Exception table:
    //   from	to	target	type
    //   2	17	30	finally
    //   21	27	43	java/io/IOException
    //   35	41	48	java/io/IOException
  }

  public static byte[] toByteArray(InputStream paramInputStream, int paramInt)
    throws IOException
  {
    int i = 0;
    if (paramInt < 0)
      throw new IllegalArgumentException("Size must be equal or greater than zero: " + paramInt);
    if (paramInt == 0)
    {
      arrayOfByte = new byte[0];
      return arrayOfByte;
    }
    byte[] arrayOfByte = new byte[paramInt];
    while (true)
    {
      int j;
      if (i < paramInt)
      {
        j = paramInputStream.read(arrayOfByte, i, paramInt - i);
        if (j != -1);
      }
      else
      {
        if (i == paramInt)
          break;
        throw new IOException("Unexpected readed size. current: " + i + ", excepted: " + paramInt);
      }
      i += j;
    }
  }

  public static byte[] toByteArray(InputStream paramInputStream, long paramLong)
    throws IOException
  {
    if (paramLong > 2147483647L)
      throw new IllegalArgumentException("Size cannot be greater than Integer max value: " + paramLong);
    return toByteArray(paramInputStream, (int)paramLong);
  }

  public static void writeByteArrayToFile(File paramFile, byte[] paramArrayOfByte)
    throws IOException
  {
    FileOutputStream localFileOutputStream = null;
    try
    {
      localFileOutputStream = openOutputStream(paramFile, false);
      localFileOutputStream.write(paramArrayOfByte);
      if (localFileOutputStream == null);
    }
    finally
    {
      try
      {
        localFileOutputStream.close();
        label23: return;
        localObject = finally;
        if (localFileOutputStream != null);
        try
        {
          localFileOutputStream.close();
          label35: throw localObject;
        }
        catch (IOException localIOException1)
        {
          break label35;
        }
      }
      catch (IOException localIOException2)
      {
        break label23;
      }
    }
  }

  public static void writeByteArrayToFile(File paramFile, byte[] paramArrayOfByte, boolean paramBoolean)
    throws IOException
  {
    FileOutputStream localFileOutputStream = null;
    try
    {
      localFileOutputStream = openOutputStream(paramFile, paramBoolean);
      localFileOutputStream.write(paramArrayOfByte);
      if (localFileOutputStream == null);
    }
    finally
    {
      try
      {
        localFileOutputStream.close();
        label23: return;
        localObject = finally;
        if (localFileOutputStream != null);
        try
        {
          localFileOutputStream.close();
          label36: throw localObject;
        }
        catch (IOException localIOException1)
        {
          break label36;
        }
      }
      catch (IOException localIOException2)
      {
        break label23;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.faceverify.util.FileUtils
 * JD-Core Version:    0.6.2
 */