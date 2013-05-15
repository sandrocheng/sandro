package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.ui.widget.DayButtonRow;

class t
  implements DialogInterface.OnClickListener
{
  t(s params, Context paramContext)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!this.b.a.isAdded());
    while (true)
    {
      return;
      TrafficInfoSettingsFragment.b(this.b.a).n(false);
      TrafficInfoSettingsFragment.c(this.b.a).b(false);
      TrafficInfoSettingsFragment.a(this.b.a).setEnabled(false);
      this.b.a.a("ms-Settings", "networkMeterEnabled", null, 0L);
      NetworkStatsService.a(this.a);
      Intent localIntent = new Intent("com.avast.android.mobilesecurity.action.CLEAN_DATA");
      NetworkStatsService.a(this.b.a.getActivity(), localIntent);
      u.a(this.b.a.getActivity()).a(y.x, null, null, null, null, null, null);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.t
 * JD-Core Version:    0.6.2
 */