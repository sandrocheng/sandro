package com.keniu.security.i;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

final class f extends Thread
{
  public static final int a = 1;
  public static final int b = 2;
  public static final int c = 3;
  private static final int h = 904;
  private static final String i = ".android_secure|.thinkfree|sdcard|dcim|lost.dir|movie|music|photo|wallpaper|data|android|ringtones|mosecurity|tencent|sina|miliao|ttpod|snda|qieke|tigermap|sogou|brut.googlemaps|BaiduMap";
  private static final String j = "download|update|apk|apps";
  private Handler e;
  private Looper f;
  private List g;

  f(c paramc)
  {
  }

  private void a(File paramFile, boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((!paramFile.isDirectory()) || (!paramFile.exists()));
    label198: 
    while (true)
    {
      return;
      File[] arrayOfFile = paramFile.listFiles();
      boolean bool2;
      if (arrayOfFile != null)
      {
        int k = 0;
        bool2 = paramBoolean2;
        if (k < arrayOfFile.length)
        {
          if (arrayOfFile[k].isDirectory())
            if (paramBoolean1)
              if (!".android_secure|.thinkfree|sdcard|dcim|lost.dir|movie|music|photo|wallpaper|data|android|ringtones|mosecurity|tencent|sina|miliao|ttpod|snda|qieke|tigermap|sogou|brut.googlemaps|BaiduMap".contains(arrayOfFile[k].getName().toLowerCase()))
              {
                c(arrayOfFile[k].getPath());
                a(arrayOfFile[k], false, true);
              }
          while (true)
          {
            k++;
            break;
            a(arrayOfFile[k], false, false);
            continue;
            if ((!bool2) && (arrayOfFile[k].getPath().toLowerCase().endsWith(".apk")))
            {
              c(paramFile.getPath());
              bool2 = true;
            }
          }
        }
      }
      for (boolean bool1 = bool2; ; bool1 = paramBoolean2)
      {
        if ((bool1) || (paramBoolean1) || (!"download|update|apk|apps".contains(paramFile.getName())))
          break label198;
        c(paramFile.getPath());
        break;
      }
    }
  }

  private void c()
  {
    if (this.g == null)
    {
      this.g = new ArrayList();
      c("/sdcard/");
      a(new File("/sdcard/"), true, true);
      for (int k = 0; k < this.g.size(); k++)
        ((e)this.g.get(k)).startWatching();
    }
  }

  private boolean c(String paramString)
  {
    int k = 0;
    boolean bool;
    if (k < this.g.size())
      if (((e)this.g.get(k)).a.equals(paramString))
        bool = false;
    while (true)
    {
      return bool;
      k++;
      break;
      if (this.g.size() >= 100)
      {
        bool = false;
      }
      else
      {
        this.g.add(new e(this.d, paramString));
        bool = true;
      }
    }
  }

  private void d()
  {
    if (this.g != null)
    {
      for (int k = 0; k < this.g.size(); k++)
        ((e)this.g.get(k)).stopWatching();
      this.g = null;
    }
  }

  private void d(String paramString)
  {
    File localFile1 = new File(paramString);
    if (!localFile1.isDirectory())
      return;
    int k = this.g.size();
    File localFile2 = localFile1.getParentFile();
    if ((localFile2 != null) && (localFile2.getPath().equals("/sdcard/")))
    {
      c(paramString);
      a(new File(paramString), false, true);
    }
    while (true)
    {
      int m = this.g.size();
      while (k < m)
      {
        ((e)this.g.get(k)).startWatching();
        k++;
      }
      break;
      a(new File(paramString), false, false);
    }
  }

  private void e()
  {
    new File("/sdcard/").listFiles(new h(this));
    this.d.e.a(this.d, 8, null);
  }

  private void e(String paramString)
  {
    int k = paramString.length();
    for (int m = 0; m < this.g.size(); m++)
    {
      e locale = (e)this.g.get(m);
      int n = locale.a.length();
      if ((n >= k) && (locale.a.startsWith(paramString)) && ((n == k) || (locale.a.charAt(k) == '/')))
      {
        locale.stopWatching();
        this.g.remove(m);
      }
    }
  }

  public final void a()
  {
    if (this.e == null);
    while (true)
    {
      return;
      if (this.e != null)
        this.e.sendMessage(this.e.obtainMessage(1));
    }
  }

  public final void a(String paramString)
  {
    if (this.e == null);
    while (true)
    {
      return;
      Message localMessage = this.e.obtainMessage(2, 0, 0, paramString);
      this.e.sendMessage(localMessage);
    }
  }

  public final void b()
  {
    if (this.f != null)
      this.f.quit();
    try
    {
      join();
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  public final void b(String paramString)
  {
    if (this.e == null);
    while (true)
    {
      return;
      Message localMessage = this.e.obtainMessage(3, 0, 0, paramString);
      this.e.sendMessage(localMessage);
    }
  }

  public final void run()
  {
    Looper.prepare();
    this.f = Looper.myLooper();
    this.e = new g(this);
    c();
    Looper.loop();
    d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.i.f
 * JD-Core Version:    0.6.2
 */