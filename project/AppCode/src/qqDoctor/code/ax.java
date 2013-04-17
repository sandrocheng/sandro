import android.os.Handler;
import android.os.Looper;
import android.os.Message;

final class ax extends Handler
{
  ax(aw paramaw, Looper paramLooper)
  {
    super(paramLooper);
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 8204:
    case 8205:
    case 8206:
    default:
    case 8203:
    case 8207:
    case 8208:
    }
    while (true)
    {
      return;
      aw localaw3 = this.a;
      if (localaw3.b != null)
      {
        Message localMessage3 = localaw3.b.obtainMessage(8218, 4098, 8203);
        localaw3.b.sendMessage(localMessage3);
        continue;
        aw localaw2 = this.a;
        if (localaw2.b != null)
        {
          Message localMessage2 = localaw2.b.obtainMessage(8218, 4098, 8207);
          localaw2.b.sendMessage(localMessage2);
          continue;
          aw localaw1 = this.a;
          if (localaw1.b != null)
          {
            Message localMessage1 = localaw1.b.obtainMessage(8218, 4098, 8208);
            localaw1.b.sendMessage(localMessage1);
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ax
 * JD-Core Version:    0.6.2
 */