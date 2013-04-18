package com.ijinshan.kinghelper.firewall.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ijinshan.kinghelper.firewall.dd;

public class FirewallHideNumberTipDialog extends BroadcastReceiver
{
  public static String a = "com.ijinshan.kinghelper.firewall.core.FirewallHideNumberTipDialog";
  private c b = null;

  public static void a(Context paramContext)
  {
    dd.a(paramContext);
    if (!dd.u())
    {
      Intent localIntent = new Intent();
      localIntent.setAction(a);
      paramContext.sendBroadcast(localIntent);
      dd.t();
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals(a))
    {
      this.b = new c(this, paramContext);
      this.b.d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.FirewallHideNumberTipDialog
 * JD-Core Version:    0.6.2
 */