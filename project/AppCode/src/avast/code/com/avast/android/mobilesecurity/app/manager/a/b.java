package com.avast.android.mobilesecurity.app.manager.a;

import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Debug.MemoryInfo;
import com.avast.android.generic.util.m;
import com.google.analytics.tracking.android.bo;
import java.io.BufferedReader;
import java.io.File;
import java.io.IOException;
import java.io.InputStreamReader;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class b
{
  final Pattern a = Pattern.compile("([0-9]+).*?([0-9]+)%");
  final Map b = new HashMap();
  private PackageManager c;
  private ActivityManager d;
  private boolean e = false;
  private ReentrantLock f = new ReentrantLock();

  public b(Context paramContext)
  {
    this.c = paramContext.getPackageManager();
    this.d = ((ActivityManager)paramContext.getSystemService("activity"));
  }

  private void b()
  {
    while (true)
    {
      try
      {
        this.f.lock();
        BufferedReader localBufferedReader = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec("top -s cpu -n 1").getInputStream()));
        String str = localBufferedReader.readLine();
        if (str != null)
        {
          Matcher localMatcher = this.a.matcher(str.trim());
          if (!localMatcher.find())
            continue;
          this.b.put(Integer.valueOf(Integer.parseInt(localMatcher.group(1))), Integer.valueOf(Integer.parseInt(localMatcher.group(2))));
          continue;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        m.b(localNumberFormatException.getMessage(), localNumberFormatException);
        localReentrantLock = this.f;
        localReentrantLock.unlock();
        return;
      }
      catch (IOException localIOException)
      {
        m.b(localIOException.getMessage(), localIOException);
        localReentrantLock = this.f;
        continue;
      }
      finally
      {
        this.f.unlock();
      }
      ReentrantLock localReentrantLock = this.f;
    }
  }

  public long a(int paramInt)
  {
    Debug.MemoryInfo localMemoryInfo = this.d.getProcessMemoryInfo(new int[] { paramInt })[0];
    return localMemoryInfo.dalvikPrivateDirty + localMemoryInfo.nativePrivateDirty + localMemoryInfo.otherPrivateDirty;
  }

  public long a(String paramString)
  {
    return a(paramString, null);
  }

  public long a(String paramString1, String paramString2)
  {
    d locald = new d(this, -1L);
    if (!this.e);
    try
    {
      Method localMethod = this.c.getClass().getMethod("getPackageSizeInfo", new Class[] { String.class, android.a.a.a.class });
      PackageManager localPackageManager = this.c;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString1;
      arrayOfObject[1] = new c(this, locald);
      localMethod.invoke(localPackageManager, arrayOfObject);
      while (true)
        if (locald.a < 0L)
          try
          {
            Thread.yield();
          }
          finally
          {
            localObject = finally;
            throw localObject;
          }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      m.d("This phone doesn't support getPackageSizeInfo() method, fallback will be used");
    }
    catch (Exception localException2)
    {
      try
      {
        com.avast.android.generic.util.ga.a.a().a("ms-error", "noGetPackageSize", "", Long.valueOf(0L));
        label139: this.e = true;
        while (true)
        {
          if ((locald.a >= 0L) || (paramString2 == null));
          try
          {
            paramString2 = this.c.getApplicationInfo(paramString1, 0).sourceDir;
            locald.a = new File(paramString2).length();
            return locald.a;
            localException2 = localException2;
            a.a.a.a.a.a.a().a("Unknows error in getPackageSizeInfo() method", localException2);
          }
          catch (Exception localException1)
          {
            while (true)
              locald.a = -1L;
          }
        }
      }
      catch (Exception localException3)
      {
        break label139;
      }
    }
  }

  public void a()
  {
    if (this.f.tryLock());
    try
    {
      this.b.clear();
      b();
      return;
    }
    finally
    {
      this.f.unlock();
    }
  }

  public int b(int paramInt)
  {
    if ((this.b.size() == 0) && (this.f.tryLock()));
    while (true)
    {
      try
      {
        if (this.b.size() == 0)
          b();
        this.f.unlock();
        Integer localInteger = (Integer)this.b.get(Integer.valueOf(paramInt));
        if (localInteger != null)
        {
          i = localInteger.intValue();
          return i;
        }
      }
      finally
      {
        this.f.unlock();
      }
      int i = -1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.b
 * JD-Core Version:    0.6.2
 */