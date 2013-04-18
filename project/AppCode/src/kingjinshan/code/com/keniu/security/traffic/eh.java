package com.keniu.security.traffic;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.ListView;
import android.widget.RadioButton;
import cn.com.wali.zft.plugin;
import com.keniu.security.util.SafeViewFlipper;
import java.util.ArrayList;

final class eh
  implements View.OnClickListener
{
  eh(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TrafficZiFeiSettingActivity.c(this.a).getDisplayedChild() == 0)
    {
      this.a.finish();
      return;
    }
    if (TrafficZiFeiSettingActivity.c(this.a).getDisplayedChild() == 4)
      TrafficZiFeiSettingActivity.b(this.a).setText(2131429276);
    SafeViewFlipper localSafeViewFlipper1 = TrafficZiFeiSettingActivity.c(this.a);
    localSafeViewFlipper1.setInAnimation(TrafficZiFeiSettingActivity.a());
    SafeViewFlipper localSafeViewFlipper2 = TrafficZiFeiSettingActivity.c(this.a);
    localSafeViewFlipper2.setOutAnimation(TrafficZiFeiSettingActivity.b());
    TrafficZiFeiSettingActivity.c(this.a).showPrevious();
    TrafficZiFeiSettingActivity.a(this.a, false);
    if (TrafficZiFeiSettingActivity.c(this.a).getDisplayedChild() == 0)
    {
      TrafficZiFeiSettingActivity.d(this.a).setText(2131428627);
      TrafficZiFeiSettingActivity.b(this.a).setText(2131429276);
      TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
      ((en)TrafficZiFeiSettingActivity.f(this.a).getAdapter()).notifyDataSetChanged();
      ((en)TrafficZiFeiSettingActivity.g(this.a).getAdapter()).notifyDataSetChanged();
    }
    while (true)
    {
      TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
      ((en)TrafficZiFeiSettingActivity.f(this.a).getAdapter()).notifyDataSetChanged();
      ((en)TrafficZiFeiSettingActivity.g(this.a).getAdapter()).notifyDataSetChanged();
      break;
      if (TrafficZiFeiSettingActivity.c(this.a).getDisplayedChild() == 1)
      {
        TrafficZiFeiSettingActivity.d(this.a).setText(2131429277);
        TrafficZiFeiSettingActivity.b(this.a).setText(2131429276);
        TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
        ((en)TrafficZiFeiSettingActivity.f(this.a).getAdapter()).notifyDataSetChanged();
        ((en)TrafficZiFeiSettingActivity.g(this.a).getAdapter()).notifyDataSetChanged();
      }
      else if (TrafficZiFeiSettingActivity.c(this.a).getDisplayedChild() == 2)
      {
        TrafficZiFeiSettingActivity.d(this.a).setText(2131429277);
        TrafficZiFeiSettingActivity.b(this.a).setText(2131429276);
        TrafficZiFeiSettingActivity.b(this.a, plugin.getcarries());
        TrafficZiFeiSettingActivity.a(this.a, (String[])TrafficZiFeiSettingActivity.h(this.a).toArray(new String[TrafficZiFeiSettingActivity.h(this.a).size()]));
        String str1 = TrafficZiFeiSettingActivity.i(this.a)[0].substring(TrafficZiFeiSettingActivity.i(this.a)[0].indexOf(","), TrafficZiFeiSettingActivity.i(this.a)[0].length());
        String str2 = str1.substring(1, str1.length());
        String str3 = TrafficZiFeiSettingActivity.i(this.a)[1].substring(TrafficZiFeiSettingActivity.i(this.a)[1].indexOf(","), TrafficZiFeiSettingActivity.i(this.a)[1].length());
        String str4 = str3.substring(1, str3.length());
        String str5 = TrafficZiFeiSettingActivity.i(this.a)[2].substring(TrafficZiFeiSettingActivity.i(this.a)[2].indexOf(","), TrafficZiFeiSettingActivity.i(this.a)[2].length());
        String str6 = str5.substring(1, str5.length());
        TrafficZiFeiSettingActivity.j(this.a).setText(str2);
        TrafficZiFeiSettingActivity.k(this.a).setText(str4);
        TrafficZiFeiSettingActivity.l(this.a).setText(str6);
        TrafficZiFeiSettingActivity.a(this.a, TrafficZiFeiSettingActivity.e(this.a));
        ((en)TrafficZiFeiSettingActivity.f(this.a).getAdapter()).notifyDataSetChanged();
        ((en)TrafficZiFeiSettingActivity.g(this.a).getAdapter()).notifyDataSetChanged();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.eh
 * JD-Core Version:    0.6.2
 */