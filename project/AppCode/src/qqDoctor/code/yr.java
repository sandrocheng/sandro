import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.os.Looper;
import android.provider.Browser;
import com.tencent.qqpimsecure.service.BlueToothReceiver;
import com.tencent.qqpimsecure.service.NetWorkEventReceiver;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.ScreenEventReceiver;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofLockActivity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSService;
import com.tencent.tmsecure.module.antitheft.AntitheftManager;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.aresengine.DataHandler;
import com.tencent.tmsecure.module.aresengine.DataHandler.DataHandlerCallback;
import com.tencent.tmsecure.module.aresengine.DataIntercepter;
import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.tools.IPackageChangedListener;
import com.tencent.tmsecure.module.tools.PackageChangedManager;
import java.util.Date;
import java.util.Timer;

public final class yr
{
  private static BroadcastReceiver s;
  Context a;
  Handler b;
  public NetworkManager c;
  public wn d;
  private Thread e;
  private PackageChangedManager f;
  private IPackageChangedListener g;
  private abd h;
  private xh i;
  private rn j;
  private INetworkChangeCallBack k;
  private AresEngineManager l;
  private DataHandler.DataHandlerCallback m;
  private DataHandler.DataHandlerCallback n;
  private DataHandler.DataHandlerCallback o;
  private ScreenEventReceiver p;
  private NetWorkEventReceiver q = new NetWorkEventReceiver();
  private BlueToothReceiver r = new BlueToothReceiver();
  private INetworkMonitor t;
  private po u;
  private ok v;
  private qb w;
  private yf x;

  private void a(boolean paramBoolean)
  {
    PackageChangedManager localPackageChangedManager;
    acp localacp;
    label30: xh localxh;
    if (paramBoolean)
    {
      localPackageChangedManager = (PackageChangedManager)ManagerCreator.getManager(PackageChangedManager.class);
      this.f = localPackageChangedManager;
      if (!paramBoolean)
        break label113;
      localacp = new acp();
      this.g = localacp;
      if (!paramBoolean)
        break label118;
      localxh = new xh(this.a);
      label52: this.i = localxh;
      if (!paramBoolean)
        break label124;
    }
    label113: label118: label124: for (abd localabd = new abd(this.a); ; localabd = null)
    {
      this.h = localabd;
      rn localrn = null;
      if (paramBoolean)
        localrn = new rn(this.a);
      this.j = localrn;
      return;
      localPackageChangedManager = null;
      break;
      localacp = null;
      break label30;
      localxh = null;
      break label52;
    }
  }

  private void b(boolean paramBoolean)
  {
    if (paramBoolean);
    for (Handler localHandler = new Handler(Looper.myLooper()); ; localHandler = null)
    {
      this.b = localHandler;
      Thread localThread = null;
      if (paramBoolean)
        localThread = new Thread(new yr.a((byte)0));
      this.e = localThread;
      return;
    }
  }

  private void c(boolean paramBoolean)
  {
    AresEngineManager localAresEngineManager;
    pw localpw;
    if (paramBoolean)
    {
      localAresEngineManager = (AresEngineManager)ManagerCreator.getManager(AresEngineManager.class);
      this.l = localAresEngineManager;
      op localop = op.a();
      if (!localop.b())
        localop.c();
      if (!paramBoolean)
        break label109;
      localpw = new pw();
      label46: this.m = localpw;
      if (!paramBoolean)
        break label115;
    }
    label109: label115: for (abm localabm = new abm(); ; localabm = null)
    {
      this.n = localabm;
      aam localaam = null;
      if (paramBoolean)
        localaam = new aam();
      this.o = localaam;
      return;
      localAresEngineManager = null;
      break;
      localpw = null;
      break label46;
    }
  }

  private void d(boolean paramBoolean)
  {
    if (paramBoolean);
    for (NetworkManager localNetworkManager = (NetworkManager)ManagerCreator.getManager(NetworkManager.class); ; localNetworkManager = null)
    {
      this.c = localNetworkManager;
      we localwe = null;
      if (paramBoolean)
        localwe = new we();
      this.k = localwe;
      return;
    }
  }

  public final boolean a(Context paramContext, byte paramByte, boolean paramBoolean)
  {
    this.a = paramContext;
    switch (paramByte)
    {
    case 10:
    case 11:
    case 12:
    case 13:
    case 14:
    case 15:
    case 16:
    case 17:
    case 21:
    case 22:
    case 26:
    case 27:
    case 28:
    case 29:
    case 30:
    case 31:
    default:
    case 2:
    case 3:
    case 1:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 18:
    case 19:
    case 20:
    case 24:
    case 23:
    case 25:
    case 32:
    case 33:
    case 34:
    }
    while (true)
    {
      return true;
      if (paramBoolean)
      {
        a(paramBoolean);
        this.f.addListener(this.g, 0);
        this.f.addListener(this.i);
        this.f.addListener(this.h);
        this.f.addListener(this.j);
      }
      else
      {
        this.f.removeListener(this.g);
        this.f.removeListener(this.i);
        this.f.removeListener(this.h);
        this.f.removeListener(this.j);
        a(paramBoolean);
        continue;
        if (paramBoolean)
        {
          d(paramBoolean);
          if (new iy(QQPimApplication.a()).a.getBoolean("netword_service_status", di.b().f()))
          {
            xb.a(true, false);
            this.c.addDefaultWifiMonitor("wifi", new iz(QQPimApplication.a()));
            this.c.addDefaultMobileMonitor("mobile", new iu(QQPimApplication.a()));
            this.t = this.c.findMonitor("mobile");
            this.t.addCallback(this.k);
          }
          else
          {
            xb.a(false, false);
            this.c.addDefaultWifiMonitor("wifi", new iz(QQPimApplication.a()));
            this.c.addDefaultMobileMonitor("mobile", new iu(QQPimApplication.a()));
            this.t = this.c.findMonitor("mobile");
            this.t.removeCallback(this.k);
          }
        }
        else
        {
          this.t.removeCallback(this.k);
          d(paramBoolean);
          continue;
          if (paramBoolean)
          {
            c(paramBoolean);
            try
            {
              this.l.findIntercepter("incoming_sms").dataHandler().addCallback(this.o);
              this.l.findIntercepter("incoming_call").dataHandler().addCallback(this.m);
              this.l.findIntercepter("system_call").dataHandler().addCallback(this.n);
            }
            catch (Exception localException2)
            {
              localException2.printStackTrace();
            }
          }
          else
          {
            try
            {
              this.l.findIntercepter("incoming_sms").dataHandler().removeCallback(this.o);
              this.l.findIntercepter("incoming_call").dataHandler().removeCallback(this.m);
              this.l.findIntercepter("system_call").dataHandler().removeCallback(this.n);
              c(paramBoolean);
            }
            catch (Exception localException1)
            {
              while (true)
                localException1.printStackTrace();
            }
            if (paramBoolean)
            {
              jl localjl = f.e();
              if (localjl.b.getInt("scanPlan", -1) < 0)
              {
                Date localDate = new Date();
                int i1 = -1 + localDate.getDay();
                int[] arrayOfInt = new int[7];
                int i2 = 0;
                if (i2 < arrayOfInt.length)
                {
                  if (i1 == i2)
                    arrayOfInt[i2] = 1;
                  while (true)
                  {
                    i2++;
                    break;
                    arrayOfInt[i2] = 0;
                  }
                }
                localjl.c.putInt("scanPlan", 0).commit();
                localjl.a(arrayOfInt);
                int i3 = localDate.getHours();
                localjl.c.putInt("scanTimeHour", i3).commit();
                int i4 = localDate.getMinutes();
                localjl.c.putInt("scanTimeMini", i4).commit();
              }
              new Thread(new ys(this)).start();
              continue;
              if (paramBoolean)
              {
                yv localyv1 = null;
                if (paramBoolean)
                  localyv1 = new yv(this);
                s = localyv1;
                IntentFilter localIntentFilter4 = new IntentFilter("android.intent.action.TIME_SET");
                localIntentFilter4.addAction("android.intent.action.DATE_CHANGED");
                localIntentFilter4.addAction("android.intent.action.TIMEZONE_CHANGED");
                this.a.registerReceiver(s, localIntentFilter4);
              }
              else
              {
                this.a.unregisterReceiver(s);
                yv localyv2 = null;
                if (paramBoolean)
                  localyv2 = new yv(this);
                s = localyv2;
                continue;
                if (paramBoolean)
                {
                  ScreenEventReceiver localScreenEventReceiver1 = null;
                  if (paramBoolean)
                    localScreenEventReceiver1 = new ScreenEventReceiver();
                  this.p = localScreenEventReceiver1;
                  IntentFilter localIntentFilter3 = new IntentFilter("android.intent.action.SCREEN_OFF");
                  localIntentFilter3.addAction("android.intent.action.SCREEN_ON");
                  this.a.registerReceiver(this.p, localIntentFilter3);
                }
                else
                {
                  this.a.unregisterReceiver(this.p);
                  ScreenEventReceiver localScreenEventReceiver2 = null;
                  if (paramBoolean)
                    localScreenEventReceiver2 = new ScreenEventReceiver();
                  this.p = localScreenEventReceiver2;
                  continue;
                  if (paramBoolean)
                  {
                    wr.a(this.a).a();
                  }
                  else
                  {
                    wr.a(this.a).b();
                    continue;
                    if (paramBoolean)
                    {
                      ho localho = ho.a();
                      AntitheftManager localAntitheftManager = (AntitheftManager)ManagerCreator.getManager(AntitheftManager.class);
                      if (localho.bD())
                      {
                        yb.a(this.a).a(true);
                        if (localho.bG())
                        {
                          Intent localIntent3 = new Intent();
                          localIntent3.setFlags(268435456);
                          localIntent3.setClass(this.a, PickproofLockActivity.class);
                          localIntent3.putExtra("sim_change", true);
                          this.a.startActivity(localIntent3);
                        }
                        else
                        {
                          String str1 = localho.bJ();
                          if (str1 != null)
                          {
                            String str2 = ft.c(this.a);
                            if ((str2 == null) || ("".equals(str2)) || (!str1.contains(str2)))
                            {
                              new Timer().schedule(new yu(this, str1, localAntitheftManager, localho), 15000L);
                              continue;
                              if (paramBoolean)
                              {
                                b(paramBoolean);
                                this.b.removeCallbacks(this.e);
                                this.e.setPriority(1);
                                this.b.post(this.e);
                              }
                              else
                              {
                                this.b.removeCallbacks(this.e);
                                b(paramBoolean);
                                continue;
                                if (paramBoolean)
                                {
                                  NetWorkEventReceiver localNetWorkEventReceiver1 = null;
                                  if (paramBoolean)
                                    localNetWorkEventReceiver1 = new NetWorkEventReceiver();
                                  this.q = localNetWorkEventReceiver1;
                                  IntentFilter localIntentFilter2 = new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE");
                                  this.a.registerReceiver(this.q, localIntentFilter2);
                                }
                                else
                                {
                                  this.a.unregisterReceiver(this.q);
                                  NetWorkEventReceiver localNetWorkEventReceiver2 = null;
                                  if (paramBoolean)
                                    localNetWorkEventReceiver2 = new NetWorkEventReceiver();
                                  this.q = localNetWorkEventReceiver2;
                                  continue;
                                  if (paramBoolean)
                                  {
                                    BlueToothReceiver localBlueToothReceiver1 = null;
                                    if (paramBoolean)
                                      localBlueToothReceiver1 = new BlueToothReceiver();
                                    this.r = localBlueToothReceiver1;
                                    IntentFilter localIntentFilter1 = new IntentFilter("android.bluetooth.adapter.action.STATE_CHANGED");
                                    localIntentFilter1.addAction("android.bluetooth.device.action.ACL_CONNECTED");
                                    localIntentFilter1.addAction("android.bluetooth.device.action.ACL_DISCONNECTED");
                                    this.a.registerReceiver(this.r, localIntentFilter1);
                                  }
                                  else
                                  {
                                    this.a.unregisterReceiver(this.r);
                                    BlueToothReceiver localBlueToothReceiver2 = null;
                                    if (paramBoolean)
                                      localBlueToothReceiver2 = new BlueToothReceiver();
                                    this.r = localBlueToothReceiver2;
                                    continue;
                                    if (paramBoolean)
                                    {
                                      ov.a().a(false, false, true);
                                    }
                                    else
                                    {
                                      ov.a().a(6);
                                      continue;
                                      if (paramBoolean)
                                      {
                                        if (this.u != null)
                                        {
                                          po localpo3 = this.u;
                                          if (localpo3.f != null)
                                            localpo3.e.getContentResolver().unregisterContentObserver(localpo3.f);
                                        }
                                        this.u = new po(this.a);
                                        po localpo2 = this.u;
                                        if (localpo2.e != null)
                                        {
                                          if (localpo2.f == null)
                                            localpo2.f = new po.a(localpo2);
                                          localpo2.e.getContentResolver().registerContentObserver(Browser.BOOKMARKS_URI, true, localpo2.f);
                                        }
                                      }
                                      else if (this.u != null)
                                      {
                                        po localpo1 = this.u;
                                        if (localpo1.f != null)
                                          localpo1.e.getContentResolver().unregisterContentObserver(localpo1.f);
                                        this.u = null;
                                        continue;
                                        if (paramBoolean)
                                        {
                                          if (this.d == null)
                                            this.d = wn.a(this.a);
                                        }
                                        else if (this.d != null)
                                        {
                                          this.d = null;
                                          continue;
                                          if (paramBoolean)
                                          {
                                            if (this.v == null)
                                            {
                                              Context localContext = this.a;
                                              if (ok.a == null)
                                                ok.a = new ok(localContext);
                                              this.v = ok.a;
                                            }
                                          }
                                          else if (this.v != null)
                                          {
                                            this.v = null;
                                            continue;
                                            if (paramBoolean)
                                              if (this.w == null)
                                              {
                                                this.w = new qb();
                                                Intent localIntent2 = new Intent(this.a, qb.class);
                                                TMSService.startService(this.w, localIntent2);
                                              }
                                            while (true)
                                            {
                                              if (!paramBoolean)
                                                break label1928;
                                              if (this.x != null)
                                                break;
                                              this.x = new yf();
                                              Intent localIntent1 = new Intent(this.a, yf.class);
                                              TMSService.startService(this.x, localIntent1);
                                              break;
                                              if (this.w != null)
                                              {
                                                TMSService.stopService(this.w);
                                                this.w = null;
                                              }
                                            }
                                            label1928: if (this.x != null)
                                            {
                                              TMSService.stopService(this.x);
                                              this.x = null;
                                              continue;
                                              iy localiy = new iy(QQPimApplication.a());
                                              if (paramBoolean)
                                              {
                                                if (localiy.a.getBoolean("is_upload_started", false))
                                                  wh.a().b();
                                              }
                                              else if (wh.a != null)
                                                wh.a = null;
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  final class a
    implements Runnable
  {
    private a()
    {
    }

    public final void run()
    {
      if (ho.a().h() != 0L)
      {
        ho.a().g();
        ho.a().a(System.currentTimeMillis());
      }
      yr.this.b.postDelayed(this, 1800000L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yr
 * JD-Core Version:    0.6.2
 */