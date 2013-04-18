package com.keniu.security.traffic;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RadioButton;
import cn.com.wali.zft.plugin;
import java.util.ArrayList;

final class ej
  implements AdapterView.OnItemClickListener
{
  ej(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((ep)paramView.getTag()).a.setChecked(true);
    String str = (String)TrafficZiFeiSettingActivity.z(this.a).get(paramInt);
    for (int i = 0; i < TrafficZiFeiSettingActivity.A(this.a).length; i++)
      if (TrafficZiFeiSettingActivity.A(this.a)[i].endsWith(str))
      {
        TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.A(this.a)[i]);
        TrafficZiFeiSettingActivity.a(this.a, i);
        String[] arrayOfString = (String[])plugin.getcities(Integer.valueOf(String.valueOf(TrafficZiFeiSettingActivity.r(this.a)).split(",")[0]).intValue()).toArray(new String[0]);
        TrafficZiFeiSettingActivity.w(this.a);
        if (arrayOfString.length == 1)
        {
          TrafficZiFeiSettingActivity.b(this.a, arrayOfString[0]);
          TrafficZiFeiSettingActivity.w(this.a);
          TrafficZiFeiSettingActivity.x(this.a);
        }
        TrafficZiFeiSettingActivity.d(this.a).setText(2131429277);
      }
    TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
    ((en)TrafficZiFeiSettingActivity.f(this.a).getAdapter()).notifyDataSetChanged();
    ((en)TrafficZiFeiSettingActivity.g(this.a).getAdapter()).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ej
 * JD-Core Version:    0.6.2
 */