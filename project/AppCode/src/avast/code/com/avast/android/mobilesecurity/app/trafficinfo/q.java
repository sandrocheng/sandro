package com.avast.android.mobilesecurity.app.trafficinfo;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import com.avast.android.mobilesecurity.t;
import com.avast.android.mobilesecurity.ui.widget.DayButtonRow;

class q
  implements DialogInterface.OnClickListener
{
  q(p paramp, int paramInt)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!this.b.a.isAdded());
    while (true)
    {
      return;
      TrafficInfoSettingsFragment.a(this.b.a).a(this.a);
      TrafficInfoSettingsFragment.b(this.b.a).g(this.a);
      Intent localIntent = new Intent("com.avast.android.mobilesecurity.action.CLEAN_DATA");
      NetworkStatsService.a(this.b.a.getActivity(), localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.trafficinfo.q
 * JD-Core Version:    0.6.2
 */