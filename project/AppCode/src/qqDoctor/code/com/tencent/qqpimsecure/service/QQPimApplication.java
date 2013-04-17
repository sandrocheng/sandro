package com.tencent.qqpimsecure.service;

import a;
import android.app.Application;
import android.content.Context;
import com.tencent.tmsecure.common.ITMSApplicaionConfig;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.SDKUtil;
import di;
import dz;
import gd;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import np;
import qx;
import yn;
import yp;

public class QQPimApplication extends Application
{
  private static Context a;
  private ITMSApplicaionConfig b;

  public static Context a()
  {
    return a;
  }

  public static String a(int paramInt)
  {
    String str = a.getString(2131428994);
    return str + paramInt + a.getString(2131428981);
  }

  public static String a(long paramLong)
  {
    String str = a.getString(2131428991);
    int i = (int)(paramLong / 60000L);
    int j = (int)(paramLong % 60000L / 1000L);
    if (i > 0)
      str = str + i + a.getString(2131428992);
    return str + j + a.getString(2131428993);
  }

  public void onCreate()
  {
    super.onCreate();
    Context localContext = getApplicationContext();
    a = localContext;
    de.b = localContext;
    if (SDKUtil.getSDKVersion() < 5);
    while (true)
    {
      return;
      this.b = new a();
      TMSApplication.init(this, SecureService.class, this.b, new yn(this));
      di.b().d();
      dz.a();
      a.f(a);
      new yp().start();
    }
  }

  final class a
    implements ITMSApplicaionConfig
  {
    static
    {
      if (!QQPimApplication.class.desiredAssertionStatus());
      for (boolean bool = true; ; bool = false)
      {
        a = bool;
        return;
      }
    }

    public final HashMap<String, String> config(Map<String, String> paramMap)
    {
      qx localqx = qx.a();
      paramMap.put("su_cmd", di.b().l());
      paramMap.put("build", localqx.b());
      paramMap.put("channel", localqx.c());
      paramMap.put("lc", localqx.d());
      paramMap.put("softversion", localqx.f());
      String[] arrayOfString = localqx.f().trim().split("[\\._]");
      if ((!a) && (arrayOfString.length < 3))
        throw new AssertionError();
      paramMap.put("pversion", arrayOfString[0]);
      paramMap.put("cversion", arrayOfString[1]);
      paramMap.put("hotfix", arrayOfString[2]);
      paramMap.put("plugin_dir", TMSApplication.getApplicaionContext().getDir("plugins", 0).getAbsolutePath());
      paramMap.put("product", String.valueOf("1"));
      paramMap.put("sub_platform", "201");
      paramMap.put("host_url", gd.b);
      return (HashMap)paramMap;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.QQPimApplication
 * JD-Core Version:    0.6.2
 */