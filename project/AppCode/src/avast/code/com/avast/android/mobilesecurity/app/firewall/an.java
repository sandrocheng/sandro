package com.avast.android.mobilesecurity.app.firewall;

import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.t;

class an
  implements c
{
  an(FirewallSettingsFragment paramFirewallSettingsFragment)
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
        if (!FirewallSettingsFragment.b(this.a).aa())
        {
          FirewallSettingsFragment.b(this.a).j(true);
          if (FirewallSettingsFragment.b(this.a).X())
            FirewallFragment.a(this.a.getActivity(), FirewallSettingsFragment.a);
        }
      }
      else if (FirewallSettingsFragment.b(this.a).aa())
      {
        FirewallSettingsFragment.b(this.a).j(false);
        if (FirewallSettingsFragment.b(this.a).X())
          FirewallFragment.a(this.a.getActivity(), FirewallSettingsFragment.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.an
 * JD-Core Version:    0.6.2
 */