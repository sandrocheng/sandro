package com.ijinshan.kinghelper.firewall;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;

public class BroadcastRecSms extends BroadcastReceiver
{
  public static String a = "android.desksms.RECIVER";
  public static String b = "nTreadId";
  private FirewallDeskSMSActivityApiLevel4 c = null;

  public final void a(FirewallDeskSMSActivityApiLevel4 paramFirewallDeskSMSActivityApiLevel4)
  {
    this.c = paramFirewallDeskSMSActivityApiLevel4;
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    String str2 = paramIntent.getStringExtra(b);
    if (str1.equals(a))
    {
      if (this.c == null)
        break label39;
      this.c.finish();
    }
    while (true)
    {
      return;
      label39: Intent localIntent = new Intent("android.intent.action.VIEW");
      localIntent.setData(Uri.parse("content://mms-sms/conversations/" + str2));
      localIntent.setFlags(335544320);
      paramContext.startActivity(localIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.BroadcastRecSms
 * JD-Core Version:    0.6.2
 */