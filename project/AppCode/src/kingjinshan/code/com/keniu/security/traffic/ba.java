package com.keniu.security.traffic;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;
import com.jxphone.mosecurity.a.a;

final class ba
  implements View.OnClickListener
{
  ba(az paramaz)
  {
  }

  public final void onClick(View paramView)
  {
    if (TrafficMainActivity.l(this.a.a) != null)
    {
      if (TrafficMainActivity.l(this.a.a).isShowing())
        TrafficMainActivity.l(this.a.a).dismiss();
      TrafficMainActivity.a(this.a.a, null);
    }
    a.d(this.a.a, "1");
    a.d(this.a.a, "8");
    TrafficMainActivity.m(this.a.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ba
 * JD-Core Version:    0.6.2
 */