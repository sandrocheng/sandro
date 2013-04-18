package com.keniu.security.traffic;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

final class bb
  implements View.OnClickListener
{
  bb(az paramaz)
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
    Intent localIntent = new Intent();
    localIntent.setClass(this.a.a, TrafficAdjustByHandActivity.class);
    if (TrafficMainActivity.n(this.a.a) != null)
      localIntent.putExtra("month_used", TrafficMainActivity.n(this.a.a).g);
    this.a.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bb
 * JD-Core Version:    0.6.2
 */