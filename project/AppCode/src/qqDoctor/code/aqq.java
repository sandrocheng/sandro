import android.os.Handler;
import android.os.Message;

final class aqq
  implements Runnable
{
  aqq(aqp paramaqp)
  {
  }

  public final void run()
  {
    int i = aqo.d(this.a.a);
    Message localMessage = aqo.e(this.a.a).obtainMessage(1);
    localMessage.arg1 = i;
    aqo.e(this.a.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aqq
 * JD-Core Version:    0.6.2
 */