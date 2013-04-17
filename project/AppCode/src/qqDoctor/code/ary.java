import java.util.HashMap;

public class ary
{
  private static ary b;
  private final HashMap<Long, byte[]> a = new HashMap();

  public static ary a()
  {
    if (b == null);
    try
    {
      b = new ary();
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(long paramLong, byte[] paramArrayOfByte)
  {
    synchronized (this.a)
    {
      this.a.put(Long.valueOf(paramLong), paramArrayOfByte);
      return;
    }
  }

  public final byte[] a(long paramLong)
  {
    synchronized (this.a)
    {
      byte[] arrayOfByte = (byte[])this.a.remove(Long.valueOf(paramLong));
      return arrayOfByte;
    }
  }

  public final void b()
  {
    synchronized (this.a)
    {
      this.a.clear();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ary
 * JD-Core Version:    0.6.2
 */