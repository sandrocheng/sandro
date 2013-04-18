package com.keniu.security;

import android.app.Application;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.text.TextUtils;
import cn.com.wali.zft.plugin;
import com.ijinshan.kpref.t;
import com.keniu.security.f.ab;
import com.keniu.security.monitor.MonitorNetworkConnectivity;
import java.io.PrintStream;

public class MoSecurityApplication extends Application
{
  public static final String a = "preVersion";
  private static MoSecurityApplication b;

  public MoSecurityApplication()
  {
    b = this;
  }

  public static MoSecurityApplication a()
  {
    return b;
  }

  public void onCreate()
  {
    super.onCreate();
    g.a().a(this);
    int i = plugin.Init(this, "com.ijinshan.mguard", "04f9c347e182fe08");
    System.out.println("init=" + i);
    try
    {
      PackageInfo localPackageInfo = getPackageManager().getPackageInfo(getPackageName(), 0);
      String str3 = localPackageInfo.versionName;
      int j = localPackageInfo.versionCode;
      String str4 = str3 + "(" + j + ")" + "_" + "MAIN";
      str1 = str4;
      SharedPreferences localSharedPreferences = t.b(this);
      String str2 = localSharedPreferences.getString("preVersion", null);
      if ((TextUtils.isEmpty(str2)) || (!TextUtils.equals(str1, str2)))
      {
        SharedPreferences.Editor localEditor = localSharedPreferences.edit();
        localEditor.putString("preVersion", str1);
        localEditor.commit();
      }
      MonitorNetworkConnectivity.a(this);
      ab.a().a(this);
      d.a(this);
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        String str1 = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.MoSecurityApplication
 * JD-Core Version:    0.6.2
 */