import android.os.Handler;
import android.os.Message;

final class av extends Thread
{
  av(at paramat, String paramString1, String paramString2)
  {
  }

  public final void run()
  {
    int i = this.a.c.a(this.b, de.a(this.c));
    dk.b("Login", "pimpwd  return value : " + i);
    Message localMessage = this.a.e.obtainMessage(8196, i, i, null);
    this.a.e.sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     av
 * JD-Core Version:    0.6.2
 */