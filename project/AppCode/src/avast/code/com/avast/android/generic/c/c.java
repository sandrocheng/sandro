package com.avast.android.generic.c;

import java.io.ByteArrayOutputStream;
import java.security.SecureRandom;
import java.util.zip.ZipInputStream;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.SecretKey;
import javax.crypto.spec.SecretKeySpec;

public class c
{
  public static byte[] a(String paramString1, String paramString2)
  {
    SecretKeySpec localSecretKeySpec = new SecretKeySpec(a(paramString2.getBytes()), "AES");
    Cipher localCipher = Cipher.getInstance("AES");
    localCipher.init(2, localSecretKeySpec);
    return localCipher.doFinal(a.a(paramString1));
  }

  public static byte[] a(ZipInputStream paramZipInputStream, String paramString)
  {
    byte[] arrayOfByte = new byte[2048];
    ByteArrayOutputStream localByteArrayOutputStream = new ByteArrayOutputStream();
    while (true)
    {
      int i = paramZipInputStream.read(arrayOfByte, 0, 2048);
      if (i == -1)
        break;
      localByteArrayOutputStream.write(arrayOfByte, 0, i);
    }
    return a(localByteArrayOutputStream.toString(), paramString);
  }

  private static byte[] a(byte[] paramArrayOfByte)
  {
    KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
    SecureRandom localSecureRandom = SecureRandom.getInstance("SHA1PRNG", "Crypto");
    localSecureRandom.setSeed(paramArrayOfByte);
    localKeyGenerator.init(128, localSecureRandom);
    return localKeyGenerator.generateKey().getEncoded();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.c.c
 * JD-Core Version:    0.6.2
 */