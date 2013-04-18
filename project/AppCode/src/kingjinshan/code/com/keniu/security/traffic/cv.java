package com.keniu.security.traffic;

import android.widget.RadioGroup;
import android.widget.RadioGroup.OnCheckedChangeListener;
import java.util.Vector;

final class cv
  implements RadioGroup.OnCheckedChangeListener
{
  cv(TrafficSoftListActivity2 paramTrafficSoftListActivity2)
  {
  }

  public final void onCheckedChanged(RadioGroup paramRadioGroup, int paramInt)
  {
    if ((TrafficSoftListActivity2.a(this.a) != null) && (TrafficSoftListActivity2.a(this.a).size() > 0))
      switch (paramInt)
      {
      default:
      case 2131231714:
      case 2131231715:
      }
    while (true)
    {
      return;
      TrafficSoftListActivity2.a(this.a, true);
      if (TrafficSoftListActivity2.b(this.a) != null)
      {
        TrafficSoftListActivity2.b(this.a).a(TrafficSoftListActivity2.a(this.a));
        TrafficSoftListActivity2.b(this.a).notifyDataSetChanged();
        continue;
        if ((TrafficSoftListActivity2.c(this.a) != null) && (TrafficSoftListActivity2.c(this.a).size() > 0))
        {
          TrafficSoftListActivity2.a(this.a, false);
          if (TrafficSoftListActivity2.b(this.a) != null)
          {
            TrafficSoftListActivity2.b(this.a).a(TrafficSoftListActivity2.c(this.a));
            TrafficSoftListActivity2.b(this.a).notifyDataSetChanged();
          }
        }
        else
        {
          TrafficSoftListActivity2.d(this.a);
          continue;
          TrafficSoftListActivity2.e(this.a);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cv
 * JD-Core Version:    0.6.2
 */