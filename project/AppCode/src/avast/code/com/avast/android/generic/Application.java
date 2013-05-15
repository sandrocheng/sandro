package com.avast.android.generic;

import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import com.avast.android.generic.util.ga.a;
import com.avast.android.generic.util.l;
import com.avast.android.generic.util.m;
import java.util.HashSet;
import java.util.Set;

public class Application extends android.app.Application
{
  private static boolean a = false;
  private static boolean b = false;
  private static boolean c = false;
  private static String d = null;
  private static boolean e = false;
  private static Set h = new HashSet();
  private boolean f = true;
  private int g = 0;

  public static void a(String paramString)
  {
    d = paramString;
  }

  public static void a(boolean paramBoolean)
  {
    a = paramBoolean;
  }

  public static void b(boolean paramBoolean)
  {
    b = paramBoolean;
  }

  public static void c(boolean paramBoolean)
  {
    c = paramBoolean;
  }

  public static boolean c()
  {
    return a;
  }

  public static boolean d()
  {
    return b;
  }

  public static boolean e()
  {
    return c;
  }

  public static String f()
  {
    return d;
  }

  public static void g()
  {
    e = true;
  }

  public static boolean h()
  {
    return e;
  }

  private void i()
  {
    if (Build.VERSION.SDK_INT < 8)
      System.setProperty("http.keepAlive", "false");
  }

  public boolean a()
  {
    return this.f;
  }

  public int b()
  {
    return this.g;
  }

  public Object getSystemService(String paramString)
  {
    try
    {
      Object localObject2 = super.getSystemService(paramString);
      return localObject2;
    }
    finally
    {
      localObject1 = finally;
      throw localObject1;
    }
  }

  public void onCreate()
  {
    super.onCreate();
    try
    {
      PackageInfo localPackageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
      if (localPackageInfo.versionCode > 0);
      for (boolean bool2 = true; ; bool2 = false)
      {
        this.f = bool2;
        this.g = localPackageInfo.versionCode;
        ae localae = (ae)ad.a(this, ae.class);
        i();
        if ((!localae.p()) || (!a()) || (!l.b(this)))
          break;
        bool1 = true;
        a locala = a.b();
        locala.a(bool1);
        locala.a(this);
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        m.b(localNameNotFoundException.getMessage(), localNameNotFoundException);
        continue;
        boolean bool1 = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.Application
 * JD-Core Version:    0.6.2
 */