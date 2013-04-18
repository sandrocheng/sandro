package com.keniu.security.traffic;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import android.widget.RadioButton;
import java.util.ArrayList;

final class fd
  implements AdapterView.OnItemClickListener
{
  fd(TrafficZiFeiSubProviceSettingActivity paramTrafficZiFeiSubProviceSettingActivity)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((fg)paramView.getTag()).a.setChecked(true);
    String str = (String)TrafficZiFeiSubProviceSettingActivity.j(this.a).get(paramInt);
    for (int i = 0; i < TrafficZiFeiSubProviceSettingActivity.m(this.a).length; i++)
      if (TrafficZiFeiSubProviceSettingActivity.m(this.a)[i].endsWith(str))
        TrafficZiFeiSubProviceSettingActivity.b(this.a, TrafficZiFeiSubProviceSettingActivity.m(this.a)[i]);
    ((fe)TrafficZiFeiSubProviceSettingActivity.i(this.a).getAdapter()).notifyDataSetChanged();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fd
 * JD-Core Version:    0.6.2
 */