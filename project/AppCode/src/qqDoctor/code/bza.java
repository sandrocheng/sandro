import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class bza extends Handler
{
  bza(Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    Runnable localRunnable = (Runnable)paramMessage.obj;
    if (localRunnable != null)
      new Thread(localRunnable).start();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bza
 * JD-Core Version:    0.6.2
 */