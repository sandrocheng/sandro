package com.antivirus.antitheft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.antivirus.AVService;
import com.avg.toolkit.f.a;

public class IncomingSmsReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent != null) && (paramContext != null))
      try
      {
        Bundle localBundle1 = paramIntent.getExtras();
        if (localBundle1 != null)
        {
          Object[] arrayOfObject = (Object[])localBundle1.get("pdus");
          if (arrayOfObject.length <= 10)
          {
            SmsMessage[] arrayOfSmsMessage = new SmsMessage[arrayOfObject.length];
            for (int i = 0; i < arrayOfObject.length; i++)
              if (arrayOfObject[i] != null)
              {
                arrayOfSmsMessage[i] = SmsMessage.createFromPdu((byte[])(byte[])arrayOfObject[i]);
                if (arrayOfSmsMessage[i] != null)
                {
                  String str = arrayOfSmsMessage[i].getMessageBody();
                  if (!TextUtils.isEmpty(str))
                  {
                    Bundle localBundle2 = new Bundle();
                    localBundle2.putString("fromsms", "random");
                    localBundle2.putString("body", str);
                    AVService.a(paramContext, 9000, 9001, localBundle2);
                  }
                }
              }
          }
        }
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.antitheft.IncomingSmsReceiver
 * JD-Core Version:    0.6.2
 */