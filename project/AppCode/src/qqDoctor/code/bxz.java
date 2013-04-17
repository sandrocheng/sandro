import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;

final class bxz
  implements Runnable
{
  bxz(bxw parambxw, Context paramContext)
  {
  }

  public final void run()
  {
    bxw.c(this.a);
    if (!((ConnectivityManager)this.b.getSystemService("connectivity")).getNetworkInfo(1).isConnected())
    {
      ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class)).setWifiEnabled(false);
      bxw.b = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxz
 * JD-Core Version:    0.6.2
 */