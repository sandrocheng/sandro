import android.app.Notification;
import android.app.NotificationManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class bq extends Handler
{
  bq(bo.a parama, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    int i = paramMessage.arg1;
    try
    {
      switch (paramMessage.what)
      {
      case 0:
        Notification localNotification = (Notification)paramMessage.obj;
        this.a.a.notify(i, localNotification);
        if (i != 1)
          return;
        bo.a locala = this.a;
        Message localMessage = locala.b.obtainMessage(1);
        localMessage.arg1 = 1;
        locala.b.sendMessage(localMessage);
      case 1:
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    this.a.a.cancel(i);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bq
 * JD-Core Version:    0.6.2
 */