import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;

public final class cc extends BaseService
{
  private Context a;
  private boolean b;
  private Handler c = new cd(this);
  private BroadcastReceiver d = new cf(this);

  public final IBinder onBind()
  {
    return null;
  }

  public final void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.a = paramContext;
    paramContext.registerReceiver(this.d, new IntentFilter("powermanager_action_report"));
  }

  public final void onDestory()
  {
    this.a.unregisterReceiver(this.d);
    super.onDestory();
  }

  public final void onStart(Intent paramIntent)
  {
    super.onStart(paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     cc
 * JD-Core Version:    0.6.2
 */