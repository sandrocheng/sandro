import android.os.Handler;
import android.os.Message;
import org.apache.http.HttpEntity;

final class dm extends Handler
{
  dm(dl paramdl)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    this.a.a.a(paramMessage.what, (HttpEntity)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dm
 * JD-Core Version:    0.6.2
 */