package com.avast.android.mobilesecurity.app.advisor;

import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.database.Cursor;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.c;
import com.avast.android.mobilesecurity.d;
import com.avast.android.mobilesecurity.e;
import com.avast.android.mobilesecurity.engine.i;
import com.avast.android.mobilesecurity.f;
import com.avast.android.mobilesecurity.scan.ScanProgress;
import com.avast.android.mobilesecurity.scan.ScanService;
import com.avast.android.mobilesecurity.scan.l;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class g extends l
{
  public static final Map a = Collections.unmodifiableMap(localHashMap);
  private PackageManager b;
  private Integer c;
  private PackageInfo n;

  static
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("android.permission.ACCESS_COARSE_LOCATION", h.a);
    localHashMap.put("android.permission.ACCESS_FINE_LOCATION", h.a);
    localHashMap.put("android.permission.READ_PHONE_STATE", h.b);
    localHashMap.put("android.permission.READ_SMS", h.c);
    localHashMap.put("android.permission.RECEIVE_SMS", h.c);
    localHashMap.put("android.permission.RECEIVE_MMS", h.c);
    localHashMap.put("android.permission.SEND_SMS", h.c);
    localHashMap.put("android.permission.WRITE_SMS", h.c);
    localHashMap.put("android.permission.RECEIVE_WAP_PUSH", h.c);
    localHashMap.put("android.permission.READ_CONTACTS", h.d);
    localHashMap.put("android.permission.WRITE_CONTACTS", h.d);
    localHashMap.put("android.permission.GET_ACCOUNTS", h.e);
    localHashMap.put("android.permission.MANAGE_ACCOUNTS", h.e);
    localHashMap.put("android.permission.AUTHENTICATE_ACCOUNTS", h.e);
    localHashMap.put("android.permission.ACCOUNT_MANAGER", h.e);
    localHashMap.put("android.permission.WRITE_SECURE_SETTINGS", h.f);
  }

  public g(ScanService paramScanService, Bundle paramBundle)
  {
    super(paramScanService, paramBundle);
    this.e = new ScanProgress(paramScanService.getString(2131493355), paramScanService.getString(2131493487), 100);
    if (paramBundle != null)
      this.n = ((PackageInfo)paramBundle.getParcelable("packageInfo"));
    this.b = this.d.getPackageManager();
  }

  private long a(ContentResolver paramContentResolver, h paramh)
  {
    Cursor localCursor = paramContentResolver.query(f.a(paramh.a()), new String[] { "_id" }, null, null, null);
    long l;
    if (localCursor != null)
      if (localCursor.moveToNext())
      {
        l = localCursor.getLong(localCursor.getColumnIndex("_id"));
        localCursor.close();
      }
    while (true)
    {
      if (l == 0L)
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("_id", Integer.valueOf(paramh.a()));
        localContentValues.put("name", paramh.b());
        l = ContentUris.parseId(paramContentResolver.insert(f.a(), localContentValues));
      }
      return l;
      l = 0L;
      break;
      l = 0L;
    }
  }

  private void a(Intent paramIntent)
  {
    PackageManager localPackageManager = this.d.getPackageManager();
    a(localPackageManager.queryIntentActivities(paramIntent, 64));
    a(localPackageManager.queryIntentServices(paramIntent, 64));
    a(localPackageManager.queryBroadcastReceivers(paramIntent, 64));
  }

  private void a(ApplicationInfo paramApplicationInfo)
  {
    while (true)
    {
      int j;
      try
      {
        String[] arrayOfString = this.b.getPackageInfo(paramApplicationInfo.packageName, 4198).requestedPermissions;
        if (arrayOfString != null)
        {
          int i = arrayOfString.length;
          j = 0;
          if (j < i)
          {
            String str = arrayOfString[j];
            if (this.b.checkPermission(str, paramApplicationInfo.packageName) == -1)
              break label148;
            h localh = (h)a.get(str);
            if (localh == null)
              break label148;
            a(localh, paramApplicationInfo.packageName, paramApplicationInfo.loadLabel(this.b).toString());
          }
        }
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException)
      {
        m.e("package info for " + paramApplicationInfo.packageName + " cannot be found");
      }
      return;
      label148: j++;
    }
  }

  private void a(List paramList)
  {
    PackageManager localPackageManager = this.d.getPackageManager();
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
      a(h.g, localResolveInfo.activityInfo.packageName, localResolveInfo.activityInfo.loadLabel(localPackageManager).toString());
    }
  }

  private void a(List paramList, long paramLong)
  {
    Iterator localIterator = paramList.iterator();
    int i = 0;
    while ((localIterator.hasNext()) && (!isCancelled()))
    {
      ApplicationInfo localApplicationInfo = (ApplicationInfo)localIterator.next();
      this.e.c = localApplicationInfo.loadLabel(this.b).toString();
      this.e.f = i;
      this.e.e = i;
      this.e.h = ((int)((System.currentTimeMillis() - paramLong) / 1000L));
      i();
      i++;
      a(localApplicationInfo);
    }
  }

  private boolean a(h paramh, String paramString1, String paramString2)
  {
    ContentResolver localContentResolver = this.d.getContentResolver();
    long l = a(localContentResolver, paramh);
    boolean bool1 = l < 0L;
    boolean bool2 = false;
    if (!bool1);
    while (true)
    {
      return bool2;
      ContentValues localContentValues = new ContentValues();
      localContentValues.put("groupId", Long.valueOf(l));
      localContentValues.put("name", paramString2);
      localContentValues.put("packageName", paramString1);
      Uri localUri = e.a();
      String[] arrayOfString = new String[2];
      arrayOfString[0] = String.valueOf(l);
      arrayOfString[1] = paramString1;
      if (localContentResolver.update(localUri, localContentValues, "groupId = ? AND packageName = ?", arrayOfString) > 0)
      {
        bool2 = true;
      }
      else
      {
        boolean bool3 = ContentUris.parseId(localContentResolver.insert(e.a(), localContentValues)) < 0L;
        bool2 = false;
        if (bool3)
        {
          localContentResolver.notifyChange(f.a(l), null);
          bool2 = true;
        }
      }
    }
  }

  private void f()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(new Uri.Builder().scheme("http").build());
    a(localIntent);
    localIntent.setData(new Uri.Builder().scheme("https").build());
    a(localIntent);
  }

  protected int a()
  {
    return 2131427336;
  }

  protected Boolean a(Void[] paramArrayOfVoid)
  {
    PackageManager localPackageManager = this.d.getPackageManager();
    List localList;
    if (this.n == null)
    {
      localList = localPackageManager.getInstalledApplications(128);
      this.d.getContentResolver().delete(e.a(), null, null);
      this.d.getContentResolver().delete(f.a(), null, null);
      this.d.getContentResolver().delete(c.a(), null, null);
      this.d.getContentResolver().delete(d.a(), null, null);
    }
    ArrayList localArrayList;
    for (Object localObject1 = localList; ; localObject1 = localArrayList)
    {
      Iterator localIterator = ((List)localObject1).iterator();
      while (localIterator.hasNext())
        if (((ApplicationInfo)localIterator.next()).sourceDir.startsWith("/system"))
          localIterator.remove();
      localArrayList = new ArrayList(1);
      localArrayList.add(this.n.applicationInfo);
      AdvisorScanService.a(this.d, this.n.packageName);
    }
    this.e.d = ((List)localObject1).size();
    while (true)
    {
      try
      {
        this.c = i.a(this.d);
        long l = System.currentTimeMillis();
        a((List)localObject1, l);
        f();
        u localu = u.a(this.d);
        if (this.n != null)
        {
          localu.a(y.C, null, (String)this.n.applicationInfo.loadLabel(localPackageManager), this.n.packageName, null, Long.valueOf(1L), null);
          this.e.e = this.e.d;
          this.e.h = ((int)((System.currentTimeMillis() - l) / 1000L));
          i();
          i.a(this.d, this.c.intValue());
          if ((!isCancelled()) && (this.n == null))
          {
            ae localae = (ae)ad.a(this.d.getApplicationContext(), ae.class);
            localae.a("paDone", true);
            localae.b();
            localObject3 = Boolean.valueOf(true);
            return localObject3;
          }
        }
        else
        {
          localu.a(y.C, null, null, null, null, Long.valueOf(((List)localObject1).size()), null);
          continue;
        }
      }
      catch (Throwable localThrowable)
      {
        m.b("Error during Privacy Advisor scan.", localThrowable);
        Boolean localBoolean = Boolean.valueOf(false);
        localObject3 = localBoolean;
        i.a(this.d, this.c.intValue());
        continue;
      }
      finally
      {
        i.a(this.d, this.c.intValue());
      }
      Object localObject3 = Boolean.valueOf(false);
    }
  }

  protected Intent b()
  {
    Intent localIntent = new Intent("android.intent.action.VIEW");
    localIntent.setData(f.a());
    return localIntent;
  }

  protected String c()
  {
    return this.d.getString(2131493487);
  }

  protected String d()
  {
    return this.d.getString(2131493355);
  }

  protected boolean e()
  {
    if (this.n == null);
    for (boolean bool = true; ; bool = false)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.advisor.g
 * JD-Core Version:    0.6.2
 */