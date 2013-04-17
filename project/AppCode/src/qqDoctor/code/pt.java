import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.IPackageDataObserver;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageStats;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.optimize.IMemoryHelper;
import com.tencent.tmsecure.module.optimize.OptimizeManager;
import com.tencent.tmsecure.module.software.SoftwareManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class pt
{
  private static pt a;
  private final PackageManager b;
  private final IMemoryHelper c;
  private final String[] d;
  private boolean e;
  private boolean f;

  private pt()
  {
    ManagerCreator.getManager(SoftwareManager.class);
    this.b = QQPimApplication.a().getPackageManager();
    this.c = ((OptimizeManager)ManagerCreator.getManager(OptimizeManager.class)).getMemoryHelper();
    ho.a();
    this.d = ho.au();
  }

  public static pt a()
  {
    if (a == null);
    try
    {
      if (a == null)
        a = new pt();
      return a;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(IPackageDataObserver paramIPackageDataObserver)
  {
    if (this.f);
    while (true)
    {
      return;
      this.e = false;
      this.f = true;
      new pv(this, paramIPackageDataObserver).start();
    }
  }

  public final void a(pt.a parama)
  {
    if (parama == null);
    while (true)
    {
      return;
      this.e = true;
      new pu(this, parama).start();
    }
  }

  public final void b()
  {
    this.e = false;
  }

  public final void b(pt.a parama)
  {
    if (parama == null);
    label93: String str;
    while (true)
    {
      return;
      this.e = true;
      List localList = this.b.getInstalledPackages(0);
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator1 = localList.iterator();
      while (localIterator1.hasNext())
        localArrayList.add(((PackageInfo)localIterator1.next()).applicationInfo.packageName);
      localArrayList.size();
      parama.a();
      try
      {
        Iterator localIterator2 = localArrayList.iterator();
        if (!localIterator2.hasNext())
          break label233;
        str = (String)localIterator2.next();
        if (!this.e);
      }
      finally
      {
      }
    }
    String[] arrayOfString = this.d;
    int i = arrayOfString.length;
    for (int j = 0; ; j++)
      if (j < i)
      {
        if (!arrayOfString[j].equals(str));
      }
      else
      {
        for (int k = 1; ; k = 0)
        {
          if (k != 0)
            break label254;
          PackageStats localPackageStats = this.c.getAppPackageStats(str);
          kw localkw = new kw();
          if (localPackageStats != null)
            localkw.f(localPackageStats.cacheSize);
          localkw.setPackageName(str);
          parama.a(localkw);
          break label93;
          label233: this.e = false;
          parama.b();
          break;
        }
        label254: break label93;
      }
  }

  public static abstract interface a
  {
    public abstract void a();

    public abstract void a(kw paramkw);

    public abstract void b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pt
 * JD-Core Version:    0.6.2
 */