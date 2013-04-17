import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.qqpimsecure.ui.activity.MainActivity;
import com.tencent.qqpimsecure.ui.activity.UninstallWarningActivity;

public final class adq extends Handler
{
  public adq(MainActivity paramMainActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    }
    while (true)
    {
      return;
      Intent localIntent = new Intent();
      localIntent.setClass(this.a, UninstallWarningActivity.class);
      localIntent.addFlags(268435456);
      this.a.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     adq
 * JD-Core Version:    0.6.2
 */