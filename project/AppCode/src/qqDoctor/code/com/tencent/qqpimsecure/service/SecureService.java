package com.tencent.qqpimsecure.service;

import abf;
import abk;
import abv;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.uilib.view.PermissionTipDialogView;
import com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataIntercepterBuilder;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.permission.PermissionRequestInfo;
import di;
import fi;
import fv;
import gw;
import iu;
import iy;
import np;
import qx;
import qx.a;
import ru;
import ru.a;
import sv;
import vc;
import vd;
import ve;
import wn;
import yr;
import yt;
import zo;

public class SecureService extends TMSService
{
  public static boolean a;
  private b b;

  public SecureService()
  {
    if (qx.a().h() == qx.a.f)
      this.b = new a();
    while (true)
    {
      return;
      if (qx.a().h() == qx.a.q)
        this.b = new d();
      else
        this.b = new c();
    }
  }

  public void onCreate()
  {
    super.onCreate();
    this.b.a();
  }

  public void onDestroy()
  {
    this.b.b();
    a = false;
    super.onDestroy();
  }

  public void onStart(Intent paramIntent, int paramInt)
  {
    super.onStart(paramIntent, paramInt);
    this.b.a(paramIntent);
    a = true;
  }

  final class a
    implements SecureService.b
  {
    private NotificationManager b;
    private ve c;
    private vc d;
    private Context e;

    a()
    {
    }

    public final void a()
    {
      this.e = SecureService.this.getApplicationContext();
      this.b = ((NotificationManager)SecureService.this.getSystemService("notification"));
      Notification localNotification = new Notification();
      localNotification.icon = 2130837945;
      localNotification.when = System.currentTimeMillis();
      localNotification.flags = (0x2 | localNotification.flags);
      Intent localIntent = new Intent();
      localIntent.setClass(SecureService.this, MainActivity.class);
      localIntent.setFlags(872415232);
      PendingIntent localPendingIntent = PendingIntent.getActivity(SecureService.this, 0, localIntent, 134217728);
      localNotification.tickerText = SecureService.this.getResources().getString(2131428629);
      localNotification.setLatestEventInfo(SecureService.this, SecureService.this.getResources().getString(2131428597), SecureService.this.getResources().getString(2131428633), localPendingIntent);
      this.b.notify(6, localNotification);
      this.c = new ve(this.e);
      this.d = new vc(this.e);
      a.a(this.e, (byte)5, true);
      a.a(this.e, (byte)4, true);
      a.a(this.e, (byte)6, true);
      a.a(this.e, (byte)22, true);
      a.a(this.e, (byte)18, true);
      a.a(this.e, (byte)19, true);
      a.a(this.e, (byte)20, true);
    }

    public final void a(Intent paramIntent)
    {
      if ("switch_suspession_window".equals(paramIntent.getAction()))
      {
        this.c.a();
        if (new iu(QQPimApplication.a()).m())
          a.c.setEnable(new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()));
      }
      if (vc.a.equals(paramIntent.getAction()))
        this.d.a(paramIntent.getStringExtra(vc.c), paramIntent.getBooleanExtra(vc.d, false));
      while (true)
      {
        return;
        if (vc.b.equals(paramIntent.getAction()))
          this.d.a();
      }
    }

    public final void b()
    {
      this.c.a(true);
      this.d.a();
      a.a(this.e, (byte)5, false);
      a.a(this.e, (byte)4, false);
      a.a(this.e, (byte)6, false);
      a.a(this.e, (byte)22, false);
      a.a(this.e, (byte)18, false);
      a.a(this.e, (byte)19, false);
    }
  }

  static abstract interface b
  {
    public static final yr a = new yr();

    public abstract void a();

    public abstract void a(Intent paramIntent);

    public abstract void b();
  }

  final class c
    implements SecureService.b
  {
    private Context b;
    private ve c;
    private vc d;
    private vd e;
    private DeskAssistanceWindow f;
    private BatteryEventReceiver g;
    private SDEventReceiver h;
    private UssdBlockedReceiver i;
    private String j = "NormalService test";

    c()
    {
    }

    public final void a()
    {
      try
      {
        ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).addIntercepter(DataIntercepterBuilder.createInComingSmsIntercepterBuilder());
        gw.a();
        this.b = SecureService.this.getApplicationContext();
        wn.a(this.b);
        a.a(this.b, (byte)1, true);
        this.c = new ve(this.b);
        Intent localIntent = new Intent();
        localIntent.setClass(this.b, SecureService.class);
        localIntent.setAction("switch_suspession_window");
        this.b.startService(localIntent);
        TMSService.startService(new abf(), new Intent(SecureService.this, abf.class));
        this.d = new vc(this.b);
        this.e = new vd(this.b);
        this.f = DeskAssistanceWindow.getInstance(this.b);
        this.f.showSuspendedWindow();
        a.a(this.b, (byte)2, true);
        a.a(this.b, (byte)3, true);
        a.a(this.b, (byte)4, true);
        a.a(this.b, (byte)5, true);
        a.a(this.b, (byte)6, true);
        a.a(this.b, (byte)8, true);
        a.a(this.b, (byte)7, true);
        a.a(this.b, (byte)18, true);
        a.a(this.b, (byte)19, true);
        a.a(this.b, (byte)24, true);
        a.a(this.b, (byte)23, true);
        a.a(this.b, (byte)21, true);
        a.a(this.b, (byte)25, true);
        a.a(this.b, (byte)32, true);
        a.a(this.b, (byte)33, true);
        a.a(this.b, (byte)34, true);
        this.g = new BatteryEventReceiver();
        this.b.registerReceiver(this.g, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        this.i = new UssdBlockedReceiver();
        this.b.registerReceiver(this.i, new IntentFilter(UssdBlockedReceiver.a));
        new fv(this.b).a();
        abk.a(this.b).b();
        fi.b(QQPimApplication.a());
        this.h = new SDEventReceiver();
        IntentFilter localIntentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
        localIntentFilter.addAction("android.intent.action.MEDIA_REMOVED");
        localIntentFilter.addAction("android.intent.action.MEDIA_EJECT");
        localIntentFilter.addDataScheme("file");
        this.b.registerReceiver(this.h, localIntentFilter);
        return;
      }
      catch (Exception localException)
      {
        while (true)
          localException.printStackTrace();
      }
    }

    public final void a(Intent paramIntent)
    {
      if (paramIntent == null);
      while (true)
      {
        return;
        String str = paramIntent.getAction();
        if (str != null)
          if ("com.tencent.action.cloud_service".equals(str))
          {
            new Thread(new yt(a)).start();
          }
          else if ("switch_suspession_window".equals(str))
          {
            this.c.a();
            if (new iu(QQPimApplication.a()).m())
              a.c.setEnable(new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()));
          }
          else if (vc.a.equals(str))
          {
            this.d.a(paramIntent.getStringExtra(vc.c), paramIntent.getBooleanExtra(vc.d, false));
          }
          else if (vc.b.equals(str))
          {
            this.d.a();
          }
          else if (PermissionTipDialogView.PERMISSION_DIALOG_ADD.equals(str))
          {
            PermissionRequestInfo localPermissionRequestInfo = (PermissionRequestInfo)paramIntent.getParcelableExtra("Require_Info");
            if ((localPermissionRequestInfo != null) && (localPermissionRequestInfo.mRid == 12))
            {
              yr localyr = a;
              boolean bool;
              if (((localyr.d == null) || (localyr.d.c())) && (localPermissionRequestInfo != null))
                bool = localyr.d.a(localPermissionRequestInfo);
              while (true)
              {
                int m;
                if (bool)
                {
                  ru.a.a = 0;
                  m = 0;
                  label259: if ((ru.a.b) || (m >= 200));
                }
                else
                {
                  try
                  {
                    Thread.sleep(50L);
                    m++;
                    break label259;
                    bool = true;
                    continue;
                    ru.a.a = 1;
                  }
                  catch (InterruptedException localInterruptedException)
                  {
                    while (true)
                      localInterruptedException.printStackTrace();
                  }
                }
              }
              synchronized (ru.a)
              {
                ru.a.notifyAll();
              }
            }
            this.e.a(str, paramIntent);
          }
          else if (PermissionTipDialogView.PERMISSION_DIALOG_DELETE.equals(str))
          {
            this.e.a(str, paramIntent);
          }
          else if ("switch_desk_assis_window".equals(str))
          {
            this.f.showSuspendedWindow();
          }
      }
    }

    public final void b()
    {
      this.c.a(true);
      this.d.a();
      this.f.closeSuspendedWindow();
      TMSService.stopService(abf.class);
      a.a(this.b, (byte)1, false);
      a.a(this.b, (byte)2, false);
      a.a(this.b, (byte)3, false);
      a.a(this.b, (byte)4, false);
      a.a(this.b, (byte)5, false);
      a.a(this.b, (byte)6, false);
      a.a(this.b, (byte)8, false);
      a.a(this.b, (byte)7, false);
      a.a(this.b, (byte)18, false);
      a.a(this.b, (byte)19, false);
      a.a(this.b, (byte)20, false);
      a.a(this.b, (byte)21, false);
      a.a(this.b, (byte)23, false);
      a.a(this.b, (byte)25, false);
      a.a(this.b, (byte)32, false);
      a.a(this.b, (byte)33, false);
      a.a(this.b, (byte)34, false);
      abv.b();
      zo.b();
      this.b.unregisterReceiver(this.g);
      this.b.unregisterReceiver(this.i);
      sv.a(this.b).a();
      abk.a(this.b).a();
      this.b.unregisterReceiver(this.h);
    }
  }

  final class d
    implements SecureService.b
  {
    private Context b;
    private ve c;
    private vc d;
    private vd e;

    d()
    {
    }

    public final void a()
    {
      this.b = SecureService.this.getApplicationContext();
      a.a(this.b, (byte)5, true);
      a.a(this.b, (byte)2, true);
      a.a(this.b, (byte)3, true);
      a.a(this.b, (byte)4, true);
      a.a(this.b, (byte)6, true);
      a.a(this.b, (byte)22, true);
      a.a(this.b, (byte)18, true);
      a.a(this.b, (byte)19, true);
      this.c = new ve(this.b);
      this.d = new vc(this.b);
      this.e = new vd(this.b);
      a.a(this.b, (byte)20, true);
    }

    public final void a(Intent paramIntent)
    {
      String str;
      if (paramIntent != null)
      {
        str = paramIntent.getAction();
        if (str != null)
          break label14;
      }
      while (true)
      {
        return;
        label14: if ("com.tencent.action.cloud_service".equals(str))
        {
          new Thread(new yt(a)).start();
        }
        else if ("switch_suspession_window".equals(str))
        {
          this.c.a();
          if (new iu(QQPimApplication.a()).m())
            a.c.setEnable(new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()));
        }
        else if (vc.a.equals(str))
        {
          this.d.a(paramIntent.getStringExtra(vc.c), paramIntent.getBooleanExtra(vc.d, false));
        }
        else if (vc.b.equals(str))
        {
          this.d.a();
        }
        else if (PermissionTipDialogView.PERMISSION_DIALOG_ADD.equals(str))
        {
          this.e.a(str, paramIntent);
        }
        else if (PermissionTipDialogView.PERMISSION_DIALOG_DELETE.equals(str))
        {
          this.e.a(str, paramIntent);
        }
      }
    }

    public final void b()
    {
      this.c.a(true);
      this.d.a();
      a.a(this.b, (byte)5, false);
      a.a(this.b, (byte)2, false);
      a.a(this.b, (byte)3, false);
      a.a(this.b, (byte)4, false);
      a.a(this.b, (byte)6, false);
      a.a(this.b, (byte)22, false);
      a.a(this.b, (byte)18, false);
      a.a(this.b, (byte)19, false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.SecureService
 * JD-Core Version:    0.6.2
 */