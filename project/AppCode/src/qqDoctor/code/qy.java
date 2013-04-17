import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.ConnectionDetector;

public final class qy extends Handler
{
  public qy(ConnectionDetector paramConnectionDetector)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    ConnectionDetector localConnectionDetector1 = this.a;
    ConnectionDetector.a(this.a);
    ConnectionDetector.b(localConnectionDetector1);
    ConnectionDetector localConnectionDetector2 = this.a;
    ConnectionDetector.a(this.a);
    ConnectionDetector.c(localConnectionDetector2);
    ff.a("kfc", "ConnectionDetector, connection become active, updateConfigsAsyn");
    wr.a(ConnectionDetector.a(this.a)).a(true);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     qy
 * JD-Core Version:    0.6.2
 */