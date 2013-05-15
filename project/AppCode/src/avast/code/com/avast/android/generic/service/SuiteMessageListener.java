package com.avast.android.generic.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.avast.android.generic.ad;
import com.avast.android.generic.ag;
import com.avast.android.generic.app.passwordrecovery.a;
import com.avast.android.generic.util.ax;
import com.avast.android.generic.util.t;

public class SuiteMessageListener extends BroadcastReceiver
{
  protected void a(Context paramContext, com.avast.android.generic.ae paramae, String paramString1, String paramString2, String paramString3)
  {
    int i = paramString1.indexOf(" ");
    if (i > -1);
    for (String str = paramString1.substring(0, i); ; str = paramString1)
    {
      boolean bool = paramae.b(str);
      if ((!bool) && (paramae.u()) && (paramae.z().equals(str)))
        bool = true;
      if ((!bool) && (a.a(paramContext, str)));
      for (int j = 1; ; j = bool)
      {
        if (j != 0)
        {
          ax.b(paramContext);
          t.a(paramContext, "Message handled, service starting");
          if (paramString3 != null)
            break label148;
          t.a(paramContext, "Message handled, service starting");
          Intent localIntent2 = new Intent();
          localIntent2.setAction("com.avast.android.generic.service.action.SMS_RECEIVED");
          localIntent2.putExtra("number", paramString2);
          localIntent2.putExtra("text", paramString1);
          com.avast.android.generic.util.ae.a(paramContext, localIntent2, paramContext.getPackageName());
        }
        while (true)
        {
          return;
          label148: ax.b(paramContext);
          Intent localIntent1 = new Intent();
          localIntent1.setAction("com.avast.android.generic.action.ACTION_C2DM_MESSAGE");
          localIntent1.putExtra("uid", paramString3);
          localIntent1.putExtra("message", paramString1);
          com.avast.android.generic.util.ae.a(paramContext, localIntent1, paramContext.getPackageName());
        }
      }
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    Context localContext = paramContext.getApplicationContext();
    Bundle localBundle = paramIntent.getExtras();
    String str3;
    String str4;
    String str5;
    String str6;
    if (str1.equals("com.avast.android.generic.action.MESSAGE_TO_SUITE"))
      if (localBundle != null)
      {
        str3 = localBundle.getString("sourcePackage");
        if ((str3 != null) && (!str3.equals(localContext.getPackageName())))
        {
          str4 = localBundle.getString("text");
          str5 = localBundle.getString("uid");
          str6 = localBundle.getString("number");
          if (((str5 == null) || (str5.equals(""))) && ((str6 != null) && (str4 != null) && (!str4.equals(""))))
            break label121;
        }
      }
    while (true)
    {
      return;
      label121: t.b(localContext, str3, "Message " + str4);
      a(localContext, (com.avast.android.generic.ae)ad.a(localContext, ag.class), str4, str6, str5);
      continue;
      if (str1.equals("com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED"))
      {
        Intent localIntent1 = new Intent();
        localIntent1.setAction("com.avast.android.mobilesecurity.app.account.ACCOUNT_CONNECTED");
        localIntent1.putExtras(new Bundle());
        com.avast.android.generic.util.ae.a(localContext, localIntent1, localContext.getPackageName());
      }
      else if (str1.equals("com.avast.android.mobilesecurity.app.account.ACCOUNT_DISCONNECTED"))
      {
        Intent localIntent2 = new Intent();
        localIntent2.setAction("com.avast.android.mobilesecurity.app.account.ACCOUNT_DISCONNECTED");
        localIntent2.putExtras(new Bundle());
        com.avast.android.generic.util.ae.a(localContext, localIntent2, localContext.getPackageName());
      }
      else if (str1.equals("com.avast.android.generic.action.UPDATE_CHECK_SUITE"))
      {
        if (localBundle != null)
        {
          String str2 = localBundle.getString("sourcePackage");
          if ((str2 != null) && (!str2.equals(localContext.getPackageName())))
          {
            t.b(localContext, str2, "Update check to be performed");
            Intent localIntent4 = new Intent();
            localIntent4.setAction("com.avast.android.generic.action.UPDATE_CHECK_SUITE");
            localIntent4.putExtras(localBundle);
            com.avast.android.generic.util.ae.a(localContext, localIntent4, localContext.getPackageName());
          }
        }
      }
      else if (str1.equals("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION"))
      {
        t.b(localContext, localContext.getPackageName(), "Push account task to be performed");
        Intent localIntent3 = new Intent();
        localIntent3.setAction("com.avast.android.mobilesecurity.app.account.PUSH_ACCOUNT_COMMUNICATION");
        com.avast.android.generic.util.ae.a(localContext, localIntent3, localContext.getPackageName());
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.SuiteMessageListener
 * JD-Core Version:    0.6.2
 */