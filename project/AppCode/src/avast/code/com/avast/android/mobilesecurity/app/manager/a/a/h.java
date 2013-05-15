package com.avast.android.mobilesecurity.app.manager.a.a;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.database.MatrixCursor.RowBuilder;
import com.avast.android.generic.util.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class h extends c
  implements b
{
  private final ActivityManager f;
  private int g;
  private long h;

  public h(Context paramContext, int paramInt)
  {
    super(paramContext);
    this.f = ((ActivityManager)paramContext.getSystemService("activity"));
    this.g = paramInt;
    this.h = 0L;
  }

  protected List D()
  {
    List localList = this.f.getRunningAppProcesses();
    if (localList == null)
      localList = Collections.emptyList();
    return localList;
  }

  protected List a(List paramList)
  {
    ArrayList localArrayList = new ArrayList(paramList.size());
    HashMap localHashMap = new HashMap(paramList.size());
    Iterator localIterator = paramList.iterator();
    long l1 = 0L;
    ActivityManager.RunningAppProcessInfo localRunningAppProcessInfo;
    int j;
    long l2;
    label93: String str;
    while (true)
      if (localIterator.hasNext())
      {
        localRunningAppProcessInfo = (ActivityManager.RunningAppProcessInfo)localIterator.next();
        if (!"system".equals(localRunningAppProcessInfo.processName))
        {
          String[] arrayOfString = localRunningAppProcessInfo.pkgList;
          int i = arrayOfString.length;
          j = 0;
          l2 = l1;
          if (j < i)
            str = arrayOfString[j];
        }
      }
    while (true)
    {
      ApplicationInfo localApplicationInfo;
      d locald1;
      try
      {
        localApplicationInfo = y().getApplicationInfo(str, 128);
        locald1 = new d();
        locald1.d = l2;
        locald1.h = localApplicationInfo.packageName;
        locald1.i = localApplicationInfo.loadLabel(y()).toString().trim();
        locald1.f = localRunningAppProcessInfo.pid;
        locald1.j = 0L;
        switch (this.g)
        {
        default:
          if ((0x1 & localApplicationInfo.flags) <= 0)
            break label502;
          k = 1;
          locald1.k = k;
          if (!localHashMap.containsKey(locald1.h))
            break;
          d locald2 = (d)localHashMap.get(locald1.h);
          locald2.i = (locald2.i + " (" + locald2.f + ")");
          locald1.i = (locald1.i + " (" + locald1.f + ")");
          localArrayList.add(locald1);
          l2 += 1L;
          break;
        case 1:
          locald1.j = z().a(localApplicationInfo.packageName, localApplicationInfo.sourceDir);
          continue;
        case 2:
        case 3:
        }
      }
      catch (Exception localException)
      {
        m.e("Package [" + str + "] not found because of " + localException.getMessage());
      }
      locald1.j = z().a(locald1.f);
      continue;
      locald1.j = z().b(locald1.f);
      continue;
      localHashMap.put(localApplicationInfo.packageName, locald1);
      continue;
      l1 = l2;
      break;
      return localArrayList;
      j++;
      break label93;
      label502: int k = 0;
    }
  }

  protected Cursor b(List paramList)
  {
    if ((this.g != 0) && (paramList.size() > 0))
      this.h = ((d)paramList.get(0)).j;
    String[] arrayOfString = new String[6];
    arrayOfString[0] = "_id";
    arrayOfString[1] = i;
    arrayOfString[2] = k;
    arrayOfString[3] = l;
    arrayOfString[4] = t;
    arrayOfString[5] = u;
    MatrixCursor localMatrixCursor = new MatrixCursor(arrayOfString);
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      localMatrixCursor.newRow().add(Long.valueOf(locald.d)).add(locald.h).add(locald.i).add(Integer.valueOf(locald.f)).add(Long.valueOf(locald.j)).add(Integer.valueOf(locald.k));
    }
    return localMatrixCursor;
  }

  protected List b_()
  {
    return D();
  }

  protected Comparator c_()
  {
    Object localObject;
    switch (this.g)
    {
    default:
      localObject = new g();
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    }
    while (true)
    {
      return localObject;
      localObject = new g();
      continue;
      localObject = new i(true);
    }
  }

  public long x()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.a.h
 * JD-Core Version:    0.6.2
 */