import android.os.Build.VERSION;
import java.security.SecureRandom;
import javax.crypto.Cipher;
import javax.crypto.KeyGenerator;
import javax.crypto.spec.IvParameterSpec;

public final class kn extends ko
{
  public kn(String paramString)
  {
    this.a = paramString;
    try
    {
      this.c = Cipher.getInstance(this.a);
      label20: this.d = this.c.getBlockSize();
      return;
    }
    catch (Exception localException)
    {
      break label20;
    }
  }

  public final void a(String paramString, byte[] paramArrayOfByte)
  {
    try
    {
      this.e = new IvParameterSpec(paramArrayOfByte);
      KeyGenerator localKeyGenerator = KeyGenerator.getInstance("AES");
      if (Build.VERSION.SDK_INT >= 17);
      SecureRandom localSecureRandom;
      for (Object localObject = SecureRandom.getInstance("SHA1PRNG", "Crypto"); ; localObject = localSecureRandom)
      {
        ((SecureRandom)localObject).setSeed(paramString.getBytes());
        localKeyGenerator.init((SecureRandom)localObject);
        this.b = localKeyGenerator.generateKey();
        break;
        localSecureRandom = SecureRandom.getInstance("SHA1PRNG");
      }
    }
    catch (Exception localException)
    {
    }
  }

  public final byte[] a(byte[] paramArrayOfByte)
  {
    try
    {
      this.c.init(1, this.b, this.e);
      byte[] arrayOfByte2 = this.c.doFinal(paramArrayOfByte);
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      while (true)
        byte[] arrayOfByte1 = null;
    }
  }

  public final byte[] b(byte[] paramArrayOfByte)
  {
    try
    {
      this.c.init(2, this.b, this.e);
      byte[] arrayOfByte2 = this.c.doFinal(paramArrayOfByte);
      arrayOfByte1 = arrayOfByte2;
      return arrayOfByte1;
    }
    catch (Exception localException)
    {
      while (true)
        byte[] arrayOfByte1 = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     kn
 * JD-Core Version:    0.6.2
 */