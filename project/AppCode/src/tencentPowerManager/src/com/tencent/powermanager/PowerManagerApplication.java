package com.tencent.powermanager;

import af;
import android.app.Application;
import android.content.ContentResolver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Build.VERSION;
import android.provider.Settings.System;
import bk;
import bk.a;
import bk.b;
import bk.c;
import bk.d;
import bk.e;
import bk.f;
import bk.g;
import bk.h;
import bk.i;
import bk.j;
import bk.k;
import bk.l;
import bk.m;
import bk.n;
import bk.o;
import bk.p;
import bt;
import bt.a;
import by;
import c;
import cb;
import ch;
import cj;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.service.BatteryPowerRecordReciver;
import com.tencent.powermanager.service.BlueToothReceiver;
import com.tencent.powermanager.service.ModeEventReceiver;
import com.tencent.powermanager.service.NetWorkEventReceiver;
import com.tencent.powermanager.service.PowerManagerService;
import com.tencent.powermanager.service.ScreenEventReceiver;
import com.tencent.tmsecure.common.ITMSApplicaionConfig;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.File;
import java.util.HashMap;
import java.util.Map;
import o;
import r;
import s.a;

public class PowerManagerApplication extends Application
{
  private static Context a = null;
  private BatteryEventReceiver b;
  private ScreenEventReceiver c;
  private BlueToothReceiver d;
  private ModeEventReceiver e;
  private NetWorkEventReceiver f;
  private BatteryPowerRecordReciver g;
  private cj h;
  private ch i;
  private cb j;
  private ITMSApplicaionConfig k;

  public static Context a()
  {
    return a;
  }

  public void onCreate()
  {
    super.onCreate();
    a = getApplicationContext();
    new StringBuilder("Application getApplicationContext = ").append(a).toString();
    if (new Integer(Build.VERSION.SDK).intValue() >= 5)
    {
      this.k = new a();
      TMSApplication.init(this, PowerManagerService.class, this.k);
    }
    if (this.b == null)
      this.b = new BatteryEventReceiver();
    a.registerReceiver(this.b, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
    if (this.c == null)
      this.c = new ScreenEventReceiver();
    a.registerReceiver(this.c, new IntentFilter("android.intent.action.SCREEN_ON"));
    a.registerReceiver(this.c, new IntentFilter("android.intent.action.SCREEN_OFF"));
    if (this.d == null)
      this.d = new BlueToothReceiver();
    IntentFilter localIntentFilter1 = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
    localIntentFilter1.addAction("android.bluetooth.device.action.ACL_CONNECTED");
    localIntentFilter1.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
    a.registerReceiver(this.d, localIntentFilter1);
    if (this.e == null)
      this.e = new ModeEventReceiver();
    a.registerReceiver(this.e, new IntentFilter("action.mode.status.changed"));
    a.registerReceiver(this.e, new IntentFilter("android.intent.action.SERVICE_STATE"));
    if (this.f == null)
      this.f = new NetWorkEventReceiver();
    IntentFilter localIntentFilter2 = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
    IntentFilter localIntentFilter3 = new IntentFilter("android.net.wifi.WIFI_STATE_CHANGED");
    a.registerReceiver(this.f, localIntentFilter2);
    a.registerReceiver(this.f, localIntentFilter3);
    if (this.g == null)
      this.g = new BatteryPowerRecordReciver();
    IntentFilter localIntentFilter4 = new IntentFilter("com.tencent.powermanager.levelrecorder");
    a.registerReceiver(this.g, localIntentFilter4);
    if (s.a.d().p())
    {
      if (by.a == null)
        by.a = new by();
      BatteryEventReceiver.a(by.a);
      if (by.a == null)
        by.a = new by();
      af.a(by.a);
    }
    this.h = new cj();
    Uri localUri1 = Settings.System.getUriFor("vibrate_on");
    a.getContentResolver().registerContentObserver(localUri1, true, this.h);
    Uri localUri2 = Settings.System.getUriFor("mode_ringer");
    a.getContentResolver().registerContentObserver(localUri2, true, this.h);
    a.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness"), true, this.h);
    a.getContentResolver().registerContentObserver(Settings.System.getUriFor("screen_brightness_mode"), true, this.h);
    this.i = ch.a();
    this.i.b();
    this.j = cb.a();
    this.j.b();
    this.i.a(this.j);
    c.a(this);
  }

  public void onTerminate()
  {
    super.onTerminate();
    if (this.b != null)
      a.unregisterReceiver(this.b);
    if (this.c != null)
      a.unregisterReceiver(this.c);
    if (this.d != null)
      a.unregisterReceiver(this.d);
    if (this.e != null)
      a.unregisterReceiver(this.e);
    if (this.f != null)
      a.unregisterReceiver(this.f);
    if (this.g != null)
      a.unregisterReceiver(this.g);
    if (this.h != null)
      a.getContentResolver().unregisterContentObserver(this.h);
    if (s.a.d().p())
    {
      if (by.a == null)
        by.a = new by();
      BatteryEventReceiver.b(by.a);
      if (by.a == null)
        by.a = new by();
      af.b(by.a);
    }
    if (this.j != null)
      this.j.c();
    if (this.i != null)
    {
      if (this.j != null)
        this.i.b(this.j);
      this.i.c();
    }
  }

  final class a
    implements ITMSApplicaionConfig
  {
    static
    {
      if (!PowerManagerApplication.class.desiredAssertionStatus());
      for (boolean bool = true; ; bool = false)
      {
        a = bool;
        return;
      }
    }

    public final HashMap<String, String> config(Map<String, String> paramMap)
    {
      bt localbt = bt.a();
      int i;
      if (bk.a == null)
      {
        i = bt.a().f();
        if (i != bt.a.a)
          break label139;
        bk.a = new bk.g((byte)0);
      }
      String[] arrayOfString;
      while (true)
      {
        paramMap.put("su_cmd", bk.a.a());
        paramMap.put("build", localbt.b());
        paramMap.put("channel", localbt.c());
        paramMap.put("lc", localbt.d());
        paramMap.put("softversion", localbt.e());
        arrayOfString = localbt.e().trim().split("[\\._]");
        if ((a) || (arrayOfString.length >= 3))
          break label479;
        throw new AssertionError();
        label139: if (i == bt.a.b)
        {
          bk.a = new bk.e((byte)0);
        }
        else if (i == bt.a.e)
        {
          bk.a = new bk.h((byte)0);
        }
        else if (i == bt.a.d)
        {
          bk.a = new bk.j((byte)0);
        }
        else if (i == bt.a.c)
        {
          bk.a = new bk.n((byte)0);
        }
        else if (i == bt.a.f)
        {
          bk.a = new bk.f((byte)0);
        }
        else if (i == bt.a.g)
        {
          bk.a = new bk.p((byte)0);
        }
        else if (i == bt.a.i)
        {
          bk.a = new bk.m((byte)0);
        }
        else if (i == bt.a.j)
        {
          bk.a = new bk.o((byte)0);
        }
        else if (i == bt.a.h)
        {
          bk.a = new bk.l((byte)0);
        }
        else if (i == bt.a.k)
        {
          bk.a = new bk.k((byte)0);
        }
        else if (i == bt.a.l)
        {
          bk.a = new bk.i((byte)0);
        }
        else if (i == bt.a.m)
        {
          bk.a = new bk.a((byte)0);
        }
        else if (i == bt.a.n)
        {
          bk.a = new bk.c((byte)0);
        }
        else if (i == bt.a.o)
        {
          bk.a = new bk.b((byte)0);
        }
        else
        {
          if (i != bt.a.p)
            break;
          bk.a = new bk.d((byte)0);
        }
      }
      throw new RuntimeException("^^ no such PLATFORM_OEM");
      label479: paramMap.put("pversion", arrayOfString[0]);
      paramMap.put("cversion", arrayOfString[1]);
      paramMap.put("hotfix", arrayOfString[2]);
      paramMap.put("plugin_dir", TMSApplication.getApplicaionContext().getDir("plugins", 0).getAbsolutePath());
      paramMap.put("product", String.valueOf("21"));
      paramMap.put("sub_platform", "201");
      paramMap.put("host_url", o.a);
      return (HashMap)paramMap;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.PowerManagerApplication
 * JD-Core Version:    0.6.2
 */