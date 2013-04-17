import android.hardware.Camera;
import android.hardware.Camera.AutoFocusCallback;
import android.os.Handler;
import android.os.Message;

public final class c
  implements Camera.AutoFocusCallback
{
  private Handler a;
  private int b;

  public final void a(Handler paramHandler, int paramInt)
  {
    this.a = paramHandler;
    this.b = paramInt;
  }

  public final void onAutoFocus(boolean paramBoolean, Camera paramCamera)
  {
    if (this.a == null);
    while (true)
    {
      return;
      Message localMessage = this.a.obtainMessage(this.b, Boolean.valueOf(paramBoolean));
      this.a.sendMessageDelayed(localMessage, 1500L);
      this.a = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     c
 * JD-Core Version:    0.6.2
 */