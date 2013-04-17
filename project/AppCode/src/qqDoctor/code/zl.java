import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class zl extends Handler
{
  zl(zk paramzk, Looper paramLooper)
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
    case 3:
    case 4:
    }
    while (true)
    {
      return;
      if (((paramMessage.obj instanceof zk.a)) && (this.a.a != null))
      {
        zk.a locala = (zk.a)paramMessage.obj;
        int i = locala.b;
        long l = locala.c;
        this.a.a.CleanEstimateComplete(i, l);
        continue;
        this.a.a.CleanFinish();
        continue;
        this.a.a.BestNow();
        continue;
        new Thread(new zm(this)).start();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     zl
 * JD-Core Version:    0.6.2
 */