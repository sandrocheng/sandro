package com.ijinshan.kinghelper.firewall.core;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.ijinshan.kinghelper.firewall.dd;

public class FirewallSmsTipDialog extends BroadcastReceiver
{
  public static String a = "com.ijinshan.kinghelper.firewall.core.FirewallSmsTipDialog";
  public static String b = "com.ijinshan.kinghelper.firewall.core.FirewallSmsTipDialog_mms";
  private static l c = null;

  public static void a(Context paramContext, boolean paramBoolean)
  {
    dd.a(paramContext);
    if (!dd.m())
    {
      Intent localIntent = new Intent();
      localIntent.setAction(a);
      localIntent.putExtra("sms", paramBoolean);
      paramContext.sendBroadcast(localIntent);
      dd.l();
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals(a))
    {
      l locall = new l(this, paramContext, paramIntent.getBooleanExtra("sms", true));
      c = locall;
      locall.d();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.FirewallSmsTipDialog
 * JD-Core Version:    0.6.2
 */