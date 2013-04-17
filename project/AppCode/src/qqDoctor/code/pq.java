import android.os.Handler;
import android.os.Message;
import com.tencent.tmsecure.module.urlcheck.UrlCheckManager;
import java.net.URL;

final class pq
  implements Runnable
{
  pq(po.c paramc)
  {
  }

  public final void run()
  {
    this.a.d.a = this.a.m.a.checkUrl(this.a.b.toString());
    Message localMessage = this.a.l.obtainMessage(1);
    this.a.l.sendMessageDelayed(localMessage, 100L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     pq
 * JD-Core Version:    0.6.2
 */