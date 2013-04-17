import android.os.Handler;
import android.os.Message;

final class au extends Handler
{
  au(at paramat)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    dk.b("Login", "handleMessage enter ");
    super.handleMessage(paramMessage);
    switch (paramMessage.what)
    {
    default:
    case 8202:
    case 8193:
    case 8196:
    case 8195:
    case 36868:
    case 36869:
    case 36870:
    }
    while (true)
    {
      dk.b("Login", "handleMessage leave ");
      return;
      new at.a(this.a, (byte)0).start();
      continue;
      at.a(this.a, paramMessage.what, paramMessage.arg1);
      continue;
      at.a(this.a, paramMessage.what, paramMessage.arg1);
      continue;
      at.a(this.a, paramMessage.what, paramMessage.arg1);
      continue;
      this.a.e.sendEmptyMessage(8202);
      continue;
      Message localMessage = this.a.d.obtainMessage(8199, paramMessage.arg1, 0, paramMessage.obj);
      this.a.d.sendMessage(localMessage);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     au
 * JD-Core Version:    0.6.2
 */