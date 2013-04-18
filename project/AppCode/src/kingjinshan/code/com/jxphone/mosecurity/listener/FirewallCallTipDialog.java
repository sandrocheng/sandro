package com.jxphone.mosecurity.listener;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.commui.b;

public class FirewallCallTipDialog extends BroadcastReceiver
{
  public static String a = "com.jxphone.mosecurity.listener.FirewallCallTipDialog";
  public static String b = "FirewallCallTipDialog_number";
  public static String c = "FirewallCallTipDialog_desc";
  private static b d = null;
  private Context e = null;
  private String f = null;

  public static void a(Context paramContext, String paramString1, String paramString2)
  {
    Intent localIntent = new Intent();
    localIntent.setAction(a);
    localIntent.putExtra(b, paramString1);
    localIntent.putExtra(c, paramString2);
    paramContext.sendBroadcast(localIntent);
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (paramIntent.getAction().equals(a))
    {
      d = new b(paramContext);
      this.f = paramIntent.getStringExtra(b);
      this.e = paramContext;
      String str1 = paramIntent.getStringExtra(c);
      String str2 = String.format(paramContext.getString(2131427849), new Object[] { str1 });
      String str3 = String.format(paramContext.getString(2131427848), new Object[] { str1 });
      d.a();
      d.a(str2, str3, paramContext.getString(2131427850), paramContext.getString(2131427851));
      d.a(new c(this), new d(this));
      d.d();
      a.h(this.e, this.f);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.FirewallCallTipDialog
 * JD-Core Version:    0.6.2
 */