import android.app.ActivityManager.RunningTaskInfo;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.tencent.tmsecure.common.BaseService;

public class qb extends BaseService
  implements abv.b
{
  private Context a;

  public void currentApp(ActivityManager.RunningTaskInfo paramRunningTaskInfo)
  {
    px.a(this.a).a(paramRunningTaskInfo);
  }

  public IBinder onBind()
  {
    return null;
  }

  public void onCreate(Context paramContext)
  {
    super.onCreate(paramContext);
    this.a = paramContext;
  }

  public void onDestory()
  {
    super.onDestory();
    px.a(this.a).c();
    abv.a().b(this);
  }

  public void onStart(Intent paramIntent)
  {
    super.onStart(paramIntent);
    abv.a().a(this);
    px.a(this.a).a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qb
 * JD-Core Version:    0.6.2
 */