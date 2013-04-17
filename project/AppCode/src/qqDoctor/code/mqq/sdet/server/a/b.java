package mqq.sdet.server.a;

import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;
import javax.crypto.spec.IvParameterSpec;

public class b
{
  private String a = null;

  public void a(String paramString)
  {
    if (paramString != null)
      this.a = paramString;
  }

  public byte[] a(byte[] paramArrayOfByte)
    throws Exception
  {
    if ((this.a == null) || (paramArrayOfByte == null));
    Cipher localCipher;
    for (byte[] arrayOfByte = null; ; arrayOfByte = localCipher.doFinal(paramArrayOfByte))
    {
      return arrayOfByte;
      localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
      DESKeySpec localDESKeySpec = new DESKeySpec(this.a.getBytes("UTF-8"));
      localCipher.init(2, SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec), new IvParameterSpec(this.a.getBytes("UTF-8")));
    }
  }

  public byte[] b(byte[] paramArrayOfByte)
    throws Exception, NoSuchAlgorithmException
  {
    if ((this.a == null) || (paramArrayOfByte == null));
    Cipher localCipher;
    for (byte[] arrayOfByte = null; ; arrayOfByte = localCipher.doFinal(paramArrayOfByte))
    {
      return arrayOfByte;
      localCipher = Cipher.getInstance("DES/CBC/PKCS5Padding");
      DESKeySpec localDESKeySpec = new DESKeySpec(this.a.getBytes("UTF-8"));
      localCipher.init(1, SecretKeyFactory.getInstance("DES").generateSecret(localDESKeySpec), new IvParameterSpec(this.a.getBytes("UTF-8")));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     mqq.sdet.server.a.b
 * JD-Core Version:    0.6.2
 */