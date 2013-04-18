package com.jxphone.mosecurity.d;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build.VERSION;
import com.keniu.security.MoSecurityApplication;
import com.keniu.security.a;
import com.keniu.security.f.f;
import com.keniu.security.malware.bz;
import java.io.File;

public final class m
{
  private Context a = MoSecurityApplication.a();
  private int b = Integer.parseInt(Build.VERSION.SDK);
  private String c = f.a(this.a.getFilesDir().getPath()) + "ap.jar";
  private final String d = "ap.jar";
  private ActivityManager e = (ActivityManager)this.a.getSystemService("activity");
  private a f = a.a(this.a);

  public final void a(String paramString)
  {
    if (e(paramString));
    while (true)
    {
      return;
      if (this.b <= 7)
        this.e.restartPackage(paramString);
      else if (bz.a().e())
        bz.a().a(paramString, this.c);
      else
        this.e.restartPackage(paramString);
    }
  }

  public final void b(String paramString)
  {
    if (e(paramString));
    while (true)
    {
      return;
      this.e.restartPackage(paramString);
    }
  }

  public final void c(String paramString)
  {
    if (this.b <= 7)
      this.e.restartPackage(paramString);
    while (true)
    {
      return;
      if (bz.a().e())
        bz.a().a(paramString, this.c);
      else
        this.e.restartPackage(paramString);
    }
  }

  public final void d(String paramString)
  {
    this.e.restartPackage(paramString);
  }

  public final boolean e(String paramString)
  {
    String str1 = this.f.G();
    boolean bool;
    if ("".equals(str1))
      bool = false;
    while (true)
    {
      return bool;
      String[] arrayOfString = str1.split("#");
      int i = arrayOfString.length;
      for (int j = 0; ; j++)
      {
        if (j >= i)
          break label81;
        String str2 = arrayOfString[j];
        if ((!"".equals(str2)) && (paramString.equals(str2)))
        {
          bool = true;
          break;
        }
      }
      label81: bool = false;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.m
 * JD-Core Version:    0.6.2
 */