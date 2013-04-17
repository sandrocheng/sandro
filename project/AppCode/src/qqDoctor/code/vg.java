import android.content.Context;
import android.content.Intent;
import com.tencent.qqpimsecure.service.SecureService;

final class vg
  implements Runnable
{
  vg(ve paramve)
  {
  }

  public final void run()
  {
    if (!ve.c())
      ve.b(this.a).f(false);
    Intent localIntent = new Intent();
    localIntent.setClass(ve.e(this.a), SecureService.class);
    localIntent.setAction("switch_suspession_window");
    ve.e(this.a).startService(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vg
 * JD-Core Version:    0.6.2
 */