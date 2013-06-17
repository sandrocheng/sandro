package com.antivirus.callmessagefilter.smsblocker;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import com.antivirus.AVService;
import com.antivirus.c;
import com.antivirus.core.b.a.b;
import com.antivirus.ui.callmessagefilter.b.d;

public class SMSReceiver extends BroadcastReceiver
{
  private void a(Context paramContext, Bundle paramBundle)
  {
    super.abortBroadcast();
    AVService.a(paramContext, 12000, 3, paramBundle);
  }

  private boolean a(Context paramContext, String paramString)
  {
    if (!c.z());
    d locald;
    for (boolean bool = false; ; bool = d.c.equals(locald))
    {
      return bool;
      locald = d.a(b.a(paramContext).a(paramString).a());
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    try
    {
      String str = SmsMessage.createFromPdu((byte[])((java.lang.Object[])(java.lang.Object[])paramIntent.getSerializableExtra("pdus"))[0]).getOriginatingAddress();
      if ((str != null) && (!str.equals("")) && (a(paramContext, str)))
        a(paramContext, paramIntent.getExtras());
      return;
    }
    catch (Throwable localThrowable)
    {
      while (true)
        com.avg.toolkit.f.a.a("Couldn't fetch message details. Thus can't block");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.callmessagefilter.smsblocker.SMSReceiver
 * JD-Core Version:    0.6.2
 */