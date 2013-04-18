package com.keniu.security.traffic;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import com.keniu.security.util.SafeViewFlipper;

final class fa
  implements View.OnClickListener
{
  fa(TrafficZiFeiSubProviceSettingActivity paramTrafficZiFeiSubProviceSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TrafficZiFeiSubProviceSettingActivity.a(this.a).getDisplayedChild() == 0)
      this.a.finish();
    while (true)
    {
      return;
      SafeViewFlipper localSafeViewFlipper1 = TrafficZiFeiSubProviceSettingActivity.a(this.a);
      localSafeViewFlipper1.setInAnimation(TrafficZiFeiSubProviceSettingActivity.c());
      SafeViewFlipper localSafeViewFlipper2 = TrafficZiFeiSubProviceSettingActivity.a(this.a);
      localSafeViewFlipper2.setOutAnimation(TrafficZiFeiSubProviceSettingActivity.d());
      TrafficZiFeiSubProviceSettingActivity.a(this.a).showPrevious();
      TrafficZiFeiSubProviceSettingActivity.a(this.a, false);
      TrafficZiFeiSubProviceSettingActivity.b(this.a).setText(2131428627);
      TrafficZiFeiSubProviceSettingActivity.c(this.a).setText(2131429276);
      TrafficZiFeiSubProviceSettingActivity.a(this.a, TrafficZiFeiSubProviceSettingActivity.d(this.a));
      ((fe)TrafficZiFeiSubProviceSettingActivity.e(this.a).getAdapter()).notifyDataSetChanged();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fa
 * JD-Core Version:    0.6.2
 */