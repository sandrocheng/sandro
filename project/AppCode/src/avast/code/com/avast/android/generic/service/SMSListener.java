package com.avast.android.generic.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import com.avast.android.generic.ad;
import com.avast.android.generic.ae;
import com.avast.android.generic.ag;
import com.avast.android.generic.app.passwordrecovery.a;
import com.avast.android.generic.b.d;
import com.avast.android.generic.util.ax;
import com.avast.android.generic.util.t;

public class SMSListener extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramIntent.getAction();
    t.a("AvastComms", paramContext, "Received intent in SMS received listener: " + str1);
    Context localContext = paramContext.getApplicationContext();
    Bundle localBundle = paramIntent.getExtras();
    ae localae;
    Object localObject1;
    Object localObject2;
    if ((str1.equals("android.provider.Telephony.SMS_RECEIVED")) && (localBundle != null))
    {
      localae = (ae)ad.a(localContext, ag.class);
      Object[] arrayOfObject = (Object[])localBundle.get("pdus");
      int i = 0;
      localObject1 = "";
      localObject2 = null;
      while (true)
      {
        if (i >= arrayOfObject.length)
          break label175;
        SmsMessage localSmsMessage = SmsMessage.createFromPdu((byte[])arrayOfObject[i]);
        try
        {
          String str5 = (String)localObject1 + localSmsMessage.getDisplayMessageBody();
          String str6 = localSmsMessage.getOriginatingAddress();
          i++;
          localObject2 = str6;
          localObject1 = str5;
        }
        catch (Exception localException)
        {
          t.a("AvastGeneric", "Error parsing SMS", localException);
        }
      }
    }
    return;
    label175: String str2;
    String str3;
    int j;
    if ((localObject1 != null) && (localObject2 != null) && (!((String)localObject1).equals("")))
    {
      str2 = ((String)localObject1).trim();
      str3 = localObject2.trim();
      t.b(localContext, "SMS", "SMS received from " + str3 + ": " + str2);
      j = str2.indexOf(" ");
      if (j <= -1)
        break label425;
    }
    label425: for (String str4 = str2.substring(0, j); ; str4 = str2)
    {
      boolean bool = localae.b(str4);
      if ((!bool) && (localae.u()) && (localae.z().equals(str4)));
      for (int k = 1; ; k = bool)
      {
        if ((k == 0) && (a.a(localContext, str4)))
          k = 1;
        if (k == 0)
          break;
        ax.b(localContext);
        t.a(localContext, "SMS has correct code, will be dispatched");
        Intent localIntent = new Intent();
        localIntent.setAction("com.avast.android.generic.service.action.SMS_RECEIVED");
        localIntent.putExtra("number", str3);
        localIntent.putExtra("text", str2);
        d.a(localContext, localIntent, str3, null, str2);
        t.a("AvastComms", localContext, "Broadcast aborting...");
        abortBroadcast();
        t.a("AvastComms", localContext, "Broadcast aborted");
        break;
        break;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.service.SMSListener
 * JD-Core Version:    0.6.2
 */