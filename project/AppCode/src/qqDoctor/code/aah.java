import android.content.Context;
import android.content.IntentFilter;
import android.os.IBinder;
import com.tencent.qqpimsecure.service.ScreenEventReceiverEUP;
import com.tencent.tmsecure.common.BaseService;

public final class aah extends BaseService
{
  private Context a;
  private ScreenEventReceiverEUP b;

  public final IBinder onBind()
  {
    return null;
  }

  public final void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.b = new ScreenEventReceiverEUP();
    String.valueOf(paramContext);
    this.a = paramContext;
    if (this.a != null)
    {
      this.a.registerReceiver(this.b, new IntentFilter("android.intent.action.SCREEN_ON"));
      this.a.registerReceiver(this.b, new IntentFilter("android.intent.action.SCREEN_OFF"));
    }
  }

  public final void onDestory()
  {
    super.onDestory();
    if (this.a != null)
      this.a.unregisterReceiver(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aah
 * JD-Core Version:    0.6.2
 */