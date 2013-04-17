import android.content.Context;
import android.os.Handler;

public abstract class ar
{
  public static int a = 1;
  public Context b;
  protected de c = null;
  public fx d = null;
  int e = 0;
  int f = 0;
  public fz g = new fz();
  protected fy h = new fy(this);
  public Handler i = new as(this);
  private boolean j;
  private boolean k;

  public ar(Context paramContext, boolean paramBoolean1, boolean paramBoolean2)
  {
    this.b = paramContext;
    this.j = paramBoolean1;
    this.k = paramBoolean2;
  }

  public static void d()
  {
  }

  public void a()
  {
  }

  protected void a(Context paramContext, fx paramfx, aw paramaw)
  {
    new Thread(new au(paramaw)).start();
  }

  public abstract void a(fx paramfx);

  public final int b()
  {
    return this.f;
  }

  public abstract void b(fx paramfx);

  public final void c()
  {
    new Thread(new av(this)).start();
  }

  protected abstract void e();

  protected abstract void f();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ar
 * JD-Core Version:    0.6.2
 */