package com.keniu.security.traffic;

import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.EditText;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class ec
  implements View.OnClickListener
{
  ec(TrafficZiFeiSettingActivity paramTrafficZiFeiSettingActivity)
  {
  }

  public final void onClick(View paramView)
  {
    View localView = this.a.getLayoutInflater().inflate(2130903080, null);
    TrafficZiFeiSettingActivity.a(this.a, (EditText)localView.findViewById(2131230956));
    TrafficZiFeiSettingActivity.a(this.a).setText(as.a(this.a));
    aq localaq = new aq(this.a, (byte)0);
    localaq.a(2131428020);
    localaq.a(localView);
    localaq.a(2131428022, new ed(this));
    localaq.b(2131428266, null);
    localaq.c().show();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ec
 * JD-Core Version:    0.6.2
 */