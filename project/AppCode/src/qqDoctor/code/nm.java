import android.app.Activity;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.widget.ImageView;
import com.tencent.qqpimsecure.ui.activity.SplashActivity;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.module.aresengine.AresEngineManager;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;

public final class nm extends np
{
  private nm()
  {
    super((byte)0);
  }

  public final Notification a(Context paramContext, int paramInt, NetworkInfoEntity paramNetworkInfoEntity)
  {
    Notification localNotification = new Notification();
    localNotification.icon = 2130838073;
    localNotification.when = System.currentTimeMillis();
    localNotification.flags = (0x2 | localNotification.flags);
    Intent localIntent = new Intent();
    localIntent.setClass(paramContext, SplashActivity.class);
    localIntent.setFlags(872415232);
    try
    {
      PendingIntent localPendingIntent2 = PendingIntent.getActivity(paramContext, 0, localIntent, 134217728);
      localPendingIntent1 = localPendingIntent2;
      localNotification.contentIntent = localPendingIntent1;
      localNotification.setLatestEventInfo(paramContext, paramContext.getResources().getString(2131428597), paramContext.getResources().getString(2131428633), localPendingIntent1);
      return localNotification;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (true)
      {
        localRuntimeException.printStackTrace();
        PendingIntent localPendingIntent1 = null;
      }
    }
  }

  public final void a(Activity paramActivity)
  {
    ((ImageView)paramActivity.findViewById(2131231393)).setImageResource(2130838305);
  }

  public final int c()
  {
    return 2131427932;
  }

  public final void d()
  {
    super.d();
    ((AresEngineManager)ManagerCreator.getManager(AresEngineManager.class)).setAresEngineFactor(new oo(TMSApplication.getApplicaionContext()));
  }

  public final String e()
  {
    return "http://scan.qq.com/agreement/pindex.html";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     nm
 * JD-Core Version:    0.6.2
 */