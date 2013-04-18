package com.keniu.security.traffic;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

final class ev
  implements View.OnClickListener
{
  ev(TrafficZiFeiSubBrandSettingActivity paramTrafficZiFeiSubBrandSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TextUtils.isEmpty(TrafficZiFeiSubBrandSettingActivity.e(this.a)))
      Toast.makeText(this.a, "请选择品牌", 1).show();
    while (true)
    {
      return;
      TrafficZiFeiSubBrandSettingActivity.f(this.a).m = TrafficZiFeiSubBrandSettingActivity.e(this.a);
      this.a.finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ev
 * JD-Core Version:    0.6.2
 */