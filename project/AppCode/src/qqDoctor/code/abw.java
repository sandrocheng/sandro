import android.app.ActivityManager.RunningTaskInfo;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.List;

final class abw extends Handler
{
  abw(abv paramabv, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      return;
      if ((paramMessage.obj instanceof List))
      {
        List localList = (List)paramMessage.obj;
        abv.a(this.a, localList);
        continue;
        ActivityManager.RunningTaskInfo localRunningTaskInfo = (ActivityManager.RunningTaskInfo)paramMessage.obj;
        abv.a(this.a, localRunningTaskInfo);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     abw
 * JD-Core Version:    0.6.2
 */