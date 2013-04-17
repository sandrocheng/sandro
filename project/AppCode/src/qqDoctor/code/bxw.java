import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.wifi.WifiManager;
import android.os.Handler;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.module.powersaving.BlueToothHelper;
import com.tencent.tmsecure.module.powersaving.PowerSavingConfig;

public abstract class bxw extends BroadcastReceiver
{
  public static int a;
  public static boolean b;
  public static boolean c;
  public static boolean d;
  private static boolean m;
  private static boolean p = true;
  private static boolean q;
  private String e = "AbsPowerSavingBroadcastReceiver";
  private Runnable f = null;
  private Runnable g = null;
  private Handler h = null;
  private Handler i = null;
  private boolean j = false;
  private boolean k = false;
  private boolean l;
  private Runnable n;
  private Handler o;

  bxw()
  {
    NetSettingManager localNetSettingManager = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
    m = localNetSettingManager.isWifiEnabled();
    c = localNetSettingManager.getMobileDataConnectivity();
    q = localNetSettingManager.isBluetoothEnabled();
  }

  public abstract void a(Intent paramIntent);

  public abstract void a(boolean paramBoolean);

  public abstract boolean a();

  public abstract PowerSavingConfig b();

  public abstract void b(Intent paramIntent);

  public abstract void b(boolean paramBoolean);

  public abstract void c(Intent paramIntent);

  public abstract void c(boolean paramBoolean);

  public abstract void d(Intent paramIntent);

  public abstract void d(boolean paramBoolean);

  public abstract void e(boolean paramBoolean);

  public abstract void f(boolean paramBoolean);

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    PowerSavingConfig localPowerSavingConfig1;
    if (("android.intent.action.SCREEN_OFF".equals(str)) || ("android.intent.action.SCREEN_ON".equals(str)))
    {
      localPowerSavingConfig1 = b();
      if (paramIntent.getAction().equals("android.intent.action.SCREEN_OFF"))
      {
        ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(0L);
        if (!a())
        {
          if (((0x8 & localPowerSavingConfig1.mWifiAutoCloseCondition) == 8) && (m))
          {
            if (this.h == null)
              this.h = new Handler();
            if (this.f == null)
              this.f = new bxx(this);
            this.h.postDelayed(this.f, localPowerSavingConfig1.mWifiAutoCloseScreenTime);
            this.j = true;
          }
          if (((0x2 & localPowerSavingConfig1.mMobileNetWorkAutoCloseCondition) == 2) && (p))
          {
            if (this.i == null)
              this.i = new Handler();
            if (this.g == null)
              this.g = new bxy(this);
            this.i.postDelayed(this.g, localPowerSavingConfig1.mWifiAutoCloseScreenTime);
            this.k = true;
          }
        }
      }
    }
    while (true)
    {
      return;
      if (paramIntent.getAction().equals("android.intent.action.SCREEN_ON"))
      {
        if (this.j)
        {
          this.h.removeCallbacks(this.f);
          this.j = false;
        }
        if ((!a()) && ((0x4 & localPowerSavingConfig1.mWifiAutoOpenCondition) == 4) && (m))
        {
          NetSettingManager localNetSettingManager2 = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
          if (!localNetSettingManager2.isWifiEnabled())
          {
            localNetSettingManager2.setWifiEnabled(true);
            b = true;
          }
        }
        if (this.k)
        {
          this.i.removeCallbacks(this.g);
          this.k = false;
        }
        if ((!a()) && ((0x4 & localPowerSavingConfig1.mMobileNetWorkAutoOpenCondition) == 4) && (p))
        {
          NetSettingManager localNetSettingManager1 = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
          if (!localNetSettingManager1.getMobileDataConnectivity())
          {
            localNetSettingManager1.setMobileDataConnectivity(true);
            c = true;
          }
        }
        if ((!a()) && ((0x4 & localPowerSavingConfig1.mBlueToothAutoOpenCondition) == 4) && (q))
        {
          ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).enableBluetooth();
          d = true;
          continue;
          if ("android.intent.action.BATTERY_CHANGED".equals(str))
          {
            if (paramIntent.getAction().equals("android.intent.action.BATTERY_CHANGED"))
            {
              int i5 = paramIntent.getIntExtra("level", 0);
              int i6 = paramIntent.getIntExtra("scale", 100);
              int i7 = i5 * 100 / i6;
              if (i7 > 100)
                i7 = 100;
              if (a != i7)
              {
                a = i7;
                a(paramIntent);
              }
              int i8 = paramIntent.getIntExtra("status", 1);
              PowerSavingConfig localPowerSavingConfig4 = b();
              if (i8 == 2)
              {
                if (!this.l)
                {
                  this.l = true;
                  b(paramIntent);
                  if (!a())
                  {
                    if (((0x2 & localPowerSavingConfig4.mWifiAutoOpenCondition) == 2) && (m))
                    {
                      NetSettingManager localNetSettingManager4 = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
                      if (!localNetSettingManager4.isWifiEnabled())
                      {
                        localNetSettingManager4.setWifiEnabled(true);
                        b = true;
                      }
                    }
                    if (((0x2 & localPowerSavingConfig4.mMobileNetWorkAutoOpenCondition) == 2) && (p))
                    {
                      ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setMobileDataConnectivity(true);
                      c = true;
                    }
                    if (((0x2 & localPowerSavingConfig4.mBlueToothAutoOpenCondition) == 2) && (q))
                    {
                      ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).enableBluetooth();
                      d = true;
                    }
                  }
                }
              }
              else if (i8 == 5)
              {
                if (this.l)
                {
                  this.l = false;
                  d(paramIntent);
                }
              }
              else if ((i8 == 4) || (i8 == 3))
              {
                new StringBuilder("receive stop msg::").append(i8).toString();
                if (this.l)
                {
                  this.l = false;
                  c(paramIntent);
                }
              }
            }
          }
          else if (("android.net.wifi.WIFI_STATE_CHANGED".equals(str)) || ("android.net.wifi.RSSI_CHANGED".equals(str)))
          {
            PowerSavingConfig localPowerSavingConfig2 = b();
            if (paramIntent.getAction().equals("android.net.wifi.WIFI_STATE_CHANGED"))
            {
              int i3 = paramIntent.getIntExtra("wifi_state", 0);
              if (i3 == 2)
              {
                if (!b)
                  m = true;
                if ((!a()) && ((0x2 & localPowerSavingConfig2.mWifiAutoCloseCondition) == 2))
                  new Handler().postDelayed(new bxz(this, paramContext), localPowerSavingConfig2.mWifiOverTimeDuration);
              }
              else if (i3 == 3)
              {
                b(b);
                if (b)
                  b = false;
                else
                  m = true;
              }
              else if (i3 == 1)
              {
                a(b);
                if (b)
                  b = false;
                else
                  m = false;
              }
            }
            else if ((paramIntent.getAction().equals("android.net.wifi.RSSI_CHANGED")) && (!a()) && ((0x4 & localPowerSavingConfig2.mWifiAutoCloseCondition) == 4))
            {
              if ((this.o != null) && (this.n != null))
              {
                this.o.removeCallbacks(this.n);
                this.o = null;
                this.n = null;
              }
              NetSettingManager localNetSettingManager3 = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
              int i1 = 100 / localPowerSavingConfig2.mWifiLowSignalThreshold;
              int i2 = localNetSettingManager3.getWifiRssi();
              if ((localNetSettingManager3.getWifiState() != 2) && (localNetSettingManager3.getWifiState() != 0) && (WifiManager.calculateSignalLevel(i2, i1) == 0))
              {
                this.o = new Handler();
                this.n = new bya(localNetSettingManager3);
                this.o.postDelayed(this.n, 300000L);
              }
              new StringBuilder("wifi rssi::").append(i2).toString();
            }
          }
          else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(str))
          {
            if (paramIntent.getAction().equals("android.net.conn.CONNECTIVITY_CHANGE"))
            {
              NetworkInfo localNetworkInfo = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
              if (localNetworkInfo.getType() == 0)
              {
                NetworkInfo.State localState = localNetworkInfo.getState();
                if (localState == NetworkInfo.State.CONNECTED)
                {
                  d(c);
                  if (c)
                    c = false;
                  else
                    p = true;
                }
                else if (localState == NetworkInfo.State.DISCONNECTED)
                {
                  c(c);
                  if (c)
                    c = false;
                  else
                    p = false;
                }
              }
            }
          }
          else if (("android.bluetooth.adapter.action.STATE_CHANGED".equals(str)) || ("android.bluetooth.device.action.ACL_CONNECTED".equals(str)) || ("android.bluetooth.device.action.ACL_DISCONNECTED".equals(str)))
          {
            PowerSavingConfig localPowerSavingConfig3 = b();
            if ("android.bluetooth.adapter.action.STATE_CHANGED".equals(paramIntent.getAction()))
            {
              int i4 = ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).getBluetoothState();
              if (i4 == 11)
              {
                if ((!a()) && ((0x1 & localPowerSavingConfig3.mBlueToothAutoCloseCondition) != 1))
                {
                  BlueToothHelper localBlueToothHelper2 = BlueToothHelper.a(paramContext);
                  if (!localBlueToothHelper2.i)
                  {
                    localBlueToothHelper2.g = new Handler();
                    localBlueToothHelper2.h = new byd(localBlueToothHelper2, localPowerSavingConfig3);
                    localBlueToothHelper2.g.postDelayed(localBlueToothHelper2.h, 300000L);
                    localBlueToothHelper2.i = true;
                  }
                }
              }
              else if (i4 == 13)
              {
                BlueToothHelper localBlueToothHelper1 = BlueToothHelper.a(paramContext);
                if ((localBlueToothHelper1.g != null) && (localBlueToothHelper1.h != null))
                  localBlueToothHelper1.g.removeCallbacks(localBlueToothHelper1.h);
                localBlueToothHelper1.g = null;
                localBlueToothHelper1.h = null;
                localBlueToothHelper1.i = false;
              }
              else if (i4 == 12)
              {
                f(d);
                if (d)
                  d = false;
                else
                  q = true;
              }
              else if (i4 == 10)
              {
                e(d);
                if (d)
                  d = false;
                else
                  q = false;
              }
            }
            else if ("android.bluetooth.device.action.ACL_CONNECTED".equals(paramIntent.getAction()))
            {
              BlueToothHelper.a(paramContext).f = true;
            }
            else if ("android.bluetooth.device.action.ACL_DISCONNECTED".equals(paramIntent.getAction()))
            {
              BlueToothHelper.a(paramContext).f = false;
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxw
 * JD-Core Version:    0.6.2
 */