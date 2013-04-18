package com.ijinshan.kinghelper.firewall;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class cg
  implements View.OnClickListener
{
  cg(IpDialSettingsActivity paramIpDialSettingsActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, IpDialSettingPopActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.cg
 * JD-Core Version:    0.6.2
 */