import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;

public final class kp extends ko
{
  public kp(String paramString)
  {
    this.a = paramString;
    try
    {
      this.c = Cipher.getInstance(this.a);
      this.d = this.c.getBlockSize();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      this.e = new IvParameterSpec(paramArrayOfByte);
      KeyGenerator localKeyGenerator = KeyGenerator.getInstance("DES");
      localKeyGenerator.init(new SecureRandom(paramString.getBytes()));
      this.b = localKeyGenerator.generateKey();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      new StringBuilder("Encode input in ").append(paramArrayOfByte.length << 3).append(" Bits").toString();
      this.c.init(1, this.b);
      arrayOfByte = this.c.doFinal(paramArrayOfByte);
      new StringBuilder("Encode output in ").append(arrayOfByte.length << 3).append(" Bits").toString();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        this.c = null;
        byte[] arrayOfByte = null;
      }
    }
    finally
    {
      this.c = null;
    }
  }

  public final byte[] b(byte[] paramArrayOfByte)
  {
    try
    {
      new StringBuilder("Decode input in ").append(paramArrayOfByte.length << 3).append(" Bits").toString();
      this.c.init(2, this.b);
      arrayOfByte = this.c.doFinal(paramArrayOfByte);
      new StringBuilder("Decode output in ").append(arrayOfByte.length << 3).append(" Bits").toString();
      return arrayOfByte;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        this.c = null;
        byte[] arrayOfByte = null;
      }
    }
    finally
    {
      this.c = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kp
 * JD-Core Version:    0.6.2
 */