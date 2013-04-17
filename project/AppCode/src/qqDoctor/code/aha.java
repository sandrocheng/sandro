import android.graphics.Bitmap;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.pickproof.PickproofAccountLoginActivity.a;
import com.tencent.tccdb.LoginUtil;

public final class aha extends Thread
{
  public aha(PickproofAccountLoginActivity.a parama)
  {
  }

  public final void run()
  {
    Bitmap localBitmap = k.b(PickproofAccountLoginActivity.a.i(this.a).f.getVerifyImageUrl());
    Message localMessage = PickproofAccountLoginActivity.a.B(this.a).obtainMessage(100004, localBitmap);
    PickproofAccountLoginActivity.a.C(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aha
 * JD-Core Version:    0.6.2
 */