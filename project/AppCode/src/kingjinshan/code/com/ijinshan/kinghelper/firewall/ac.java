package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;

final class ac
  implements DialogInterface.OnClickListener
{
  ac(FirewallLogDetailActivity paramFirewallLogDetailActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", FirewallLogDetailActivity.b(this.a)))
      FirewallLogDetailActivity.a(this.a, paramInt);
    while (true)
    {
      return;
      FirewallLogDetailActivity.b(this.a, paramInt);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ac
 * JD-Core Version:    0.6.2
 */