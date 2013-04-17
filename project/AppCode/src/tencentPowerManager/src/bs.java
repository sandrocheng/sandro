import android.content.Intent;
import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.service.BatteryEventReceiver;
import com.tencent.powermanager.service.BatteryEventReceiver.a;
import java.util.Iterator;
import java.util.List;

public final class bs extends Handler
{
  public final void handleMessage(Message paramMessage)
  {
    try
    {
      if (paramMessage.what == BatteryEventReceiver.a())
      {
        Iterator localIterator = BatteryEventReceiver.b().iterator();
        while (localIterator.hasNext())
          ((BatteryEventReceiver.a)localIterator.next()).a((Intent)paramMessage.obj);
      }
    }
    finally
    {
    }
    if (paramMessage.what == BatteryEventReceiver.c())
      BatteryEventReceiver.b().remove((BatteryEventReceiver.a)paramMessage.obj);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     bs
 * JD-Core Version:    0.6.2
 */