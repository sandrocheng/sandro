import android.os.Handler;
import android.os.Message;

final class oe extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    mp localmp = (mp)paramMessage.obj;
    if (localmp.i != null)
      localmp.i.onTaskFinish(localmp);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     oe
 * JD-Core Version:    0.6.2
 */