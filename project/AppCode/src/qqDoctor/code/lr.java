import android.graphics.drawable.BitmapDrawable;

public class lr
  implements Cloneable
{
  private String a;
  private int b;
  public boolean c;
  public boolean d;
  public BitmapDrawable e;
  public int f;
  private long g;
  private String h;

  public final void a(long paramLong)
  {
    this.g = paramLong;
  }

  public final void a(BitmapDrawable paramBitmapDrawable)
  {
    this.e = paramBitmapDrawable;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final String b()
  {
    return this.a;
  }

  public final void b(int paramInt)
  {
    this.b = paramInt;
  }

  public final void b(String paramString)
  {
    this.h = paramString;
  }

  public final int c()
  {
    return this.b;
  }

  public Object clone()
    throws CloneNotSupportedException
  {
    return super.clone();
  }

  public final long d()
  {
    return this.g;
  }

  public final String e()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     lr
 * JD-Core Version:    0.6.2
 */