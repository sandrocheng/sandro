import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.Handler;
import android.view.WindowManager;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;

public final class ve
{
  public static boolean a = false;
  private WindowManager b;
  private String c = "ManagerTrafficSuspessionWindow";
  private SuspendedTrafficMonitoringView d = null;
  private Context e;
  private it f;
  private Handler g;
  private Runnable h;
  private boolean i = false;
  private final BroadcastReceiver j = new vf(this);

  public ve(Context paramContext)
  {
    this.e = paramContext;
    this.f = new iu(QQPimApplication.a());
    this.b = ((WindowManager)paramContext.getSystemService("window"));
  }

  private static boolean d()
  {
    ConnectivityManager localConnectivityManager = (ConnectivityManager)QQPimApplication.a().getSystemService("connectivity");
    boolean bool = false;
    NetworkInfo[] arrayOfNetworkInfo;
    if (localConnectivityManager != null)
    {
      arrayOfNetworkInfo = localConnectivityManager.getAllNetworkInfo();
      bool = false;
      if (arrayOfNetworkInfo == null);
    }
    for (int k = 0; ; k++)
    {
      int m = arrayOfNetworkInfo.length;
      bool = false;
      if (k < m)
      {
        if (arrayOfNetworkInfo[k].getState() == NetworkInfo.State.CONNECTED)
          bool = true;
      }
      else
        return bool;
    }
  }

  public final void a()
  {
    if (!this.i)
    {
      this.i = true;
      IntentFilter localIntentFilter = new IntentFilter("android.intent.action.MEDIA_MOUNTED");
      localIntentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
      this.e.registerReceiver(this.j, localIntentFilter);
    }
    boolean bool1 = this.f.m();
    boolean bool2 = this.f.n();
    if ((bool1) && (bool2))
    {
      ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(fs.c);
      if (!a)
      {
        if (this.d == null)
          this.d = new SuspendedTrafficMonitoringView(this.e);
        this.b.addView(this.d, kg.b);
        this.d.addCallBack();
        a = true;
        if (!d())
          b();
        ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).notifyConfigChange();
      }
    }
    while (true)
    {
      return;
      ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(fs.d);
      if (a)
        a(false);
    }
  }

  public final void a(boolean paramBoolean)
  {
    if (paramBoolean);
    try
    {
      this.e.unregisterReceiver(this.j);
      this.f.f(true);
      this.i = false;
      if ((this.b != null) && (this.d != null))
      {
        this.d.removeCallBack();
        this.b.removeView(this.d);
        a = false;
        if (this.d != null)
          this.d = null;
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  public final void b()
  {
    if (this.g == null)
      this.g = new Handler();
    if (this.h == null)
      this.h = new vg(this);
    this.g.removeCallbacks(this.h);
    this.g.postDelayed(this.h, 60000L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ve
 * JD-Core Version:    0.6.2
 */