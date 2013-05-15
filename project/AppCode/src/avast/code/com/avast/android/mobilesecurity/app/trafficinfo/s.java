package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Context;
import android.content.Intent;
import android.os.Build.VERSION;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.a;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.ui.widget.DayButtonRow;

class s
  implements c
{
  s(TrafficInfoSettingsFragment paramTrafficInfoSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      if ((TrafficInfoSettingsFragment.b(this.a).aK()) && (NetworkStatsService.c()));
      for (boolean bool = true; ; bool = false)
      {
        if (paramBoolean == bool)
          break label99;
        if ((!paramBoolean) || (Build.VERSION.SDK_INT >= 8))
          break label101;
        TrafficInfoSettingsFragment.c(this.a).b(false);
        this.a.a("ms-Settings", "networkMeterEnabled", "Android 2.2 or higher required", 0L);
        a.a(this.a.getActivity(), this.a.getString(2131493724));
        break;
      }
      label99: continue;
      label101: if ((paramBoolean) && (!NetworkStatsService.c()))
      {
        TrafficInfoSettingsFragment.c(this.a).b(false);
        this.a.a("ms-Settings", "networkMeterEnabled", "Network Meter API not supported/implemented", 0L);
        a.a(this.a.getActivity(), this.a.getString(2131493725));
      }
      else
      {
        FragmentActivity localFragmentActivity = this.a.getActivity();
        if (paramBoolean)
        {
          TrafficInfoSettingsFragment.b(this.a).n(true);
          TrafficInfoSettingsFragment.a(this.a).setEnabled(true);
          this.a.a("ms-Settings", "networkMeterEnabled", null, 1L);
          NetworkStatsService.a(localFragmentActivity);
          Intent localIntent = new Intent("com.avast.android.mobilesecurity.action.NETWORK_STATS_POLL");
          NetworkStatsService.a(this.a.getActivity(), localIntent);
          com.avast.android.mobilesecurity.app.globalactivitylog.u.a(this.a.getActivity()).a(y.w, null, null, null, null, null, null);
        }
        else
        {
          TrafficInfoSettingsFragment.c(this.a).b(true);
          a.a(localFragmentActivity, localFragmentActivity.getString(2131493749), this.a.getString(2131492963), this.a.getString(2131492964), new t(this, localFragmentActivity), new u(this), false);
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.s
 * JD-Core Version:    0.6.2
 */