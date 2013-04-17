import android.content.BroadcastReceiver;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class wi extends Handler
{
  wi(wh paramwh, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    }
    while (true)
    {
      return;
      if (this.a.g == null)
        continue;
      BroadcastReceiver localBroadcastReceiver = this.a.g;
      try
      {
        this.a.b.unregisterReceiver(this.a.g);
        try
        {
          this.a.g = null;
          this.a.f = null;
        }
        finally
        {
        }
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          this.a.g = null;
          this.a.f = null;
        }
      }
      finally
      {
        this.a.g = null;
        this.a.f = null;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     wi
 * JD-Core Version:    0.6.2
 */