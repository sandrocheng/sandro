import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.common.TMSService;

final class abs extends BroadcastReceiver
{
  abs(abp paramabp)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ((str != null) && (str.equals("notification_screenshot_action")))
    {
      Intent localIntent = new Intent(abp.a(this.a), abp.class);
      localIntent.setAction("notification_screenshot_action");
      TMSService.startService(new abp(), localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abs
 * JD-Core Version:    0.6.2
 */