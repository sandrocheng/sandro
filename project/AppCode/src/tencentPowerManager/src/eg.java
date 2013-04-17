import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.powermanager.uilib.view.BatteryModeSwitchView;
import com.tencent.powermanager.view.PowerManagerView;

public final class eg
  implements View.OnClickListener
{
  public eg(PowerManagerView paramPowerManagerView, int paramInt, de paramde)
  {
  }

  public final void onClick(View paramView)
  {
    PowerManagerView.i(this.c).a(PowerManagerView.t(this.c), this.a, PowerManagerView.a(this.c, this.a));
    PowerManagerView.g(this.c);
    PowerManagerView.h(this.c).setDataList(PowerManagerView.b(this.c));
    PowerManagerView.h(this.c).a();
    this.b.dismiss();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     eg
 * JD-Core Version:    0.6.2
 */