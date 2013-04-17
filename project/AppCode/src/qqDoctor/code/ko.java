import java.security.Key;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;

public abstract class ko
{
  protected String a = null;
  protected Key b;
  protected Cipher c;
  protected int d;
  protected AlgorithmParameterSpec e;

  public final int a()
  {
    return this.d;
  }

  public abstract void a(String paramString, byte[] paramArrayOfByte);

  public final void a(Key paramKey)
  {
    this.b = paramKey;
  }

  public abstract byte[] a(byte[] paramArrayOfByte);

  public final Key b()
  {
    return this.b;
  }

  public abstract byte[] b(byte[] paramArrayOfByte);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ko
 * JD-Core Version:    0.6.2
 */