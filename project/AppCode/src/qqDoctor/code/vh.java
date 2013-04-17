import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.OptimizeManager;

public class vh
{
  private static vh b;
  Handler a = new vj(this);
  private vh.b c;
  private IMemoryHelper d = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getMemoryHelper();
  private long e = 0L;
  private long f = 0L;
  private boolean g = false;
  private long h = 0L;
  private Handler i = null;
  private dw<vh.a> j = new dw();
  private int k;

  public static vh a()
  {
    try
    {
      if (b == null)
        b = new vh();
      return b;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static boolean a(int paramInt)
  {
    if (paramInt > ho.a().cz());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static long e()
  {
    vh localvh = a();
    if (localvh.h <= 0L)
      localvh.h = localvh.d.getTotalMemery();
    return localvh.h;
  }

  public static long f()
  {
    vh localvh = a();
    if (localvh.e <= 0L)
      localvh.j();
    return localvh.e;
  }

  public static int g()
  {
    vh localvh1 = a();
    if (localvh1.e <= 0L)
      localvh1.j();
    long l1 = localvh1.e;
    vh localvh2 = a();
    if (localvh2.h <= 0L)
      localvh2.h = localvh2.d.getTotalMemery();
    long l2 = localvh2.h;
    return 100 - (int)(l1 * 100L / l2);
  }

  private void j()
  {
    if (this.g);
    while (true)
    {
      return;
      long l1 = this.d.getFreeMemery();
      long l2 = this.e;
      this.e = l1;
      if (l2 != l1)
      {
        Message localMessage = this.i.obtainMessage(1);
        this.i.sendMessage(localMessage);
      }
    }
  }

  public final void a(long paramLong)
  {
    this.e = (paramLong + this.e);
    Message localMessage = this.i.obtainMessage(1);
    this.i.sendMessage(localMessage);
    this.g = true;
    this.k = 0;
  }

  public final void a(vh.a parama)
  {
    this.j.a(parama);
  }

  public final void a(vh.b paramb)
  {
    this.c = paramb;
  }

  public final void b()
  {
    this.a.sendEmptyMessage(1);
  }

  public final void b(vh.a parama)
  {
    this.j.b(parama);
  }

  public final void c()
  {
    this.g = false;
  }

  public final void d()
  {
    j();
  }

  public final void h()
  {
    ho localho = ho.a();
    if (!localho.cA());
    while (true)
    {
      return;
      long l1 = this.d.getFreeMemery();
      vh localvh = a();
      if (localvh.h <= 0L)
        localvh.h = localvh.d.getTotalMemery();
      long l2 = localvh.h;
      long l3 = l2 - l1;
      if ((l1 > 0L) && (l2 > 0L) && (l3 > 0L))
      {
        int m = (int)(100L * (l3 + (l1 << 1) / 3L) / l2);
        if (m < ho.a)
          m = ho.a;
        if ((m > 0) && (m < 100))
          localho.C(m);
      }
    }
  }

  public final void i()
  {
    this.c = null;
  }

  public static abstract interface a
  {
    public abstract void MemChange();
  }

  public static abstract interface b
  {
    public abstract void onMemoryGot();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vh
 * JD-Core Version:    0.6.2
 */