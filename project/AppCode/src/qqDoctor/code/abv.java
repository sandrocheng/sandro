import android.app.ActivityManager;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.ComponentName;
import android.content.Context;
import android.os.Handler;
import com.tencent.qqpimsecure.service.QQPimApplication;
import java.util.List;

public class abv
{
  private static abv a;
  private Context b;
  private Handler c = null;
  private dw<abv.a> d = new dw();
  private dw<abv.b> e = new dw();
  private boolean f = false;
  private Runnable g = new abx(this);
  private final ActivityManager h;
  private List<ActivityManager.RunningTaskInfo> i;
  private Thread j;

  private abv(Context paramContext)
  {
    this.b = paramContext;
    this.c = new abw(this, this.b.getApplicationContext().getMainLooper());
    this.h = ((ActivityManager)paramContext.getSystemService("activity"));
  }

  public static abv a()
  {
    try
    {
      if (a == null)
        a = new abv(QQPimApplication.a());
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static boolean a(ActivityManager.RunningTaskInfo paramRunningTaskInfo1, ActivityManager.RunningTaskInfo paramRunningTaskInfo2)
  {
    if ((paramRunningTaskInfo1 != null) && (paramRunningTaskInfo1.topActivity != null) && (paramRunningTaskInfo1.topActivity.getPackageName() != null) && (paramRunningTaskInfo2 != null) && (paramRunningTaskInfo2.topActivity != null) && (paramRunningTaskInfo2.topActivity.getPackageName() != null) && (paramRunningTaskInfo1.topActivity.getPackageName().compareTo(paramRunningTaskInfo2.topActivity.getPackageName()) == 0));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public static void b()
  {
    if (a != null)
      a.f();
    a = null;
  }

  public static void c()
  {
    a().e();
  }

  public static void d()
  {
    a().f();
  }

  private void e()
  {
    int k = 1;
    while (true)
    {
      try
      {
        int m;
        if ((this.e != null) && (this.e.a()))
        {
          m = k;
          if (m != 0)
            continue;
          if (this.d != null)
          {
            boolean bool = this.d.a();
            if (bool)
            {
              i1 = k;
              if (i1 != 0)
                continue;
              n = k;
              if (n == 0)
                continue;
            }
          }
        }
        else
        {
          m = 0;
          continue;
        }
        int i1 = 0;
        continue;
        int n = 0;
        continue;
        this.f = false;
        if ((this.j != null) && (this.j.isAlive()))
        {
          if (k != 0)
            continue;
          this.j = new Thread(this.g);
          this.j.setPriority(5);
          this.j.start();
          continue;
        }
      }
      finally
      {
      }
      k = 0;
    }
  }

  private void f()
  {
    try
    {
      this.f = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private List<ActivityManager.RunningTaskInfo> g()
  {
    try
    {
      List localList2 = this.h.getRunningTasks(255);
      localList1 = localList2;
      return localList1;
    }
    catch (Exception localException)
    {
      while (true)
        List localList1 = null;
    }
  }

  private ActivityManager.RunningTaskInfo h()
  {
    try
    {
      List localList2 = this.h.getRunningTasks(1);
      localList1 = localList2;
      ActivityManager.RunningTaskInfo localRunningTaskInfo = null;
      if (localList1 != null)
      {
        int k = localList1.size();
        localRunningTaskInfo = null;
        if (k > 0)
          localRunningTaskInfo = (ActivityManager.RunningTaskInfo)localList1.get(0);
      }
      return localRunningTaskInfo;
    }
    catch (Exception localException)
    {
      while (true)
        List localList1 = null;
    }
  }

  public final void a(abv.a parama)
  {
    if ((parama == null) || (this.d == null))
      return;
    while (true)
    {
      synchronized (this.d)
      {
        this.d.a(parama);
        if (this.d.a())
        {
          if ((this.j == null) || (!this.j.isAlive()))
            break label77;
          k = 1;
          if (k == 0)
            e();
        }
      }
      label77: int k = 0;
    }
  }

  public final void a(abv.b paramb)
  {
    if ((paramb == null) || (this.e == null))
      return;
    while (true)
    {
      synchronized (this.e)
      {
        this.e.a(paramb);
        if (this.e.a())
        {
          if ((this.j == null) || (!this.j.isAlive()))
            break label77;
          k = 1;
          if (k == 0)
            e();
        }
      }
      label77: int k = 0;
    }
  }

  public final void b(abv.a parama)
  {
    int k = 1;
    if (parama == null);
    while ((this.d == null) || (this.d.size() <= 0))
      return;
    while (true)
    {
      synchronized (this.d)
      {
        this.d.b(parama);
        if ((this.e != null) && (this.e.a()))
        {
          m = k;
          if (m != 0)
            break label120;
          if ((this.d == null) || (!this.d.a()))
            break label114;
          n = k;
          break label125;
          if (k != 0)
            f();
        }
      }
      int m = 0;
      continue;
      label114: int n = 0;
      label120: label125: 
      while (n != 0)
      {
        k = 0;
        break;
      }
    }
  }

  public final void b(abv.b paramb)
  {
    int k = 1;
    if (paramb == null);
    while ((this.e == null) || (this.e.size() <= 0))
      return;
    while (true)
    {
      synchronized (this.e)
      {
        this.e.b(paramb);
        if ((this.e != null) && (this.e.a()))
        {
          m = k;
          if (m != 0)
            break label120;
          if ((this.d == null) || (!this.d.a()))
            break label114;
          n = k;
          break label125;
          if (k != 0)
            f();
        }
      }
      int m = 0;
      continue;
      label114: int n = 0;
      label120: label125: 
      while (n != 0)
      {
        k = 0;
        break;
      }
    }
  }

  public static final class a
  {
    a(ok paramok)
    {
    }
  }

  public static abstract interface b
  {
    public abstract void currentApp(ActivityManager.RunningTaskInfo paramRunningTaskInfo);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abv
 * JD-Core Version:    0.6.2
 */