import android.content.Context;
import android.content.Intent;
import com.tencent.feedback.Analytics;
import com.tencent.qqpimsecure.service.BatteryEventReceiver;
import com.tencent.qqpimsecure.service.BlueToothReceiver;
import com.tencent.qqpimsecure.service.BootReceiver;
import com.tencent.qqpimsecure.service.ConnectionDetector;
import com.tencent.qqpimsecure.service.FastBootReceiver;
import com.tencent.qqpimsecure.service.InOutCallReceiver;
import com.tencent.qqpimsecure.service.MMSReceiver;
import com.tencent.qqpimsecure.service.NetWorkEventReceiver;
import com.tencent.qqpimsecure.service.OperatorDataSyncTaskReceiver;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.service.RootBroadcast;
import com.tencent.qqpimsecure.service.ScreenEventReceiver;
import com.tencent.qqpimsecure.service.SecureService;
import com.tencent.qqpimsecure.service.TimedTaskReceiver;
import com.tencent.qqpimsecure.service.UssdBlockedReceiver;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.widget.NetSetWidgetProvider;
import com.tencent.qqpimsecure.widget.NetworkStateChangeReceiver;
import com.tencent.qqpimsecure.widget.TaskManagerWidgetProvider;
import com.tencent.qqpimsecure.widget.WidgetUpdateBoradcastReceiver;
import com.tencent.tmsecure.common.TMSBootReceiver;

public final class fd
{
  public static Thread a = null;

  public static void a(boolean paramBoolean)
  {
    Context localContext = QQPimApplication.a();
    localContext.stopService(new Intent(localContext, SecureService.class));
    ov.a().h();
    a.a(localContext, SecureService.class);
    a.a(localContext, ConnectionDetector.class);
    a.a(localContext, BlueToothReceiver.class);
    a.a(localContext, InOutCallReceiver.class);
    a.a(localContext, BatteryEventReceiver.class);
    a.a(localContext, TimedTaskReceiver.class);
    a.a(localContext, FastBootReceiver.class);
    a.a(localContext, MMSReceiver.class);
    a.a(localContext, NetWorkEventReceiver.class);
    a.a(localContext, NetworkStateChangeReceiver.class);
    a.a(localContext, ScreenEventReceiver.class);
    a.a(localContext, TMSBootReceiver.class);
    a.a(localContext, RootBroadcast.class);
    a.a(localContext, UssdBlockedReceiver.class);
    a.a(localContext, WidgetUpdateBoradcastReceiver.class);
    a.a(localContext, ConnectionDetector.class);
    a.a(localContext, NetSetWidgetProvider.class);
    a.a(localContext, TaskManagerWidgetProvider.class);
    a.a(localContext, OperatorDataSyncTaskReceiver.class);
    if (!paramBoolean)
      a.a(localContext, BootReceiver.class);
    MainActivity localMainActivity = MainActivity.a();
    if (localMainActivity != null)
      localMainActivity.finish();
    Analytics.onAppExited(localContext);
    Thread localThread = new Thread(new fe());
    a = localThread;
    localThread.start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     fd
 * JD-Core Version:    0.6.2
 */