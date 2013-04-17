import android.os.Handler;
import android.os.Message;

final class ws extends Handler
{
  ws(wr paramwr)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (1 == paramMessage.what)
      wr.a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     ws
 * JD-Core Version:    0.6.2
 */