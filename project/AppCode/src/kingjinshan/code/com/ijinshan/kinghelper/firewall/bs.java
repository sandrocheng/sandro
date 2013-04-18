package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.keniu.security.protection.ui.PreventTheftHelpActivity;

final class bs
  implements View.OnClickListener
{
  bs(FirewallSmsLogListActivity paramFirewallSmsLogListActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, PreventTheftHelpActivity.class);
    localIntent.putExtra(PreventTheftHelpActivity.a, this.a.getString(2131427939));
    localIntent.putExtra(PreventTheftHelpActivity.b, "file:///android_asset/html/private_xieyi.html");
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.bs
 * JD-Core Version:    0.6.2
 */