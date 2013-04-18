package com.ijinshan.cleaner;

import android.content.Context;
import android.content.pm.IPackageDataObserver;
import android.content.pm.PackageManager;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.os.Environment;
import android.os.Handler;
import android.os.Message;
import android.os.StatFs;
import com.ijinshan.cleaner.a.b;
import com.ijinshan.cleaner.a.c;
import java.io.File;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class o
{
  public static int a = 0;
  public static int b = 0;
  public static int c = 0;
  public static final int d = 5;
  public static final String e = "com.google.android.gm";
  public static final String f = "com.google.android.apps.maps";
  public static final String g = "com.android.vending";
  public static final String h = "浏览器记录";
  public static final String i = "谷歌地图搜索记录";
  public static final String j = "Gmail搜索记录";
  public static final String k = "谷歌Market记录";
  public static final String l = "剪贴板记录";
  private static final String u = "softdetail";
  private static final int v = 0;
  private static final int w = 1;
  private SQLiteDatabase A;
  private boolean B = false;
  long m = 0L;
  private Context n;
  private s o;
  private PackageManager p;
  private List q;
  private List r;
  private List s;
  private List t;
  private float x = 0.0F;
  private float y = 0.0F;
  private com.keniu.security.a z;

  private void a()
  {
    this.r = new ArrayList();
    this.s = new ArrayList();
    this.t = new ArrayList();
    this.p = this.n.getPackageManager();
    this.q = this.p.getInstalledPackages(0);
    this.z = com.keniu.security.a.a(this.n);
  }

  private void a(float paramFloat)
  {
    n localn = new n(this.n);
    u localu = new u(this);
    localu.a = c;
    this.x += paramFloat * 1.0F / 5.0F;
    if (localn.d())
    {
      b localb1 = new b();
      localb1.a("浏览器记录");
      localb1.a();
      localu.c = localb1;
      this.t.add(localb1);
      this.o.a(localu);
    }
    this.x += paramFloat * 1.0F / 5.0F;
    if ((b("com.google.android.apps.maps")) && (this.z.ak()))
    {
      b localb5 = new b();
      localb5.a("谷歌地图搜索记录");
      localb5.a();
      localu.c = localb5;
      this.t.add(localb5);
      this.o.a(localu);
    }
    this.x += paramFloat * 1.0F / 5.0F;
    if ((b("com.google.android.gm")) && (this.z.al()))
    {
      b localb4 = new b();
      localb4.a("Gmail搜索记录");
      localb4.a();
      localu.c = localb4;
      this.t.add(localb4);
      this.o.a(localu);
    }
    this.x += paramFloat * 1.0F / 5.0F;
    if ((b("com.android.vending")) && (this.z.aj()))
    {
      b localb3 = new b();
      localb3.a("谷歌Market记录");
      localb3.a();
      localu.c = localb3;
      this.t.add(localb3);
      this.o.a(localu);
    }
    this.x = (paramFloat + this.x);
    if (localn.b())
    {
      b localb2 = new b();
      localb2.a("剪贴板记录");
      localb2.a();
      localu.c = localb2;
      this.t.add(localb2);
      this.o.a(localu);
    }
  }

  private static void a(Handler paramHandler, int paramInt, Object paramObject)
  {
    Message localMessage = paramHandler.obtainMessage(paramInt);
    localMessage.obj = paramObject;
    paramHandler.sendMessage(localMessage);
  }

  private void a(b paramb)
  {
    n localn = new n(this.n);
    if ("浏览器记录".equals(paramb.b()))
      localn.c();
    if ("谷歌地图搜索记录".equals(paramb.b()))
    {
      this.z.c(System.currentTimeMillis());
      localn.f();
    }
    if ("Gmail搜索记录".equals(paramb.b()))
    {
      this.z.d(System.currentTimeMillis());
      localn.e();
    }
    if ("谷歌Market记录".equals(paramb.b()))
    {
      this.z.b(System.currentTimeMillis());
      localn.g();
    }
    if ("剪贴板记录".equals(paramb.b()))
      localn.a();
  }

  private void a(File paramFile)
  {
    if (paramFile.isFile())
      paramFile.delete();
    while (true)
    {
      return;
      File[] arrayOfFile = paramFile.listFiles();
      int i1 = arrayOfFile.length;
      for (int i2 = 0; i2 < i1; i2++)
        a(arrayOfFile[i2]);
      paramFile.delete();
    }
  }

  private static boolean a(String paramString)
  {
    File[] arrayOfFile = f();
    int i1 = arrayOfFile.length;
    int i2 = 0;
    if (i2 < i1)
      if (!arrayOfFile[i2].toString().equals(paramString));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i2++;
      break;
    }
  }

  private long b(File paramFile)
  {
    if ((paramFile != null) && (paramFile.isDirectory()) && (paramFile.exists()))
    {
      File[] arrayOfFile = paramFile.listFiles();
      if (arrayOfFile != null)
      {
        int i1 = arrayOfFile.length;
        for (int i2 = 0; i2 < i1; i2++)
          b(arrayOfFile[i2]);
      }
    }
    for (this.m += paramFile.length(); ; this.m += paramFile.length())
      do
        return this.m;
      while ((paramFile == null) || (!paramFile.isFile()));
  }

  private void b()
  {
    Iterator localIterator = this.t.iterator();
    while (localIterator.hasNext())
    {
      b localb = (b)localIterator.next();
      try
      {
        n localn = new n(this.n);
        if ("浏览器记录".equals(localb.b()))
          localn.c();
        if ("谷歌地图搜索记录".equals(localb.b()))
        {
          this.z.c(System.currentTimeMillis());
          localn.f();
        }
        if ("Gmail搜索记录".equals(localb.b()))
        {
          this.z.d(System.currentTimeMillis());
          localn.e();
        }
        if ("谷歌Market记录".equals(localb.b()))
        {
          this.z.b(System.currentTimeMillis());
          localn.g();
        }
        if ("剪贴板记录".equals(localb.b()))
          localn.a();
      }
      catch (Exception localException)
      {
      }
    }
    this.t.clear();
  }

  private void b(float paramFloat)
  {
    File[] arrayOfFile = f();
    String str1 = Environment.getExternalStorageDirectory().toString();
    int i1 = str1.length();
    if (arrayOfFile != null)
    {
      int i2 = arrayOfFile.length;
      Cursor localCursor = null;
      int i3 = 0;
      if (i3 < i2)
      {
        String str2 = arrayOfFile[i3].toString();
        String[] arrayOfString = { str2.substring(i1, str2.length()) };
        this.x += paramFloat * (i3 + 1);
        if (localCursor != null)
          localCursor.close();
        localCursor = this.A.query("softdetail", null, "filepath = ?", arrayOfString, null, null, null);
        u localu = new u(this);
        localu.a = b;
        if (localCursor.moveToFirst());
        label467: 
        while (true)
        {
          int i4 = localCursor.getInt(5);
          if (i4 == 0)
            if (!b(localCursor.getString(3)))
            {
              c localc2 = new c();
              String str4 = localCursor.getString(4);
              localc2.c(str4);
              this.m = 0L;
              localc2.a(b(new File(str1 + str4)));
              if (a(str1 + str4))
              {
                localu.d = localc2;
                this.s.add(localc2);
                this.o.a(localu);
              }
            }
          while (true)
          {
            if (localCursor.moveToNext())
              break label467;
            localCursor.close();
            i3++;
            break;
            if (i4 == 1)
            {
              String str3 = localCursor.getString(4);
              c localc1 = new c();
              localc1.c(str3);
              this.m = 0L;
              long l1 = b(new File(str1 + str3));
              if (l1 > 0L)
                localc1.a(l1);
              if (a(str1 + str3))
              {
                localu.d = localc1;
                this.s.add(localc1);
                this.o.a(localu);
              }
            }
          }
        }
      }
    }
  }

  private boolean b(String paramString)
  {
    if (this.q.contains(paramString));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void c()
  {
    String str = Environment.getExternalStorageDirectory().toString();
    int i1 = this.s.size();
    for (int i2 = 0; i2 < i1; i2++)
      a(new File(str + this.s.get(i2)));
    this.s.clear();
  }

  private void c(float paramFloat)
  {
    new p(this, paramFloat).start();
    while (!this.B)
      try
      {
        Thread.sleep(10L);
      }
      catch (InterruptedException localInterruptedException)
      {
        localInterruptedException.printStackTrace();
      }
  }

  private void d()
  {
    try
    {
      Class localClass = this.p.getClass();
      Class[] arrayOfClass = new Class[2];
      arrayOfClass[0] = Long.TYPE;
      arrayOfClass[1] = IPackageDataObserver.class;
      Method localMethod = localClass.getMethod("freeStorageAndNotify", arrayOfClass);
      StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
      Long localLong = Long.valueOf(localStatFs.getBlockSize() * localStatFs.getBlockCount() - 1L);
      PackageManager localPackageManager = this.p;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = localLong;
      arrayOfObject[1] = new r(this);
      localMethod.invoke(localPackageManager, arrayOfObject);
      return;
    }
    catch (SecurityException localSecurityException)
    {
      while (true)
        localSecurityException.printStackTrace();
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      while (true)
        localNoSuchMethodException.printStackTrace();
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        localIllegalArgumentException.printStackTrace();
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      while (true)
        localIllegalAccessException.printStackTrace();
    }
    catch (InvocationTargetException localInvocationTargetException)
    {
      while (true)
        localInvocationTargetException.printStackTrace();
    }
  }

  private static long e()
  {
    StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
    return localStatFs.getBlockSize() * localStatFs.getBlockCount();
  }

  private static File[] f()
  {
    File localFile = Environment.getExternalStorageDirectory();
    if ((localFile != null) && (localFile.isDirectory()) && (localFile.exists()));
    for (File[] arrayOfFile = localFile.listFiles(); ; arrayOfFile = null)
      return arrayOfFile;
  }

  public final void a(int paramInt)
  {
    if ((paramInt & a) != 0);
    for (int i1 = 0 + 1; ; i1 = 0)
    {
      if ((paramInt & b) != 0)
        i1++;
      if ((paramInt & c) != 0)
        i1++;
      if ((paramInt & a) != 0);
      try
      {
        Class localClass = this.p.getClass();
        Class[] arrayOfClass = new Class[2];
        arrayOfClass[0] = Long.TYPE;
        arrayOfClass[1] = IPackageDataObserver.class;
        Method localMethod = localClass.getMethod("freeStorageAndNotify", arrayOfClass);
        StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
        Long localLong = Long.valueOf(localStatFs.getBlockSize() * localStatFs.getBlockCount() - 1L);
        PackageManager localPackageManager = this.p;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = localLong;
        arrayOfObject[1] = new r(this);
        localMethod.invoke(localPackageManager, arrayOfObject);
        if ((paramInt & b) != 0)
        {
          c();
          this.y += 1 / i1;
        }
        if ((paramInt & c) != 0)
        {
          b();
          this.y += 1 / i1;
        }
        return;
      }
      catch (SecurityException localSecurityException)
      {
        while (true)
          localSecurityException.printStackTrace();
      }
      catch (NoSuchMethodException localNoSuchMethodException)
      {
        while (true)
          localNoSuchMethodException.printStackTrace();
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        while (true)
          localIllegalArgumentException.printStackTrace();
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
          localIllegalAccessException.printStackTrace();
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        while (true)
          localInvocationTargetException.printStackTrace();
      }
    }
  }

  public final void a(Context paramContext, s params, int paramInt)
  {
    this.n = paramContext;
    this.o = params;
    if ((paramInt & a) != 0);
    for (int i1 = 0 + 1; ; i1 = 0)
    {
      if ((paramInt & b) != 0)
        i1++;
      if ((paramInt & c) != 0)
        i1++;
      this.r = new ArrayList();
      this.s = new ArrayList();
      this.t = new ArrayList();
      this.p = this.n.getPackageManager();
      this.q = this.p.getInstalledPackages(0);
      this.z = com.keniu.security.a.a(this.n);
      if ((paramInt & a) != 0)
        c(1 / i1);
      if ((paramInt & b) != 0)
      {
        this.A = new com.ijinshan.cleaner.b.a().a();
        b(1 / i1);
        this.A.close();
      }
      if ((paramInt & c) != 0)
      {
        float f1 = 1 / i1;
        n localn = new n(this.n);
        u localu = new u(this);
        localu.a = c;
        this.x += f1 * 1.0F / 5.0F;
        if (localn.d())
        {
          b localb1 = new b();
          localb1.a("浏览器记录");
          localb1.a();
          localu.c = localb1;
          this.t.add(localb1);
          this.o.a(localu);
        }
        this.x += f1 * 1.0F / 5.0F;
        if ((b("com.google.android.apps.maps")) && (this.z.ak()))
        {
          b localb5 = new b();
          localb5.a("谷歌地图搜索记录");
          localb5.a();
          localu.c = localb5;
          this.t.add(localb5);
          this.o.a(localu);
        }
        this.x += f1 * 1.0F / 5.0F;
        if ((b("com.google.android.gm")) && (this.z.al()))
        {
          b localb4 = new b();
          localb4.a("Gmail搜索记录");
          localb4.a();
          localu.c = localb4;
          this.t.add(localb4);
          this.o.a(localu);
        }
        this.x += f1 * 1.0F / 5.0F;
        if ((b("com.android.vending")) && (this.z.aj()))
        {
          b localb3 = new b();
          localb3.a("谷歌Market记录");
          localb3.a();
          localu.c = localb3;
          this.t.add(localb3);
          this.o.a(localu);
        }
        this.x = (f1 + this.x);
        if (localn.b())
        {
          b localb2 = new b();
          localb2.a("剪贴板记录");
          localb2.a();
          localu.c = localb2;
          this.t.add(localb2);
          this.o.a(localu);
        }
      }
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.o
 * JD-Core Version:    0.6.2
 */