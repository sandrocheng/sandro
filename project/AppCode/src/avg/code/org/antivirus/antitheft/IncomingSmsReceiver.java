package org.antivirus.antitheft;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.telephony.gsm.SmsMessage;
import android.text.TextUtils;
import org.antivirus.AVService;
import org.antivirus.core.Logger;

public class IncomingSmsReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if ((paramIntent != null) && (paramContext != null))
      try
      {
        Bundle localBundle = paramIntent.getExtras();
        if (localBundle != null)
        {
          Object[] arrayOfObject = (Object[])localBundle.get("pdus");
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
                    Intent localIntent = new Intent(paramContext, AVService.class);
                    localIntent.putExtra("body", str);
                    localIntent.putExtra("fromsms", "random");
                    localIntent.putExtra("__SAC", 100);
                    paramContext.startService(localIntent);
                  }
                }
              }
          }
        }
      }
      catch (Exception localException)
      {
        Logger.log(localException);
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.antitheft.IncomingSmsReceiver
 * JD-Core Version:    0.6.2
 */