import android.graphics.Point;
import android.hardware.Camera;
import android.hardware.Camera.PreviewCallback;
import android.os.Handler;
import android.os.Message;

public final class d
  implements Camera.PreviewCallback
{
  private final a a;
  private Handler b;
  private int c;

  d(a parama)
  {
    this.a = parama;
  }

  public final void a(Handler paramHandler, int paramInt)
  {
    this.b = paramHandler;
    this.c = paramInt;
  }

  public final void onPreviewFrame(byte[] paramArrayOfByte, Camera paramCamera)
  {
    if (this.b == null);
    while (true)
    {
      return;
      Point localPoint = this.a.b;
      this.b.obtainMessage(this.c, localPoint.x, localPoint.y, paramArrayOfByte).sendToTarget();
      this.b = null;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     d
 * JD-Core Version:    0.6.2
 */