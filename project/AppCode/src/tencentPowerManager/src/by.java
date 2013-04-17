import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.service.BatteryEventReceiver.a;

public final class by
  implements bx, BatteryEventReceiver.a
{
  public static by a;
  private Handler b = new bz();

  public final void a(double paramDouble)
  {
    Message localMessage = Message.obtain();
    localMessage.obj = Double.valueOf(paramDouble);
    this.b.sendMessageAtTime(localMessage, 20L);
  }

  public final void a(Intent paramIntent)
  {
    this.b.sendEmptyMessageDelayed(0, 20L);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     by
 * JD-Core Version:    0.6.2
 */