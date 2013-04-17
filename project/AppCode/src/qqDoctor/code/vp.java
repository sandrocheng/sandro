import android.app.Activity;
import android.os.Looper;

final class vp extends Thread
{
  vp(vk paramvk, lf paramlf)
  {
  }

  public final void run()
  {
    Looper.prepare();
    vk localvk = this.b;
    lf locallf = this.a;
    ((Activity)localvk.a).runOnUiThread(new vt(localvk, locallf));
    Looper.loop();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     vp
 * JD-Core Version:    0.6.2
 */