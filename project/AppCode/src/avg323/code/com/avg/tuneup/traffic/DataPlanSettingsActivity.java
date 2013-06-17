package com.avg.tuneup.traffic;

import android.os.Bundle;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;

public class DataPlanSettingsActivity extends com.avg.tuneup.g
{
  a n;

  protected void g()
  {
    this.n.a();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(f.fragment_activity);
    a(true, d.ab_ic_traffic, d.ab_ic_traffic_p, getString(com.avg.a.g.data_package), false);
    if (paramBundle == null)
    {
      this.n = new a();
      a(this.n, e.middle_part, "DataPlanSettingsFragment");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.DataPlanSettingsActivity
 * JD-Core Version:    0.6.2
 */