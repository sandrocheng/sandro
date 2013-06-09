package com.android.vending.licensing;

import com.android.vending.licensing.util.Base64;
import com.android.vending.licensing.util.Base64DecoderException;
import java.io.UnsupportedEncodingException;
import java.security.GeneralSecurityException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.PBEKeySpec;
import javax.crypto.spec.SecretKeySpec;

public class AESObfuscator
  implements Obfuscator
{
  private static final String CIPHER_ALGORITHM = "AES/CBC/PKCS5Padding";
  private static final byte[] IV = { 16, 74, 71, -80, 32, 101, -47, 72, 117, -14, 0, -29, 70, 65, -12, 74 };
  private static final String KEYGEN_ALGORITHM = "PBEWITHSHAAND256BITAES-CBC-BC";
  private static final String UTF8 = "UTF-8";
  private static final String header = "com.android.vending.licensing.AESObfuscator-1|";
  private Cipher mDecryptor;
  private Cipher mEncryptor;

  public AESObfuscator(byte[] paramArrayOfByte, String paramString1, String paramString2)
  {
    try
    {
      SecretKeySpec localSecretKeySpec = new SecretKeySpec(SecretKeyFactory.getInstance("PBEWITHSHAAND256BITAES-CBC-BC").generateSecret(new PBEKeySpec((paramString1 + paramString2).toCharArray(), paramArrayOfByte, 1024, 256)).getEncoded(), "AES");
      this.mEncryptor = Cipher.getInstance("AES/CBC/PKCS5Padding");
      this.mEncryptor.init(1, localSecretKeySpec, new IvParameterSpec(IV));
      this.mDecryptor = Cipher.getInstance("AES/CBC/PKCS5Padding");
      this.mDecryptor.init(2, localSecretKeySpec, new IvParameterSpec(IV));
      return;
    }
    catch (GeneralSecurityException localGeneralSecurityException)
    {
      throw new RuntimeException("Invalid environment", localGeneralSecurityException);
    }
  }

  public String obfuscate(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        String str = Base64.encode(this.mEncryptor.doFinal(("com.android.vending.licensing.AESObfuscator-1|" + paramString).getBytes("UTF-8")));
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

  public String unobfuscate(String paramString)
  {
    Object localObject;
    if (paramString == null)
      localObject = null;
    while (true)
    {
      return localObject;
      try
      {
        str1 = new String(this.mDecryptor.doFinal(Base64.decode(paramString)), "UTF-8");
        if (str1.indexOf("com.android.vending.licensing.AESObfuscator-1|") != 0)
          throw new ValidationException("Header not found (invalid data or key):" + paramString);
      }
      catch (Base64DecoderException localBase64DecoderException)
      {
        String str1;
        throw new ValidationException(localBase64DecoderException.getMessage() + ":" + paramString);
        String str2 = str1.substring(46, str1.length());
        localObject = str2;
      }
      catch (IllegalBlockSizeException localIllegalBlockSizeException)
      {
        throw new ValidationException(localIllegalBlockSizeException.getMessage() + ":" + paramString);
      }
      catch (BadPaddingException localBadPaddingException)
      {
        throw new ValidationException(localBadPaddingException.getMessage() + ":" + paramString);
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException)
      {
        throw new RuntimeException("Invalid environment", localUnsupportedEncodingException);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.android.vending.licensing.AESObfuscator
 * JD-Core Version:    0.6.2
 */