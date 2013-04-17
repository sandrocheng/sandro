import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.uilib.view.BatteryChargingWindow;
import com.tencent.powermanager.uilib.view.BatteryScreenView;
import com.tencent.powermanager.uilib.view.fireflyView.FireflyPointLayout;

public final class do extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    int[] arrayOfInt;
    if (paramMessage.what == BatteryChargingWindow.h())
    {
      arrayOfInt = new int[2];
      if ((BatteryChargingWindow.i() != null) && (BatteryChargingWindow.a(BatteryChargingWindow.i()) != null) && (BatteryChargingWindow.b(BatteryChargingWindow.i()) != null) && (BatteryChargingWindow.c(BatteryChargingWindow.i()) != null));
    }
    while (true)
    {
      return;
      int i;
      if (ac.a == 1)
      {
        BatteryChargingWindow.b(BatteryChargingWindow.i()).getLocationInWindow(arrayOfInt);
        i = BatteryChargingWindow.b(BatteryChargingWindow.i()).getWidth();
      }
      for (int j = BatteryChargingWindow.b(BatteryChargingWindow.i()).getHeight(); ; j = BatteryChargingWindow.a(BatteryChargingWindow.i()).getHeight())
      {
        Rect localRect1 = new Rect(arrayOfInt[0], arrayOfInt[1], i + arrayOfInt[0], j + arrayOfInt[1]);
        Rect localRect2 = new Rect(arrayOfInt[0], (arrayOfInt[1] << 1) / 3, arrayOfInt[0] + i * 3 / 4, arrayOfInt[1]);
        BatteryChargingWindow.c(BatteryChargingWindow.i()).setRestrictRect(localRect1, localRect2, j + arrayOfInt[1]);
        BatteryChargingWindow.c(BatteryChargingWindow.i()).b();
        break;
        BatteryChargingWindow.a(BatteryChargingWindow.i()).getLocationInWindow(arrayOfInt);
        i = BatteryChargingWindow.a(BatteryChargingWindow.i()).getWidth();
      }
      if (paramMessage.what == BatteryChargingWindow.j())
        BatteryChargingWindow.c(BatteryChargingWindow.i()).a();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     do
 * JD-Core Version:    0.6.2
 */