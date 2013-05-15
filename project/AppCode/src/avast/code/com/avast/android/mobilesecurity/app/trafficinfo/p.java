package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Context;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.a;
import com.avast.android.mobilesecurity.ui.widget.DayButtonRow;
import com.avast.android.mobilesecurity.ui.widget.l;

class p
  implements l
{
  p(TrafficInfoSettingsFragment paramTrafficInfoSettingsFragment)
  {
  }

  public void a(DayButtonRow paramDayButtonRow, int paramInt)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      FragmentActivity localFragmentActivity = this.a.getActivity();
      a.a(localFragmentActivity, localFragmentActivity.getString(2131493754), this.a.getString(2131492963), this.a.getString(2131492964), new q(this, paramInt), new r(this), false);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.p
 * JD-Core Version:    0.6.2
 */