package com.keniu.security.traffic;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.RadioButton;
import com.keniu.security.util.SafeViewFlipper;
import java.util.ArrayList;

final class ek
  implements AdapterView.OnItemClickListener
{
  ek(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((ep)paramView.getTag()).a.setChecked(true);
    String str = (String)TrafficZiFeiSettingActivity.z(this.a).get(paramInt);
    for (int i = 0; i < TrafficZiFeiSettingActivity.B(this.a).length; i++)
      if (TrafficZiFeiSettingActivity.B(this.a)[i].endsWith(str))
      {
        TrafficZiFeiSettingActivity.b(this.a, TrafficZiFeiSettingActivity.B(this.a)[i]);
        TrafficZiFeiSettingActivity.c(this.a).showNext();
      }
    TrafficZiFeiSettingActivity.x(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ek
 * JD-Core Version:    0.6.2
 */