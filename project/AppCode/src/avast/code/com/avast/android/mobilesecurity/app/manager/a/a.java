package com.avast.android.mobilesecurity.app.manager.a;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import java.util.Iterator;
import java.util.List;

public abstract class a
  implements k
{
  private int b(ActivityManager paramActivityManager)
  {
    List localList = paramActivityManager.getRunningAppProcesses();
    int i = 0;
    if (localList == null);
    while (true)
    {
      return i;
      Iterator localIterator = localList.iterator();
      int j = 0;
      while (localIterator.hasNext())
      {
        ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (!"system".equals(localRunningAppProcessInfo.processName))
          j += localRunningAppProcessInfo.pkgList.length;
      }
      i = j;
    }
  }

  public float a()
  {
    try
    {
      float f = b();
      return f;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public int a(ActivityManager paramActivityManager)
  {
    try
    {
      int i = b(paramActivityManager);
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  protected abstract float b();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.a
 * JD-Core Version:    0.6.2
 */