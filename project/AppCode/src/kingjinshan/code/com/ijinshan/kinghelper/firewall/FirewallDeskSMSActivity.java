package com.ijinshan.kinghelper.firewall;

import android.view.Window;

public class FirewallDeskSMSActivity extends FirewallDeskSMSActivityApiLevel4
{
  public void onAttachedToWindow()
  {
    getWindow().setType(2009);
    super.onAttachedToWindow();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallDeskSMSActivity
 * JD-Core Version:    0.6.2
 */