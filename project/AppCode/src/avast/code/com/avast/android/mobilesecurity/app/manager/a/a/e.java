package com.avast.android.mobilesecurity.app.manager.a.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public abstract class e extends c
{
  public static String w = "grouped_apps_names";
  public static String x = "grouped_apps_count";

  protected e(Context paramContext)
  {
    super(paramContext);
  }

  protected List a(List paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    HashMap localHashMap = new HashMap();
    Iterator localIterator1 = paramList.iterator();
    long l = 0L;
    if (localIterator1.hasNext())
    {
      PackageInfo localPackageInfo = (PackageInfo)localIterator1.next();
      f localf2 = w();
      localf2.d = l;
      localf2.e = localPackageInfo.applicationInfo.uid;
      localf2.f = 0;
      localf2.g = localPackageInfo.sharedUserId;
      localf2.h = localPackageInfo.packageName;
      localf2.i = localPackageInfo.applicationInfo.loadLabel(y()).toString().trim();
      localf2.k = 0;
      a(localf2);
      if (localPackageInfo.sharedUserId != null)
        if (localHashMap.containsKey(localPackageInfo.sharedUserId))
        {
          f localf3 = (f)localHashMap.get(localPackageInfo.sharedUserId);
          if (localf3.m == null)
          {
            localf3.m = localf3.i;
            localf3.n = 1;
          }
          localf3.m = (localf3.m + ", " + localf2.i);
          localf3.n = (1 + localf3.n);
        }
      while (true)
      {
        l += 1L;
        break;
        localHashMap.put(localPackageInfo.sharedUserId, localf2);
        continue;
        localArrayList.add(localf2);
      }
    }
    Iterator localIterator2 = localHashMap.values().iterator();
    while (localIterator2.hasNext())
    {
      f localf1 = (f)localIterator2.next();
      if (localf1.n > 0)
        localf1.l = ("*** END ***" + localf1.n);
      localArrayList.add(localf1);
    }
    return localArrayList;
  }

  protected abstract void a(f paramf);

  protected List b_()
  {
    return C();
  }

  protected abstract f w();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.a.e
 * JD-Core Version:    0.6.2
 */