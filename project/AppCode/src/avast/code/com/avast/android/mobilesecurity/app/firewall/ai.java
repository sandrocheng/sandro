package com.avast.android.mobilesecurity.app.firewall;

import android.app.ProgressDialog;
import android.support.v4.app.FragmentActivity;
import com.avast.android.mobilesecurity.app.firewall.core.b;
import com.avast.android.mobilesecurity.t;

class ai
  implements Runnable
{
  ai(ah paramah, ProgressDialog paramProgressDialog)
  {
  }

  public void run()
  {
    if (!this.b.a.isAdded());
    while (true)
    {
      return;
      if (!b.b(this.b.a.getActivity()))
      {
        this.b.a.getActivity().runOnUiThread(new aj(this));
      }
      else
      {
        FirewallSettingsFragment.b(this.b.a).i(true);
        this.b.a.getActivity().runOnUiThread(new ak(this));
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.ai
 * JD-Core Version:    0.6.2
 */