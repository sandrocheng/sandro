package com.avast.android.mobilesecurity.app.manager.a.a;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.database.Cursor;
import android.support.v4.a.n;
import com.avast.android.generic.util.m;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

public abstract class c extends com.avast.android.generic.b
{
  public static String i = "packageName";
  public static String j = "sharedUserId";
  public static String k = "name";
  public static String l = "pid";
  public static String t = "value";
  public static String u = "system";
  public static String v = "uid";
  private final n f;
  private final PackageManager g;
  private final com.avast.android.mobilesecurity.app.manager.a.b h;

  protected c(Context paramContext)
  {
    super(paramContext);
    this.g = paramContext.getPackageManager();
    this.h = new com.avast.android.mobilesecurity.app.manager.a.b(paramContext);
    this.f = new n(this);
  }

  public Cursor A()
  {
    List localList = a(b_());
    Collections.sort(localList, c_());
    Cursor localCursor = b(localList);
    if (localCursor != null)
      localCursor.registerContentObserver(this.f);
    return localCursor;
  }

  protected List B()
  {
    List localList = this.g.getInstalledApplications(0);
    if (localList == null)
      localList = Collections.emptyList();
    return localList;
  }

  protected List C()
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = this.g.getInstalledApplications(0).iterator();
    while (localIterator.hasNext())
    {
      ApplicationInfo localApplicationInfo = (ApplicationInfo)localIterator.next();
      try
      {
        localArrayList.add(this.g.getPackageInfo(localApplicationInfo.packageName, 0));
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        m.c("AppsCursorLoader", "Package info not found.", localNameNotFoundException);
      }
    }
    return localArrayList;
  }

  protected abstract List a(List paramList);

  protected abstract Cursor b(List paramList);

  protected abstract List b_();

  protected Comparator c_()
  {
    return new g();
  }

  protected PackageManager y()
  {
    return this.g;
  }

  protected com.avast.android.mobilesecurity.app.manager.a.b z()
  {
    return this.h;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.a.c
 * JD-Core Version:    0.6.2
 */