package com.keniu.security.traffic;

import android.text.TextUtils;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;

final class ex
  implements View.OnClickListener
{
  ex(TrafficZiFeiSubOperatorSettingActivity paramTrafficZiFeiSubOperatorSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TextUtils.isEmpty(TrafficZiFeiSubOperatorSettingActivity.a(this.a)))
      Toast.makeText(this.a, "请选择运营商", 1).show();
    while (true)
    {
      return;
      TrafficZiFeiSubOperatorSettingActivity.b(this.a).n = TrafficZiFeiSubOperatorSettingActivity.a(this.a);
      this.a.finish();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ex
 * JD-Core Version:    0.6.2
 */