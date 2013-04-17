import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;

final class bgi extends Thread
{
  bgi(bfy parambfy)
  {
  }

  public final void run()
  {
    Bitmap localBitmap = k.b(bfy.d(this.a).d());
    Message localMessage = bfy.k(this.a).obtainMessage(100002, localBitmap);
    bfy.l(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bgi
 * JD-Core Version:    0.6.2
 */