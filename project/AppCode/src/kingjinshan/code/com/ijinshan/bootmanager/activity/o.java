package com.ijinshan.bootmanager.activity;

import android.content.pm.IPackageStatsObserver;
import android.content.pm.PackageManager;
import android.os.Handler;
import com.ijinshan.bootmanager.b.a;
import java.lang.reflect.Method;
import java.util.List;

final class o extends Thread
{
  private Handler b;

  public o(AutoBootMangerActivity paramAutoBootMangerActivity, Handler paramHandler)
  {
    this.b = paramHandler;
  }

  public final void run()
  {
    try
    {
      Method localMethod2 = AutoBootMangerActivity.D(this.a).getClass().getMethod("getPackageSizeInfo", new Class[] { String.class, IPackageStatsObserver.class });
      localMethod1 = localMethod2;
      i = 0;
      if (i < AutoBootMangerActivity.b(this.a).size())
        locala2 = (a)AutoBootMangerActivity.b(this.a).get(i);
    }
    catch (Exception localException1)
    {
      Method localMethod1;
      try
      {
        while (true)
        {
          int i;
          a locala2;
          PackageManager localPackageManager2 = AutoBootMangerActivity.D(this.a);
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = locala2.c();
          arrayOfObject2[1] = new p(this, locala2);
          localMethod1.invoke(localPackageManager2, arrayOfObject2);
          i++;
        }
        localException1 = localException1;
        localException1.printStackTrace();
        localMethod1 = null;
      }
      catch (Exception localException3)
      {
        while (true)
          localException3.printStackTrace();
      }
      int j = 0;
      while (true)
        if (j < AutoBootMangerActivity.i(this.a).size())
        {
          a locala1 = (a)AutoBootMangerActivity.i(this.a).get(j);
          try
          {
            PackageManager localPackageManager1 = AutoBootMangerActivity.D(this.a);
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = locala1.c();
            arrayOfObject1[1] = new q(this, locala1);
            localMethod1.invoke(localPackageManager1, arrayOfObject1);
            j++;
          }
          catch (Exception localException2)
          {
            while (true)
              localException2.printStackTrace();
          }
        }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.o
 * JD-Core Version:    0.6.2
 */