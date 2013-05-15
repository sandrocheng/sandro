package com.avast.android.mobilesecurity.app.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.globalactivitylog.y;
import com.avast.android.mobilesecurity.t;

class ao
  implements DialogInterface.OnClickListener
{
  ao(FirewallSettingsFragment paramFirewallSettingsFragment)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      if (paramInt == 0)
      {
        if (!FirewallSettingsFragment.b(this.a).aJ())
        {
          FirewallSettingsFragment.b(this.a).m(true);
          FirewallSettingsFragment.e(this.a);
          FirewallFragment.a(this.a.getActivity(), FirewallSettingsFragment.a);
          u.a(this.a.getActivity()).a(y.r, null, null, null, null, Long.valueOf(1L), null);
        }
      }
      else if (FirewallSettingsFragment.b(this.a).aJ())
      {
        FirewallSettingsFragment.b(this.a).m(false);
        FirewallSettingsFragment.e(this.a);
        FirewallFragment.a(this.a.getActivity(), FirewallSettingsFragment.a);
        u.a(this.a.getActivity()).a(y.r, null, null, null, null, Long.valueOf(0L), null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.ao
 * JD-Core Version:    0.6.2
 */