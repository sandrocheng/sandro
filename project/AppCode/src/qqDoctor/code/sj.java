import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class sj extends Handler
{
  sj(si paramsi, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    this.a.b((lu)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     sj
 * JD-Core Version:    0.6.2
 */