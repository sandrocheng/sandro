import android.app.ActivityManager.RunningTaskInfo;
import android.os.Handler;
import com.tencent.qqpimsecure.service.ToastSuspensionWindow;

public final class ace
  implements abv.b
{
  public ace(ToastSuspensionWindow paramToastSuspensionWindow)
  {
  }

  public final void currentApp(ActivityManager.RunningTaskInfo paramRunningTaskInfo)
  {
    if ((this.a.d != null) && (this.a.f != null))
    {
      if (!this.a.d.a(paramRunningTaskInfo.topActivity))
        break label60;
      if (!this.a.g)
        this.a.h.sendEmptyMessage(2);
    }
    while (true)
    {
      return;
      label60: if (this.a.g)
        this.a.h.sendEmptyMessage(3);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ace
 * JD-Core Version:    0.6.2
 */