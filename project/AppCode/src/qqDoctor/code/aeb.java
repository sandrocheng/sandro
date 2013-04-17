import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.SplashActivity;

public final class aeb extends Handler
{
  public aeb(SplashActivity paramSplashActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    SplashActivity.a(this.a);
    super.handleMessage(paramMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     aeb
 * JD-Core Version:    0.6.2
 */