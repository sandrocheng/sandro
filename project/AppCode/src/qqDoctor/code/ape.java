import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;

final class ape extends Thread
{
  ape(aou paramaou, String paramString)
  {
  }

  public final void run()
  {
    Bitmap localBitmap = aou.a(k.b(this.a + ".jpg"));
    Message localMessage = aou.B(this.b).obtainMessage(501, localBitmap);
    aou.B(this.b).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ape
 * JD-Core Version:    0.6.2
 */