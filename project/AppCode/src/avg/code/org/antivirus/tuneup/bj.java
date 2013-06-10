package org.antivirus.tuneup;

import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;

final class bj
  implements Runnable
{
  bj(TrafficMeterActivity paramTrafficMeterActivity)
  {
  }

  public final void run()
  {
    if (TrafficMeterActivity.f(this.a).getAdapter() == null)
    {
      TrafficMeterActivity.a(this.a, new b(this.a, 1, TrafficMeterActivity.e(this.a)));
      TrafficMeterActivity.f(this.a).setAdapter(TrafficMeterActivity.g(this.a));
    }
    while (true)
    {
      TrafficMeterActivity.g(this.a).notifyDataSetChanged();
      ((ProgressBar)this.a.findViewById(2131230895)).setVisibility(8);
      ((TextView)this.a.findViewById(2131230896)).setVisibility(8);
      return;
      TrafficMeterActivity.g(this.a).a(TrafficMeterActivity.e(this.a));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.tuneup.bj
 * JD-Core Version:    0.6.2
 */