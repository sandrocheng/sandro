import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class pd extends Handler
{
  pd(pc parampc, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      return;
      if (this.a.a != null)
      {
        yk localyk2 = this.a.a;
        localyk2.b = ((int)(1000L + localyk2.b));
        if (localyk2.b >= 60000)
        {
          localyk2.b = 0;
          localyk2.a();
        }
        if ((this.a.a != null) && (!this.a.a.c))
        {
          pc.a(this.a).sendEmptyMessageDelayed(1, 1000L);
          continue;
          if (this.a.a != null)
          {
            yk localyk1 = this.a.a;
            localyk1.b = 0;
            localyk1.c = false;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pd
 * JD-Core Version:    0.6.2
 */