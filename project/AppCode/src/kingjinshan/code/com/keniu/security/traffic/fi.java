package com.keniu.security.traffic;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import cn.com.wali.zft.plugin;
import com.keniu.security.util.aw;
import java.util.ArrayList;

final class fi
  implements View.OnClickListener
{
  fi(TrafficZiFeiSubSettingActivity paramTrafficZiFeiSubSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (TrafficZiFeiSubSettingActivity.b(this.a).k.equals(""))
      Toast.makeText(this.a, 2131428044, 1).show();
    while (true)
    {
      return;
      if (TrafficZiFeiSubSettingActivity.b(this.a).n.equals(""))
      {
        Toast.makeText(this.a, 2131428045, 1).show();
      }
      else
      {
        TrafficZiFeiSubSettingActivity.a(this.a, plugin.getbrands(String.valueOf(TrafficZiFeiSubSettingActivity.b(this.a).n).split(",")[0]));
        TrafficZiFeiSubSettingActivity.a(this.a, (String[])TrafficZiFeiSubSettingActivity.c(this.a).toArray(new String[0]));
        if ((!this.a.a(TrafficZiFeiSubSettingActivity.d(this.a), TrafficZiFeiSubSettingActivity.b(this.a).m)) || (TrafficZiFeiSubSettingActivity.b(this.a).m.equals("")))
        {
          Toast.makeText(this.a, 2131428046, 1).show();
        }
        else
        {
          if (TrafficZiFeiSubSettingActivity.a(this.a) == null)
            TrafficZiFeiSubSettingActivity.a(this.a, new aw());
          TrafficZiFeiSubSettingActivity.a(this.a).a(this.a, 2131428738, 2131428741);
          new fj(this).start();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fi
 * JD-Core Version:    0.6.2
 */