package com.keniu.security.service;

import android.app.Notification;
import android.app.Service;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.IntentFilter.MalformedMimeTypeException;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.content.pm.PackageManager;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.ijinshan.kinghelper.firewall.core.SmsFirewallBroadcastReceiver;
import com.ijinshan.kinghelper.firewall.core.x;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.listener.SmsStatusReceiver;
import com.jxphone.mosecurity.listener.b;
import com.jxphone.mosecurity.listener.f;
import com.jxphone.mosecurity.logic.h;
import com.keniu.security.f.c;
import com.keniu.security.g;
import com.keniu.security.i.o;
import com.keniu.security.protection.p;
import com.keniu.security.traffic.SaveTrafficModelSettingActivity;
import com.keniu.security.traffic.db;
import com.keniu.security.traffic.y;
import com.keniu.security.util.at;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public final class MoSecurityService extends Service
  implements SharedPreferences.OnSharedPreferenceChangeListener
{
  private static final long b = 604800000L;
  private static final long c = 2592000000L;
  private static final long d = 7200000L;
  private static final String f = "MoSecurity.MoSecurityService";
  private db a = null;
  private final long e = com.keniu.security.e.a;
  private SmsFirewallBroadcastReceiver g = null;
  private b h = null;

  private void b()
  {
    if (com.keniu.security.a.a(getApplicationContext()).at())
    {
      Intent localIntent = new Intent();
      localIntent.setAction("com.keniu.security.traffic.XUANFUCHUANG_STATE");
      localIntent.putExtra("com.keniu.security.traffic.XUANFUCHUANG_STATE", true);
      sendBroadcast(localIntent);
    }
    t.b(getApplicationContext()).registerOnSharedPreferenceChangeListener(this);
  }

  private void c()
  {
    Context localContext = getApplicationContext();
    if (com.keniu.security.a.a(localContext).s())
    {
      s locals = new s(localContext);
      HandlerThread localHandlerThread = new HandlerThread("mosecurity_recommend_examine");
      localHandlerThread.start();
      new Handler(localHandlerThread.getLooper()).postDelayed(locals, 86400000L);
    }
  }

  private void d()
  {
    Context localContext = getApplicationContext();
    if (com.keniu.security.a.a(localContext).t())
    {
      r localr = new r(localContext);
      HandlerThread localHandlerThread = new HandlerThread("mosecurity_notify_open_pref");
      localHandlerThread.start();
      new Handler(localHandlerThread.getLooper()).postDelayed(localr, 172800000L);
    }
  }

  private void e()
  {
    Class[] arrayOfClass = new Class[2];
    arrayOfClass[0] = Integer.TYPE;
    arrayOfClass[1] = Notification.class;
    try
    {
      Method localMethod2 = getClass().getMethod("startForeground", arrayOfClass);
      localMethod1 = localMethod2;
      if (localMethod1 != null)
      {
        arrayOfObject = new Object[2];
        Notification localNotification = new Notification();
        arrayOfObject[0] = Integer.valueOf(2131429109);
        arrayOfObject[1] = localNotification;
      }
    }
    catch (NoSuchMethodException localNoSuchMethodException)
    {
      try
      {
        Object[] arrayOfObject;
        localMethod1.invoke(this, arrayOfObject);
        return;
        localNoSuchMethodException = localNoSuchMethodException;
        Method localMethod1 = null;
      }
      catch (InvocationTargetException localInvocationTargetException)
      {
        while (true)
          Log.w("MoSecurityService", "Unable to invoke startForeground", localInvocationTargetException);
      }
      catch (IllegalAccessException localIllegalAccessException)
      {
        while (true)
          Log.w("MoSecurityService", "Unable to invoke startForeground", localIllegalAccessException);
      }
    }
  }

  private void f()
  {
    com.keniu.security.a locala = com.keniu.security.a.a(this);
    String str = locala.b("");
    if ((!str.equals("")) && (str.equals(com.keniu.security.e.a(this))))
      h.g(this).a();
    locala.ax();
  }

  private void g()
  {
    this.h = new b(this);
    ((TelephonyManager)getSystemService("phone")).listen(this.h, 32);
  }

  private void h()
  {
    ((TelephonyManager)getSystemService("phone")).listen(this.h, 0);
  }

  private void i()
  {
    com.keniu.security.monitor.a locala = com.keniu.security.monitor.a.a();
    x localx = new x();
    com.ijinshan.kinghelper.firewall.core.a locala1 = new com.ijinshan.kinghelper.firewall.core.a();
    com.ijinshan.kinghelper.firewall.core.q localq = new com.ijinshan.kinghelper.firewall.core.q();
    locala.a(com.keniu.security.monitor.a.r, localq, 1073741823);
    locala.a(com.keniu.security.monitor.a.r, localx, 1342177279);
    locala.a(com.keniu.security.monitor.a.r, locala1, 2147483647);
    this.g = new SmsFirewallBroadcastReceiver();
    IntentFilter localIntentFilter1 = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
    localIntentFilter1.addCategory("android.intent.category.DEFAULT");
    localIntentFilter1.setPriority(2147483647);
    registerReceiver(this.g, localIntentFilter1);
    IntentFilter localIntentFilter2 = new IntentFilter("android.provider.Telephony.WAP_PUSH_RECEIVED");
    localIntentFilter2.setPriority(2147483647);
    try
    {
      localIntentFilter2.addDataType("application/vnd.wap.sic");
      localIntentFilter2.addDataType("application/vnd.wap.mms-message");
      registerReceiver(this.g, localIntentFilter2);
      getContentResolver().registerContentObserver(com.keniu.security.e.fB, true, new f(this, new Handler()));
      return;
    }
    catch (IntentFilter.MalformedMimeTypeException localMalformedMimeTypeException)
    {
      while (true)
        localMalformedMimeTypeException.printStackTrace();
    }
  }

  private void j()
  {
    IntentFilter localIntentFilter1 = new IntentFilter("sms_send_action");
    IntentFilter localIntentFilter2 = new IntentFilter("sms_delivered_action");
    registerReceiver(new SmsStatusReceiver(), localIntentFilter1);
    registerReceiver(new SmsStatusReceiver(), localIntentFilter2);
  }

  private static void k()
  {
    com.keniu.security.f.a.a().b();
  }

  private void l()
  {
    Context localContext = getApplicationContext();
    if (at.c(localContext))
      com.jxphone.mosecurity.a.a.a(localContext);
    d.a();
  }

  private void m()
  {
    getApplicationContext();
    p.a();
    com.keniu.security.protection.q.a();
  }

  private void n()
  {
    Context localContext = getApplicationContext();
    y localy = y.a(localContext);
    localy.a(localContext, 2131428289);
    if ((localy.w == 0) || (localy.w == 1) || (localy.w == 2))
    {
      if (SaveTrafficModelSettingActivity.a == null)
        SaveTrafficModelSettingActivity.a = new com.keniu.security.traffic.r();
      com.keniu.security.monitor.a locala = com.keniu.security.monitor.a.a();
      locala.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a);
      locala.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a);
      locala.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a, 1342177279);
      locala.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a, 1342177279);
    }
    if ((localy.w == 0) || (localy.w == 2));
    try
    {
      if (SaveTrafficModelSettingActivity.b == null)
        SaveTrafficModelSettingActivity.b = new HandlerThread("thread_save_traffic");
      SaveTrafficModelSettingActivity.b.start();
      label151: if (SaveTrafficModelSettingActivity.c == null)
        SaveTrafficModelSettingActivity.c = new Handler(SaveTrafficModelSettingActivity.b.getLooper());
      SaveTrafficModelSettingActivity.c.post(SaveTrafficModelSettingActivity.d);
      com.keniu.security.traffic.dd.d(localContext);
      if (localy.a)
        com.keniu.security.traffic.dd.a(localContext);
      while (true)
      {
        return;
        com.keniu.security.traffic.dd.a(localContext, null);
      }
    }
    catch (IllegalThreadStateException localIllegalThreadStateException)
    {
      break label151;
    }
  }

  private void o()
  {
    com.ijinshan.kinghelper.firewall.dd.a(this);
    com.ijinshan.kinghelper.firewall.a.e.a(getApplicationContext());
    com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
  }

  private static void p()
  {
  }

  private void q()
  {
    o.a().a(this);
  }

  private static void r()
  {
    o.a().b();
  }

  private void s()
  {
    if (this.g != null)
    {
      unregisterReceiver(this.g);
      this.g = null;
    }
  }

  private void t()
  {
    this.a.a(1, 7200000L, new a(this));
  }

  private static void u()
  {
    long l = System.currentTimeMillis();
    String str1 = new String("date < ?");
    String str2 = new String("date < ?");
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = String.valueOf(l - 604800000L);
    String[] arrayOfString2 = new String[1];
    arrayOfString2[0] = String.valueOf(l - 2592000000L);
    switch (Integer.parseInt(com.ijinshan.kinghelper.firewall.dd.r()))
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      com.ijinshan.kinghelper.firewall.a.a.a(str1, arrayOfString1);
      com.ijinshan.kinghelper.firewall.a.a.b(str2, arrayOfString1);
      continue;
      com.ijinshan.kinghelper.firewall.a.a.a(str1, arrayOfString2);
      com.ijinshan.kinghelper.firewall.a.a.b(str2, arrayOfString2);
    }
  }

  public final IBinder onBind(Intent paramIntent)
  {
    return null;
  }

  public final void onCreate()
  {
    super.onCreate();
    Log.d("MoSecurity.MoSecurityService", "startService");
    g.a().a(this);
    com.keniu.security.a locala = com.keniu.security.a.a(this);
    String str = locala.b("");
    if ((!str.equals("")) && (str.equals(com.keniu.security.e.a(this))))
      h.g(this).a();
    locala.ax();
    getApplicationContext();
    p.a();
    com.keniu.security.protection.q.a();
    com.ijinshan.kinghelper.firewall.dd.a(this);
    com.ijinshan.kinghelper.firewall.a.e.a(getApplicationContext());
    com.ijinshan.kinghelper.firewall.a.a.a(getApplicationContext());
    this.h = new b(this);
    ((TelephonyManager)getSystemService("phone")).listen(this.h, 32);
    com.keniu.security.monitor.a locala1 = com.keniu.security.monitor.a.a();
    x localx = new x();
    com.ijinshan.kinghelper.firewall.core.a locala2 = new com.ijinshan.kinghelper.firewall.core.a();
    com.ijinshan.kinghelper.firewall.core.q localq = new com.ijinshan.kinghelper.firewall.core.q();
    locala1.a(com.keniu.security.monitor.a.r, localq, 1073741823);
    locala1.a(com.keniu.security.monitor.a.r, localx, 1342177279);
    locala1.a(com.keniu.security.monitor.a.r, locala2, 2147483647);
    this.g = new SmsFirewallBroadcastReceiver();
    IntentFilter localIntentFilter1 = new IntentFilter("android.provider.Telephony.SMS_RECEIVED");
    localIntentFilter1.addCategory("android.intent.category.DEFAULT");
    localIntentFilter1.setPriority(2147483647);
    registerReceiver(this.g, localIntentFilter1);
    IntentFilter localIntentFilter2 = new IntentFilter("android.provider.Telephony.WAP_PUSH_RECEIVED");
    localIntentFilter2.setPriority(2147483647);
    try
    {
      localIntentFilter2.addDataType("application/vnd.wap.sic");
      localIntentFilter2.addDataType("application/vnd.wap.mms-message");
      registerReceiver(this.g, localIntentFilter2);
      getContentResolver().registerContentObserver(com.keniu.security.e.fB, true, new f(this, new Handler()));
      IntentFilter localIntentFilter3 = new IntentFilter("sms_send_action");
      IntentFilter localIntentFilter4 = new IntentFilter("sms_delivered_action");
      registerReceiver(new SmsStatusReceiver(), localIntentFilter3);
      registerReceiver(new SmsStatusReceiver(), localIntentFilter4);
      Context localContext1 = getApplicationContext();
      if (at.c(localContext1))
        com.jxphone.mosecurity.a.a.a(localContext1);
      d.a();
      localContext2 = getApplicationContext();
      localy = y.a(localContext2);
      localy.a(localContext2, 2131428289);
      if ((localy.w == 0) || (localy.w == 1) || (localy.w == 2))
      {
        if (SaveTrafficModelSettingActivity.a == null)
          SaveTrafficModelSettingActivity.a = new com.keniu.security.traffic.r();
        com.keniu.security.monitor.a locala3 = com.keniu.security.monitor.a.a();
        locala3.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a);
        locala3.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a);
        locala3.a(com.keniu.security.monitor.a.p, SaveTrafficModelSettingActivity.a, 1342177279);
        locala3.a(com.keniu.security.monitor.a.o, SaveTrafficModelSettingActivity.a, 1342177279);
      }
      if (localy.w != 0)
        if (localy.w != 2)
          break label593;
    }
    catch (IntentFilter.MalformedMimeTypeException localNoSuchMethodException)
    {
      try
      {
        while (true)
        {
          Context localContext2;
          y localy;
          if (SaveTrafficModelSettingActivity.b == null)
            SaveTrafficModelSettingActivity.b = new HandlerThread("thread_save_traffic");
          SaveTrafficModelSettingActivity.b.start();
          label561: if (SaveTrafficModelSettingActivity.c == null)
            SaveTrafficModelSettingActivity.c = new Handler(SaveTrafficModelSettingActivity.b.getLooper());
          SaveTrafficModelSettingActivity.c.post(SaveTrafficModelSettingActivity.d);
          label593: com.keniu.security.traffic.dd.d(localContext2);
          label611: SharedPreferences localSharedPreferences;
          if (localy.a)
          {
            com.keniu.security.traffic.dd.a(localContext2);
            com.keniu.security.f.a.a().b();
            o.a().a(this);
            Context localContext3 = getApplicationContext();
            if (com.keniu.security.a.a(localContext3).s())
            {
              s locals = new s(localContext3);
              HandlerThread localHandlerThread1 = new HandlerThread("mosecurity_recommend_examine");
              localHandlerThread1.start();
              new Handler(localHandlerThread1.getLooper()).postDelayed(locals, 86400000L);
            }
            Context localContext4 = getApplicationContext();
            if (com.keniu.security.a.a(localContext4).t())
            {
              r localr = new r(localContext4);
              HandlerThread localHandlerThread2 = new HandlerThread("mosecurity_notify_open_pref");
              localHandlerThread2.start();
              new Handler(localHandlerThread2.getLooper()).postDelayed(localr, 172800000L);
            }
            localSharedPreferences = getSharedPreferences("com.ijinshan.mguard_preferences", 0);
          }
          try
          {
            Intent localIntent3 = getPackageManager().getLaunchIntentForPackage("com.ijinshan.duba");
            localIntent1 = localIntent3;
            if (localIntent1 == null)
              c.a();
            if (localSharedPreferences.getBoolean("isSceenLockClear", false))
              com.keniu.security.process.s.a().b();
            this.a = new db();
            this.a.a(1, 7200000L, new a(this));
            if (com.keniu.security.a.a(getApplicationContext()).at())
            {
              Intent localIntent2 = new Intent();
              localIntent2.setAction("com.keniu.security.traffic.XUANFUCHUANG_STATE");
              localIntent2.putExtra("com.keniu.security.traffic.XUANFUCHUANG_STATE", true);
              sendBroadcast(localIntent2);
            }
            t.b(getApplicationContext()).registerOnSharedPreferenceChangeListener(this);
            Class[] arrayOfClass = new Class[2];
            arrayOfClass[0] = Integer.TYPE;
            arrayOfClass[1] = Notification.class;
            try
            {
              Method localMethod2 = getClass().getMethod("startForeground", arrayOfClass);
              localMethod1 = localMethod2;
              if (localMethod1 != null)
              {
                arrayOfObject = new Object[2];
                Notification localNotification = new Notification();
                arrayOfObject[0] = Integer.valueOf(2131429109);
                arrayOfObject[1] = localNotification;
              }
            }
            catch (NoSuchMethodException localNoSuchMethodException)
            {
              try
              {
                Object[] arrayOfObject;
                localMethod1.invoke(this, arrayOfObject);
                i.a().a(getApplicationContext());
                i.a().b();
                com.keniu.security.monitor.d.a().a(getApplicationContext());
                com.keniu.security.monitor.d.a().b();
                return;
                localMalformedMimeTypeException = localMalformedMimeTypeException;
                localMalformedMimeTypeException.printStackTrace();
                continue;
                com.keniu.security.traffic.dd.a(localContext2, null);
                break label611;
                localNoSuchMethodException = localNoSuchMethodException;
                Method localMethod1 = null;
              }
              catch (InvocationTargetException localInvocationTargetException)
              {
                while (true)
                  Log.w("MoSecurityService", "Unable to invoke startForeground", localInvocationTargetException);
              }
              catch (IllegalAccessException localIllegalAccessException)
              {
                while (true)
                  Log.w("MoSecurityService", "Unable to invoke startForeground", localIllegalAccessException);
              }
            }
          }
          catch (Exception localException)
          {
            while (true)
              Intent localIntent1 = null;
          }
        }
      }
      catch (IllegalThreadStateException localIllegalThreadStateException)
      {
        break label561;
      }
    }
  }

  public final void onDestroy()
  {
    super.onDestroy();
    ((TelephonyManager)getSystemService("phone")).listen(this.h, 0);
    if (this.g != null)
    {
      unregisterReceiver(this.g);
      this.g = null;
    }
    i.a().c();
    o.a().b();
    com.keniu.security.monitor.d.a().c();
  }

  public final void onSharedPreferenceChanged(SharedPreferences paramSharedPreferences, String paramString)
  {
    Context localContext;
    Intent localIntent;
    if (paramString.equals("kn_traffis_xuanfuchuang_key"))
    {
      localContext = getApplicationContext();
      localIntent = new Intent();
      localIntent.setAction("com.keniu.security.traffic.XUANFUCHUANG_STATE");
      if (!com.keniu.security.a.a(this).at())
        break label88;
      if (at.b(localContext))
      {
        y localy = y.a(localContext);
        localy.t = System.currentTimeMillis();
        localy.a(localContext, 2131428290);
      }
      localIntent.putExtra("com.keniu.security.traffic.XUANFUCHUANG_STATE", true);
    }
    while (true)
    {
      localContext.sendBroadcast(localIntent);
      return;
      label88: localIntent.putExtra("com.keniu.security.traffic.XUANFUCHUANG_STATE", false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.service.MoSecurityService
 * JD-Core Version:    0.6.2
 */