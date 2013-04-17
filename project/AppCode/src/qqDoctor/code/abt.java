import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.tencent.tmsecure.common.TMSService;

final class abt extends BroadcastReceiver
{
  abt(abp paramabp)
  {
  }

  public final void onReceive(Context paramContext, Intent paramIntent)
  {
    String str = paramIntent.getAction();
    if ((str != null) && (str.equals("shake_screenshot_action")) && (abp.c(this.a).bK()) && (abp.c(this.a).bM() == 1) && (!abp.d) && (!((KeyguardManager)abp.a(this.a).getSystemService("keyguard")).inKeyguardRestrictedInputMode()))
    {
      abp.d = true;
      Intent localIntent = new Intent(abp.a(this.a), abp.class);
      localIntent.setAction("shake_screenshot_action");
      TMSService.startService(new abp(), localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abt
 * JD-Core Version:    0.6.2
 */