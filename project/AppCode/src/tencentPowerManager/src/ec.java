import android.os.Handler;
import android.os.Message;
import com.tencent.powermanager.uilib.view.BatteryModeSwitchView;
import com.tencent.powermanager.view.PowerManagerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class ec extends Handler
{
  public ec(PowerManagerView paramPowerManagerView)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    PowerManagerView.b(this.a).removeAll(PowerManagerView.e(this.a));
    PowerManagerView.e(this.a).clear();
    Iterator localIterator = PowerManagerView.f(this.a).iterator();
    while (localIterator.hasNext())
    {
      bf localbf = (bf)localIterator.next();
      dg localdg = new dg();
      localdg.a = localbf.a;
      localdg.c = localbf.b;
      PowerManagerView.e(this.a).add(localdg);
    }
    PowerManagerView.b(this.a).addAll(-1 + PowerManagerView.b(this.a).size(), PowerManagerView.e(this.a));
    PowerManagerView.g(this.a);
    PowerManagerView.h(this.a).setDataList(PowerManagerView.b(this.a));
    PowerManagerView.h(this.a).a();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ec
 * JD-Core Version:    0.6.2
 */