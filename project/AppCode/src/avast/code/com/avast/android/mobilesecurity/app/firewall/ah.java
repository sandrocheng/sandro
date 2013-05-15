package com.avast.android.mobilesecurity.app.firewall;

import android.app.ProgressDialog;
import android.support.v4.app.FragmentActivity;
import com.avast.android.generic.a;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.generic.ui.widget.c;
import com.avast.android.mobilesecurity.t;
import java.io.File;

class ah
  implements c
{
  ah(FirewallSettingsFragment paramFirewallSettingsFragment)
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
        if (!FirewallSettingsFragment.b(this.a).Z())
          if (new File("/system/bin/ip6tables").exists())
          {
            FirewallSettingsFragment.d(this.a).b(false);
            FirewallSettingsFragment.d(this.a).setEnabled(false);
            new Thread(new ai(this, ProgressDialog.show(this.a.getActivity(), "", this.a.getActivity().getString(2131493661), true))).start();
          }
          else
          {
            FirewallSettingsFragment.d(this.a).b(false);
            a.a(this.a.getActivity(), this.a.getString(2131493690));
          }
      }
      else if (FirewallSettingsFragment.b(this.a).Z())
        new Thread(new al(this, ProgressDialog.show(this.a.getActivity(), "", this.a.getActivity().getString(2131493661), true))).start();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.ah
 * JD-Core Version:    0.6.2
 */