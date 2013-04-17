import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;
import java.util.Timer;

public final class abh extends BaseService
{
  private static boolean c = false;
  private Context a;
  private Timer b;
  private BroadcastReceiver d = new abj(this);

  public final IBinder onBind()
  {
    return null;
  }

  public final void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.a = paramContext;
    this.b = new Timer();
    this.b.schedule(new abi(this), 86400000L, 86400000L);
    this.a.registerReceiver(this.d, new IntentFilter("android.intent.action.SCREEN_ON"));
  }

  public final void onDestory()
  {
    if (this.b != null)
    {
      this.b.purge();
      this.b.cancel();
    }
    this.a.unregisterReceiver(this.d);
    super.onDestory();
  }

  public final void onStart(Intent paramIntent)
  {
    super.onStart(paramIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abh
 * JD-Core Version:    0.6.2
 */