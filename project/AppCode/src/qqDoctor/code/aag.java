import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.ScreenEventReceiverEUP;
import java.util.TimerTask;

public final class aag extends TimerTask
{
  public aag(ScreenEventReceiverEUP paramScreenEventReceiverEUP)
  {
  }

  public final void run()
  {
    Message localMessage = ScreenEventReceiverEUP.c(this.a).obtainMessage(3);
    ScreenEventReceiverEUP.c(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aag
 * JD-Core Version:    0.6.2
 */