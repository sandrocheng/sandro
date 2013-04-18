package com.keniu.security.traffic;

import android.text.TextUtils;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.RadioButton;
import cn.com.wali.zft.plugin;
import com.keniu.security.util.SafeViewFlipper;
import java.util.ArrayList;

final class fc
  implements AdapterView.OnItemClickListener
{
  fc(TrafficZiFeiSubProviceSettingActivity paramTrafficZiFeiSubProviceSettingActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((fg)paramView.getTag()).a.setChecked(true);
    String str = (String)TrafficZiFeiSubProviceSettingActivity.j(this.a).get(paramInt);
    int i = 0;
    while (i < TrafficZiFeiSubProviceSettingActivity.k(this.a).length)
    {
      if (TrafficZiFeiSubProviceSettingActivity.k(this.a)[i].endsWith(str))
      {
        TrafficZiFeiSubProviceSettingActivity.a(this.a, TrafficZiFeiSubProviceSettingActivity.k(this.a)[i]);
        TrafficZiFeiSubProviceSettingActivity.a(this.a, i);
        TrafficZiFeiSubProviceSettingActivity.b(this.a, plugin.getcities(Integer.valueOf(String.valueOf(TrafficZiFeiSubProviceSettingActivity.g(this.a)).split(",")[0]).intValue()));
        TrafficZiFeiSubProviceSettingActivity.a(this.a, (String[])TrafficZiFeiSubProviceSettingActivity.l(this.a).toArray(new String[0]));
        if (TrafficZiFeiSubProviceSettingActivity.m(this.a).length == 1)
        {
          TrafficZiFeiSubProviceSettingActivity.f(this.a).k = TrafficZiFeiSubProviceSettingActivity.g(this.a);
          TrafficZiFeiSubProviceSettingActivity.f(this.a).l = TrafficZiFeiSubProviceSettingActivity.m(this.a)[0];
          this.a.finish();
        }
      }
      else
      {
        i++;
        continue;
      }
      if (TextUtils.isEmpty(TrafficZiFeiSubProviceSettingActivity.h(this.a)))
        TrafficZiFeiSubProviceSettingActivity.b(this.a, TrafficZiFeiSubProviceSettingActivity.m(this.a)[0]);
      while (true)
      {
        SafeViewFlipper localSafeViewFlipper1 = TrafficZiFeiSubProviceSettingActivity.a(this.a);
        localSafeViewFlipper1.setInAnimation(TrafficZiFeiSubProviceSettingActivity.a());
        SafeViewFlipper localSafeViewFlipper2 = TrafficZiFeiSubProviceSettingActivity.a(this.a);
        localSafeViewFlipper2.setOutAnimation(TrafficZiFeiSubProviceSettingActivity.b());
        TrafficZiFeiSubProviceSettingActivity.a(this.a).showNext();
        break;
        if (!this.a.a(TrafficZiFeiSubProviceSettingActivity.m(this.a), TrafficZiFeiSubProviceSettingActivity.h(this.a)))
          TrafficZiFeiSubProviceSettingActivity.b(this.a, TrafficZiFeiSubProviceSettingActivity.m(this.a)[0]);
      }
    }
    TrafficZiFeiSubProviceSettingActivity.a(this.a, TrafficZiFeiSubProviceSettingActivity.d(this.a));
    ((fe)TrafficZiFeiSubProviceSettingActivity.i(this.a).getAdapter()).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fc
 * JD-Core Version:    0.6.2
 */