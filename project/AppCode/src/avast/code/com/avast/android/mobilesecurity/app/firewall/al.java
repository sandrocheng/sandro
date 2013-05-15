package com.avast.android.mobilesecurity.app.firewall;

import android.app.ProgressDialog;
import android.support.v4.app.FragmentActivity;
import com.avast.android.mobilesecurity.app.firewall.core.b;
import com.avast.android.mobilesecurity.t;

class al
  implements Runnable
{
  al(ah paramah, ProgressDialog paramProgressDialog)
  {
  }

  public void run()
  {
    if (!this.b.a.isAdded());
    while (true)
    {
      return;
      b.b(this.b.a.getActivity(), null);
      FirewallSettingsFragment.b(this.b.a).i(false);
      this.b.a.getActivity().runOnUiThread(new am(this));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.al
 * JD-Core Version:    0.6.2
 */