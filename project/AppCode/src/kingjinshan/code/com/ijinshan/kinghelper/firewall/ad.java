package com.ijinshan.kinghelper.firewall;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.text.TextUtils;
import android.widget.Toast;
import com.ijinshan.kinghelper.firewall.a.a;

final class ad
  implements DialogInterface.OnClickListener
{
  ad(FirewallLogDetailActivity paramFirewallLogDetailActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a(this.a);
    int i;
    if (TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_SMS", FirewallLogDetailActivity.b(this.a)))
      i = a.a((int)FirewallLogDetailActivity.c(this.a));
    while (true)
    {
      FirewallLogDetailActivity localFirewallLogDetailActivity = this.a;
      if (i > 0);
      for (int j = 2131427621; ; j = 2131427623)
      {
        Toast.makeText(localFirewallLogDetailActivity, j, 0).show();
        this.a.finish();
        return;
        if (!TextUtils.equals("FirewallLogDetailActivity_LOG_TYPE_CALL", FirewallLogDetailActivity.b(this.a)))
          break label104;
        i = a.b((int)FirewallLogDetailActivity.c(this.a));
        break;
      }
      label104: i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ad
 * JD-Core Version:    0.6.2
 */