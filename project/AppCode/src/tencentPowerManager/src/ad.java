import android.content.Intent;
import com.tencent.powermanager.service.BatteryEventReceiver.a;
import com.tencent.powermanager.uilib.view.BatteryChargingWindow;

final class ad
  implements BatteryEventReceiver.a
{
  public final void a(Intent paramIntent)
  {
    int i = 100;
    if (paramIntent.getIntExtra("status", 1) != 2)
    {
      ac.d();
      return;
    }
    int j = paramIntent.getIntExtra("level", 0);
    int k = paramIntent.getIntExtra("scale", i);
    int m = j * 100 / k;
    if (m > i);
    while (true)
    {
      BatteryChargingWindow.b(i);
      break;
      i = m;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ad
 * JD-Core Version:    0.6.2
 */