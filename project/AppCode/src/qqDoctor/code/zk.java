import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.utils.ScriptHelper;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class zk
{
  zk.b a;
  public zo b;
  private vh c;
  private Context d;
  private OptimizeManager e = (OptimizeManager)ManagerCreator.getManager(OptimizeManager.class);
  private List<String> f = new ArrayList();
  private List<kw> g = new ArrayList();
  private Handler h = null;
  private ActivityManager i;

  public zk(Context paramContext, zk.b paramb)
  {
    this.d = paramContext;
    this.b = zo.a();
    this.c = vh.a();
    this.i = ((ActivityManager)this.d.getSystemService("activity"));
    this.a = paramb;
    this.h = new zl(this, this.d.getApplicationContext().getMainLooper());
  }

  public final long a(kw paramkw, boolean paramBoolean, int paramInt)
  {
    if (paramBoolean)
      this.b.a(paramkw);
    long l = paramkw.H();
    if (l <= 0L)
      l = this.b.a(paramkw.V());
    if ((paramBoolean) && (paramInt == 0));
    while (true)
    {
      try
      {
        this.e.closeProcess(paramkw.getPackageName());
        if (!zo.d(paramkw))
          break label110;
        this.c.a(l / 1024L);
        return l;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        localNameNotFoundException.printStackTrace();
        continue;
      }
      this.i.restartPackage(paramkw.getPackageName());
      continue;
      label110: l = 0L;
    }
  }

  public final zk.a a(boolean paramBoolean)
  {
    nd localnd;
    zk.a locala1;
    try
    {
      localnd = nd.a();
      localnd.h();
      locala1 = new zk.a();
      while (this.a != null)
      {
        boolean bool = this.a.isReadyToCleanNow();
        if (bool)
          break;
        try
        {
          Thread.sleep(50L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
    }
    finally
    {
    }
    List localList = this.b.j();
    ArrayList localArrayList = new ArrayList();
    this.f.clear();
    this.g.clear();
    long l1 = 0L;
    Iterator localIterator = localList.iterator();
    long l2;
    while (localIterator.hasNext())
    {
      kw localkw = (kw)localIterator.next();
      if (this.b.c(localkw))
      {
        localArrayList.add(localkw);
        this.f.add(localkw.getPackageName());
        l1 += localkw.H();
      }
      else
      {
        this.g.add(localkw);
        if (!zo.d(localkw))
          break label395;
        l2 = l1 + localkw.H();
        break label399;
      }
    }
    if (localArrayList.size() <= 0)
    {
      localnd.a(26441);
      if (this.a != null)
      {
        Message localMessage2 = this.h.obtainMessage(3);
        this.h.sendMessage(localMessage2);
        Message localMessage3 = this.h.obtainMessage(2);
        this.h.sendMessage(localMessage3);
      }
      locala1.d = true;
    }
    for (zk.a locala2 = locala1; ; locala2 = locala1)
    {
      return locala2;
      locala1.b = localArrayList.size();
      locala1.c = l1;
      locala1.a = localArrayList;
      this.b.a(localArrayList);
      if (this.a != null)
      {
        Message localMessage1 = this.h.obtainMessage(1);
        localMessage1.obj = locala1;
        this.h.sendMessage(localMessage1);
      }
      if (paramBoolean)
      {
        this.h.sendEmptyMessage(4);
      }
      else
      {
        a();
        continue;
        label395: l2 = l1;
        label399: l1 = l2;
        break;
      }
    }
  }

  final void a()
  {
    try
    {
      int j = ScriptHelper.canRunAtRoot();
      OptimizeManager localOptimizeManager = this.e;
      List localList = this.f;
      boolean bool = false;
      if (j == 0)
        bool = true;
      localOptimizeManager.closeProcess(localList, bool, false);
      Iterator localIterator = this.g.iterator();
      while (localIterator.hasNext())
      {
        kw localkw = (kw)localIterator.next();
        this.i.restartPackage(localkw.getPackageName());
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
      if (this.a != null)
      {
        Message localMessage = this.h.obtainMessage(2);
        this.h.sendMessage(localMessage);
      }
      this.c.b();
      this.c.h();
    }
  }

  public final class a
  {
    public List<kw> a = null;
    public int b = 0;
    public long c = 0L;
    public boolean d = false;
  }

  public static abstract interface b
  {
    public abstract void BestNow();

    public abstract void CleanEstimateComplete(int paramInt, long paramLong);

    public abstract void CleanFinish();

    public abstract boolean isReadyToCleanNow();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zk
 * JD-Core Version:    0.6.2
 */