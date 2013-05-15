package com.avast.android.mobilesecurity.app.firewall;

import android.view.View;
import android.view.View.OnClickListener;

class q
  implements View.OnClickListener
{
  q(FirewallFragment paramFirewallFragment)
  {
  }

  public void onClick(View paramView)
  {
    CustomRulesActivity.call(this.a.getActivity());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.firewall.q
 * JD-Core Version:    0.6.2
 */