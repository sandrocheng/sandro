package com.keniu.security.traffic;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ListView;
import android.widget.Toast;
import com.keniu.security.util.SafeViewFlipper;

final class fb
  implements View.OnClickListener
{
  fb(TrafficZiFeiSubProviceSettingActivity paramTrafficZiFeiSubProviceSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TrafficZiFeiSubProviceSettingActivity.a(this.a).getDisplayedChild() == 1)
    {
      TrafficZiFeiSubProviceSettingActivity.f(this.a).k = TrafficZiFeiSubProviceSettingActivity.g(this.a);
      TrafficZiFeiSubProviceSettingActivity.f(this.a).l = TrafficZiFeiSubProviceSettingActivity.h(this.a);
      this.a.finish();
    }
    while (true)
    {
      return;
      if (TextUtils.isEmpty(TrafficZiFeiSubProviceSettingActivity.g(this.a)))
      {
        Toast.makeText(this.a, "请选择所在省市", 1).show();
      }
      else
      {
        SafeViewFlipper localSafeViewFlipper1 = TrafficZiFeiSubProviceSettingActivity.a(this.a);
        localSafeViewFlipper1.setInAnimation(TrafficZiFeiSubProviceSettingActivity.a());
        SafeViewFlipper localSafeViewFlipper2 = TrafficZiFeiSubProviceSettingActivity.a(this.a);
        localSafeViewFlipper2.setOutAnimation(TrafficZiFeiSubProviceSettingActivity.b());
        TrafficZiFeiSubProviceSettingActivity.a(this.a).showNext();
        TrafficZiFeiSubProviceSettingActivity.a(this.a, true);
        TrafficZiFeiSubProviceSettingActivity.a(this.a, TrafficZiFeiSubProviceSettingActivity.d(this.a));
        ((fe)TrafficZiFeiSubProviceSettingActivity.i(this.a).getAdapter()).notifyDataSetChanged();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fb
 * JD-Core Version:    0.6.2
 */