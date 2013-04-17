import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.SyncQQAccountLoginActivity.a;

public final class afa extends Thread
{
  public afa(SyncQQAccountLoginActivity.a parama)
  {
  }

  public final void run()
  {
    Bitmap localBitmap = k.b(SyncQQAccountLoginActivity.a.n(this.a).d());
    Message localMessage = SyncQQAccountLoginActivity.a.o(this.a).obtainMessage(100002, localBitmap);
    SyncQQAccountLoginActivity.a.o(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     afa
 * JD-Core Version:    0.6.2
 */