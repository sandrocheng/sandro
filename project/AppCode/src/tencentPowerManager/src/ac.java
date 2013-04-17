import android.app.KeyguardManager;
import android.app.KeyguardManager.KeyguardLock;
import android.app.KeyguardManager.OnKeyguardExitResult;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.powermanager.PowerManagerApplication;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.service.BatteryEventReceiver.a;
import com.tencent.powermanager.uilib.view.BatteryChargingBehindWindow;
import com.tencent.powermanager.uilib.view.BatteryChargingPrivateWindow;
import com.tencent.powermanager.uilib.view.BatteryChargingWindow;

public final class ac
{
  public static int a = 0;
  private static ac b;
  private static ac.b c;
  private static ac.a d;
  private static int e;
  private static KeyguardManager.KeyguardLock f;
  private static KeyguardManager g;
  private static ac.c h;
  private static boolean i = false;
  private static boolean j = false;
  private static ac.d k;
  private static BatteryEventReceiver.a l = new ad();
  private static Handler m = new ae(Looper.getMainLooper());

  /**
   * mark ac_init
   * @param paramContext
   */
  private ac(Context paramContext)
  {
    c = new ac.b();
    d = new ac.a();
    e = Integer.parseInt(Build.VERSION.SDK);
    if (g == null)
    {
      KeyguardManager localKeyguardManager = (KeyguardManager)paramContext.getSystemService("keyguard");
      g = localKeyguardManager;
      f = localKeyguardManager.newKeyguardLock("keyguard");
      h = new ac.c((byte)0);
    }
  }

  public static void a()
  {
    if (f != null)
      f.reenableKeyguard();
  }

  /**
   * 屏保页面初始化
   * mark init_saver_compent
   * @param paramContext
   */
  public static void a(Context paramContext)
  {
    if (b == null)
      b = new ac(PowerManagerApplication.a());//mark ac_init
    BatteryChargingWindow.a(paramContext);//mark BatteryChargingWindow_init
    if (e <= 10)
      BatteryChargingBehindWindow.a(paramContext);//mark BatteryChargingBehindWindow_init
    k = new ac.d((byte)0);
    ((TelephonyManager)paramContext.getSystemService("phone")).listen(k, 32);
  }

  /**
   * mark add_saver_views
   */
  public static void b()
  {
    BatteryChargingWindow.c();//mark add_BatteryChargingWindow_view
    if (e <= 10)
      BatteryChargingBehindWindow.b();//mark add_BatteryChargingBehindWindow_view
    BatteryChargingPrivateWindow.a();// mark add_BatteryChargingPrivateWindow_view
    System.gc();
  }

  public static void b(Context paramContext)
  {
    if ((j) || (i) || (!BatteryEventReceiver.c))
      if (i)
        BatteryChargingWindow.f();
    while (true)
    {
      return;
      if (e <= 10)
        BatteryChargingBehindWindow.setOnTouchBehindListener(c);
      BatteryChargingWindow.setOnControlListener(d);
      if (f != null)
        f.disableKeyguard();
      BatteryEventReceiver.a(l);
      BatteryChargingPrivateWindow.a(paramContext);
      BatteryChargingWindow.b(paramContext);
      if (e <= 10)
        BatteryChargingBehindWindow.b(paramContext);
      i = true;
      m.sendEmptyMessageDelayed(1, 1000L);
    }
  }

  public static void c()
  {
    m.removeMessages(1);
    if (e <= 10)
      BatteryChargingBehindWindow.a(c);
    BatteryChargingWindow.a(d);
    BatteryChargingWindow.e();
    if (e <= 10)
      BatteryChargingBehindWindow.d();
    if ((h != null) && (g != null))
      g.exitKeyguardSecurely(h);
    BatteryEventReceiver.b(l);
    try
    {
      Thread.sleep(700L);
      BatteryChargingPrivateWindow.b();
      i = false;
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      while (true)
        localInterruptedException.printStackTrace();
    }
  }

  public static void d()
  {
    c();
    BatteryChargingWindow.d();
    if (e <= 10)
      BatteryChargingBehindWindow.c();
    BatteryChargingPrivateWindow.c();
    System.gc();
  }

  public static boolean e()
  {
    if (a == g());
    for (boolean bool = true; ; bool = false)
    {
      if (!bool)
        a = g();
      return bool;
    }
  }

  private static int g()
  {
    if (((WindowManager)PowerManagerApplication.a().getSystemService("window")).getDefaultDisplay().getHeight() < ((WindowManager)PowerManagerApplication.a().getSystemService("window")).getDefaultDisplay().getWidth());
    for (int n = 1; ; n = 0)
      return n;
  }

  public static final class a
  {
  }

  public static final class b
  {
  }

  static final class c
    implements KeyguardManager.OnKeyguardExitResult
  {
    public final void onKeyguardExitResult(boolean paramBoolean)
    {
      new StringBuilder("onKeyguardExitResult :: ").append(paramBoolean).toString();
      ac.a();
    }
  }

  static final class d extends PhoneStateListener
  {
    public final void onCallStateChanged(int paramInt, String paramString)
    {
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        super.onCallStateChanged(paramInt, paramString);
        return;
        ac.a(false);
        continue;
        ac.a(true);
        ac.c();
        continue;
        ac.a(true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ac
 * JD-Core Version:    0.6.2
 */