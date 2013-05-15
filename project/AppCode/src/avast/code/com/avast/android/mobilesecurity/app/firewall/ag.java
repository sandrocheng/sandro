package com.avast.android.mobilesecurity.app.firewall;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.NextRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.t;

class ag
  implements c
{
  ag(FirewallSettingsFragment paramFirewallSettingsFragment)
  {
  }

  public void a(CheckBoxRow paramCheckBoxRow, boolean paramBoolean)
  {
    if (!this.a.isAdded());
    while (true)
    {
      return;
      if (paramBoolean)
      {
        if (!FirewallSettingsFragment.b(this.a).Y())
        {
          FirewallSettingsFragment.b(this.a).h(true);
          if (FirewallSettingsFragment.b(this.a).X())
            FirewallFragment.a(this.a.getActivity(), FirewallSettingsFragment.a);
        }
        FirewallSettingsFragment.c(this.a).setEnabled(true);
      }
      else
      {
        if (FirewallSettingsFragment.b(this.a).Y())
        {
          FirewallSettingsFragment.b(this.a).h(false);
          if (FirewallSettingsFragment.b(this.a).X())
            FirewallFragment.a(this.a.getActivity(), FirewallSettingsFragment.a);
        }
        FirewallSettingsFragment.c(this.a).setEnabled(false);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.ag
 * JD-Core Version:    0.6.2
 */