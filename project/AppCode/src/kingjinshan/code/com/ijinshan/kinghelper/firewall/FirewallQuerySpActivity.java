package com.ijinshan.kinghelper.firewall;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.widget.Button;
import android.widget.Toast;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

public class FirewallQuerySpActivity extends Activity
{
  private static final String b = "46000";
  private static final String c = "46002";
  private static final String d = "46007";
  private static final String e = "310260";
  Button a;

  public static void a(Context paramContext, boolean paramBoolean)
  {
    a.i(paramContext, "smsman_zzquery");
    String str = ((TelephonyManager)paramContext.getSystemService("phone")).getSubscriberId();
    if (TextUtils.isEmpty(str))
      Toast.makeText(paramContext, paramContext.getString(2131427672, new Object[] { str }), 1).show();
    while (true)
    {
      return;
      if ((str.startsWith("46000")) || (str.startsWith("46002")) || (str.startsWith("46007")) || (str.startsWith("310260")))
      {
        if (paramBoolean)
          b(paramContext, "10086", "0000");
        else
          c(paramContext, "10086", "0000");
      }
      else if (str.startsWith("46001"))
      {
        if (paramBoolean)
          b(paramContext, "10010", "601");
        else
          c(paramContext, "10010", "601");
      }
      else if ((str.startsWith("46003")) || (str.startsWith("46099")))
      {
        if (paramBoolean)
          b(paramContext, "10001", "0000");
        else
          c(paramContext, "10001", "0000");
      }
      else
        Toast.makeText(paramContext, paramContext.getString(2131427671, new Object[] { str }), 1).show();
    }
  }

  private static void b(Context paramContext, String paramString1, String paramString2)
  {
    aq localaq = new aq(paramContext, (byte)0);
    localaq.a(2131427865);
    localaq.b(2131427669);
    localaq.a(false);
    localaq.a(paramContext.getString(2131427867), new ag(paramContext, paramString1, paramString2));
    localaq.b(paramContext.getString(2131427866), new ah());
    localaq.c().show();
  }

  private static void c(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      PendingIntent localPendingIntent = PendingIntent.getBroadcast(paramContext, 0, new Intent(), 0);
      SmsManager.getDefault().sendTextMessage(paramString1, null, paramString2, localPendingIntent, null);
      Toast.makeText(paramContext, paramContext.getString(2131427670), 1).show();
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Toast.makeText(paramContext, paramContext.getString(2131427668), 1).show();
        localException.printStackTrace();
      }
    }
  }

  protected void onCreate(Bundle paramBundle)
  {
    requestWindowFeature(1);
    super.onCreate(paramBundle);
    setContentView(2130903050);
    this.a = ((Button)findViewById(2131230818));
    this.a.setOnClickListener(new af(this));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.FirewallQuerySpActivity
 * JD-Core Version:    0.6.2
 */