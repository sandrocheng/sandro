package com.avast.android.mobilesecurity.app.firewall;

import android.app.ProgressDialog;
import com.avast.android.generic.ui.widget.CheckBoxRow;
import com.avast.android.mobilesecurity.t;

class am
  implements Runnable
{
  am(al paramal)
  {
  }

  public void run()
  {
    try
    {
      this.a.a.dismiss();
      label10: if (!this.a.b.a.isAdded());
      while (true)
      {
        return;
        FirewallSettingsFragment.d(this.a.b.a).b(false);
        FirewallSettingsFragment.d(this.a.b.a).setEnabled(true);
        if (FirewallSettingsFragment.b(this.a.b.a).X())
          FirewallFragment.a(this.a.b.a.getActivity(), FirewallSettingsFragment.a);
      }
    }
    catch (Exception localException)
    {
      break label10;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.am
 * JD-Core Version:    0.6.2
 */