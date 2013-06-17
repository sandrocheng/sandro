package com.a.a.a;

import com.a.a.a.a.a;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class b
  implements d
{
  private static final byte[] a = { 16, 74, 71, -80, 32, 101, -47, 72, 117, -14, 0, -29, 70, 65, -12, 74 };
  private Cipher b;
  private Cipher c;

  public b(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    try
    {
      SecretKeyFactory localSecretKeyFactory3;
      if (a())
        localSecretKeyFactory3 = SecretKeyFactory.getInstance("PBEWithMD5And128BitAES-CBC-OpenSSL");
      SecretKeyFactory localSecretKeyFactory2;
      for (localObject = localSecretKeyFactory3; ; localObject = localSecretKeyFactory2)
      {
        SecretKeySpec localSecretKeySpec = new SecretKeySpec(((SecretKeyFactory)localObject).generateSecret(new PBEKeySpec((paramString1 + paramString2).toCharArray(), paramArrayOfByte, 1024, 256)).getEncoded(), "AES");
        this.b = Cipher.getInstance("AES/CBC/PKCS5Padding");
        this.b.init(1, localSecretKeySpec, new IvParameterSpec(a));
        this.c = Cipher.getInstance("AES/CBC/PKCS5Padding");
        this.c.init(2, localSecretKeySpec, new IvParameterSpec(a));
        return;
        localSecretKeyFactory2 = SecretKeyFactory.getInstance("PBEWITHSHAAND256BITAES-CBC-BC");
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        SecretKeyFactory localSecretKeyFactory1 = SecretKeyFactory.getInstance("PBEWITHSHAAND256BITAES-CBC-BC");
        Object localObject = localSecretKeyFactory1;
      }
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new RuntimeException("Invalid environment", localGeneralSecurityException);
    }
  }

  private boolean a()
  {
    try
    {
      MessageDigest.getInstance("MD5");
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
        bool = false;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
        boolean bool = false;
    }
  }

  public String a(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = a.a(this.b.doFinal(("com.android.vending.licensing.AESObfuscator-1|" + paramString).getBytes("UTF-8")));
        localObject = str;
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new RuntimeException("Invalid environment", localUnsupportedEncodingException);
      }
      catch (GeneralSecurityException localGeneralSecurityException)
      {
        throw new RuntimeException("Invalid environment", localGeneralSecurityException);
      }
    }
  }

  public String b(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        str1 = new String(this.c.doFinal(a.a(paramString)), "UTF-8");
        if (str1.indexOf("com.android.vending.licensing.AESObfuscator-1|") != 0)
          throw new e("Header not found (invalid data or key):" + paramString);
      }
      catch (com.a.a.a.a.b localb)
      {
        String str1;
        throw new e(localb.getMessage() + ":" + paramString);
        String str2 = str1.substring("com.android.vending.licensing.AESObfuscator-1|".length(), str1.length());
        localObject = str2;
      }
      catch (IllegalBlockSizeException localIllegalBlockSizeException)
      {
        throw new e(localIllegalBlockSizeException.getMessage() + ":" + paramString);
      }
      catch (BadPaddingException localBadPaddingException)
      {
        throw new e(localBadPaddingException.getMessage() + ":" + paramString);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new RuntimeException("Invalid environment", localUnsupportedEncodingException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.a.a.a.b
 * JD-Core Version:    0.6.2
 */