package com.keniu.security.traffic;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.Message;
import com.hoi.netstat.f;
import com.hoi.netstat.g;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.Vector;

final class dr
  implements Runnable
{
  private Context b;

  public dr(TrafficXuanFuChuangListActivity paramTrafficXuanFuChuangListActivity, Context paramContext)
  {
    this.b = paramContext;
  }

  public final void run()
  {
    if (TrafficXuanFuChuangListActivity.b(this.a))
      System.out.println("paused ------reurn");
    while (true)
    {
      return;
      Vector localVector1 = z.g(this.a);
      if ((localVector1 == null) || (localVector1.size() == 0))
      {
        TrafficXuanFuChuangListActivity.g(this.a).obtainMessage(1, TrafficXuanFuChuangListActivity.e(this.a)).sendToTarget();
      }
      else
      {
        Vector localVector2 = new Vector();
        Iterator localIterator1 = localVector1.iterator();
        while (localIterator1.hasNext())
        {
          PackageInfo localPackageInfo = (PackageInfo)localIterator1.next();
          do localdo2 = new do();
          ApplicationInfo localApplicationInfo = localPackageInfo.applicationInfo;
          localdo2.f = localApplicationInfo.uid;
          localdo2.a = TrafficXuanFuChuangListActivity.h(this.a).getApplicationIcon(localApplicationInfo);
          localdo2.b = TrafficXuanFuChuangListActivity.h(this.a).getApplicationLabel(localApplicationInfo).toString();
          localdo2.e = localApplicationInfo.packageName;
          g localg = f.a();
          localdo2.c = (localg.a(localdo2.f) + localg.b(localdo2.f));
          localVector2.add(localdo2);
        }
        try
        {
          Thread.sleep(1000L);
          Iterator localIterator2 = localVector2.iterator();
          while (localIterator2.hasNext())
          {
            do localdo1 = (do)localIterator2.next();
            localdo1.d = (TrafficXuanFuChuangListActivity.a().a(localdo1.f) + TrafficXuanFuChuangListActivity.a().b(localdo1.f));
            if (localdo1.e.equals("com.ijinshan.mguard"))
            {
              TrafficXuanFuChuangListActivity.a(this.a, localdo1);
              localIterator2.remove();
            }
          }
        }
        catch (InterruptedException localInterruptedException)
        {
          while (true)
            localInterruptedException.printStackTrace();
          if (TrafficXuanFuChuangListActivity.i(this.a) != null)
          {
            localVector2.add(TrafficXuanFuChuangListActivity.i(this.a));
            TrafficXuanFuChuangListActivity.a(this.a, null);
          }
          if (localVector2.size() == 0)
          {
            TrafficXuanFuChuangListActivity.g(this.a).obtainMessage(1, localVector2).sendToTarget();
          }
          else
          {
            TrafficXuanFuChuangListActivity.g(this.a).obtainMessage(0, localVector2).sendToTarget();
            dd.a(this.b, this, 1000L);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dr
 * JD-Core Version:    0.6.2
 */