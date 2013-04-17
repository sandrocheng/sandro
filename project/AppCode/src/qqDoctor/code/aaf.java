import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.service.ScreenEventReceiverEUP;
import java.util.TimerTask;

public final class aaf extends TimerTask
{
  public aaf(ScreenEventReceiverEUP paramScreenEventReceiverEUP)
  {
  }

  public final void run()
  {
    Message localMessage = ScreenEventReceiverEUP.c(this.a).obtainMessage(4);
    ScreenEventReceiverEUP.c(this.a).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aaf
 * JD-Core Version:    0.6.2
 */