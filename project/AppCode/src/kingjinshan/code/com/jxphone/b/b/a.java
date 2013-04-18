package com.jxphone.b.b;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

public final class a
{
  private static IOException a(FileInputStream paramFileInputStream, CipherOutputStream paramCipherOutputStream)
  {
    IOException localIOException1 = null;
    if (paramFileInputStream != null);
    try
    {
      paramFileInputStream.close();
      if (paramCipherOutputStream == null);
    }
    catch (IOException localIOException2)
    {
      try
      {
        paramCipherOutputStream.close();
        label18: return localIOException1;
        localIOException2 = localIOException2;
      }
      catch (IOException localIOException3)
      {
        break label18;
      }
    }
  }

  private static InputStream a(String paramString, File paramFile)
  {
    Cipher localCipher = a(paramString, 2);
    return new CipherInputStream(new FileInputStream(paramFile), localCipher);
  }

  private static String a(String paramString1, String paramString2)
  {
    byte[] arrayOfByte = a(paramString1, 1).doFinal(paramString2.getBytes("utf8"));
    int i = arrayOfByte.length;
    StringBuilder localStringBuilder = new StringBuilder(i);
    for (int j = 0; j < i; j++)
    {
      String str = Integer.toHexString(0xFF & arrayOfByte[j]);
      if (str.length() == 1)
        localStringBuilder.append('0');
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }

  private static String a(byte[] paramArrayOfByte)
  {
    int i = paramArrayOfByte.length;
    StringBuilder localStringBuilder = new StringBuilder(i);
    for (int j = 0; j < i; j++)
    {
      String str = Integer.toHexString(0xFF & paramArrayOfByte[j]);
      if (str.length() == 1)
        localStringBuilder.append('0');
      localStringBuilder.append(str);
    }
    return localStringBuilder.toString();
  }

  private static Cipher a(String paramString, int paramInt)
  {
    try
    {
      byte[] arrayOfByte = MessageDigest.getInstance("SHA-256").digest(paramString.getBytes());
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(arrayOfByte, 0, 16, "AES");
      Cipher localCipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
      localCipher.init(paramInt, localSecretKeySpec, new IvParameterSpec(arrayOfByte, 16, 16));
      return localCipher;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      throw new RuntimeException(localNoSuchAlgorithmException);
    }
    catch (NoSuchPaddingException localNoSuchPaddingException)
    {
      throw new RuntimeException(localNoSuchPaddingException);
    }
    catch (InvalidKeyException localInvalidKeyException)
    {
      throw new RuntimeException(localInvalidKeyException);
    }
    catch (InvalidAlgorithmParameterException localInvalidAlgorithmParameterException)
    {
      throw new RuntimeException(localInvalidAlgorithmParameterException);
    }
  }

  private static void a(String paramString, File paramFile1, File paramFile2)
  {
    a(paramString, paramFile1, paramFile2, 1);
  }

  private static void a(String paramString, File paramFile1, File paramFile2, int paramInt)
  {
    try
    {
      localCipher = a(paramString, paramInt);
      localFileInputStream2 = new FileInputStream(paramFile1);
    }
    finally
    {
      try
      {
        Cipher localCipher;
        localCipherOutputStream2 = new CipherOutputStream(new FileOutputStream(paramFile2), localCipher);
      }
      finally
      {
        while (true)
        {
          FileInputStream localFileInputStream2;
          FileInputStream localFileInputStream1;
          CipherOutputStream localCipherOutputStream1;
          try
          {
            byte[] arrayOfByte = new byte[1024];
            int i = localFileInputStream2.read(arrayOfByte);
            if (i >= 0)
              localCipherOutputStream2.write(arrayOfByte, 0, i);
          }
          finally
          {
            CipherOutputStream localCipherOutputStream2;
            localFileInputStream1 = localFileInputStream2;
            localCipherOutputStream1 = localCipherOutputStream2;
            IOException localIOException1 = a(localFileInputStream1, localCipherOutputStream1);
            if (localIOException1 != null)
            {
              throw localIOException1;
              IOException localIOException2 = a(localFileInputStream2, localCipherOutputStream2);
              if (localIOException2 == null)
                continue;
              throw localIOException2;
            }
          }
        }
      }
    }
  }

  private static byte[] a(String paramString)
  {
    int i = paramString.length() / 2;
    byte[] arrayOfByte = new byte[i];
    for (int j = 0; j < i; j++)
    {
      int k = Integer.parseInt(paramString.substring(j * 2, 1 + j * 2), 16);
      arrayOfByte[j] = ((byte)(Integer.parseInt(paramString.substring(1 + j * 2, 2 + j * 2), 16) + k * 16));
    }
    return arrayOfByte;
  }

  private static String b(String paramString1, String paramString2)
  {
    Cipher localCipher = a(paramString1, 2);
    int i = paramString2.length() / 2;
    byte[] arrayOfByte = new byte[i];
    for (int j = 0; j < i; j++)
    {
      int k = Integer.parseInt(paramString2.substring(j * 2, 1 + j * 2), 16);
      arrayOfByte[j] = ((byte)(Integer.parseInt(paramString2.substring(1 + j * 2, 2 + j * 2), 16) + k * 16));
    }
    return new String(localCipher.doFinal(arrayOfByte), "utf8");
  }

  private static void b(String paramString, File paramFile1, File paramFile2)
  {
    a(paramString, paramFile1, paramFile2, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.b.b.a
 * JD-Core Version:    0.6.2
 */