package com.keniu.security.traffic;

import android.content.res.Resources;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.h.b;

final class az
  implements View.OnClickListener
{
  az(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void onClick(View paramView)
  {
    a.d(this.a, "3");
    if (TrafficMainActivity.l(this.a) != null)
    {
      if (TrafficMainActivity.l(this.a).isShowing())
        TrafficMainActivity.l(this.a).dismiss();
      TrafficMainActivity.a(this.a, null);
      return;
    }
    View localView = ((LayoutInflater)this.a.getSystemService("layout_inflater")).inflate(2130903306, null);
    TrafficMainActivity.a(this.a, new PopupWindow(localView, -1, -2));
    TrafficMainActivity.l(this.a).setAnimationStyle(16973910);
    TrafficMainActivity.l(this.a).setTouchable(true);
    int i = 70 * (int)this.a.getResources().getDisplayMetrics().density;
    TrafficMainActivity.l(this.a).showAtLocation(paramView, 80, 0, i);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131231681);
    if ((!b.a()) && (!b.a))
    {
      localLinearLayout.setVisibility(0);
      localLinearLayout.setOnClickListener(new ba(this));
    }
    while (true)
    {
      localView.findViewById(2131231682).setOnClickListener(new bb(this));
      break;
      localLinearLayout.setVisibility(8);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.az
 * JD-Core Version:    0.6.2
 */