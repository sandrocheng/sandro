import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;

public final class yw extends BaseService
{
  private Context a;
  private Handler b = new yx(this);
  private BroadcastReceiver c = new yz(this);

  public final IBinder onBind()
  {
    return null;
  }

  public final void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.a = paramContext;
    paramContext.registerReceiver(this.c, new IntentFilter("action_report"));
  }

  public final void onDestory()
  {
    this.a.unregisterReceiver(this.c);
    super.onDestory();
  }

  public final void onStart(Intent paramIntent)
  {
    super.onStart(paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     yw
 * JD-Core Version:    0.6.2
 */