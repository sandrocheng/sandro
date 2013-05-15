package com.avast.android.mobilesecurity.app.firewall;

import android.app.ProgressDialog;
import com.avast.android.generic.a;
import com.avast.android.generic.ui.widget.CheckBoxRow;

class aj
  implements Runnable
{
  aj(ai paramai)
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
        a.a(this.a.b.a.getActivity(), this.a.b.a.getString(2131493673));
        FirewallSettingsFragment.d(this.a.b.a).setEnabled(true);
      }
    }
    catch (Exception localException)
    {
      break label10;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.aj
 * JD-Core Version:    0.6.2
 */