import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;

final class bhk extends Thread
{
  bhk(bhc parambhc)
  {
  }

  public final void run()
  {
    Bitmap localBitmap = k.b(bhc.c(this.a).d());
    Message localMessage = bhc.j(this.a).obtainMessage(100002, localBitmap);
    bhc.k(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bhk
 * JD-Core Version:    0.6.2
 */