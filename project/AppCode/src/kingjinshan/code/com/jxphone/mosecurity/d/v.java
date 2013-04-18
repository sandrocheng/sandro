package com.jxphone.mosecurity.d;

import android.app.PendingIntent;
import android.telephony.gsm.SmsManager;
import android.telephony.gsm.SmsMessage;
import android.util.Log;
import com.jxphone.mosecurity.c.l;
import java.util.ArrayList;

final class v extends u
{
  final void a(String paramString1, String paramString2, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
  {
    Log.d("sms", "send by API Level3");
    SmsManager localSmsManager = SmsManager.getDefault();
    ArrayList localArrayList1 = localSmsManager.divideMessage(paramString2);
    if (localArrayList1.size() > 1)
    {
      ArrayList localArrayList2 = new ArrayList(1);
      localArrayList2.add(paramPendingIntent1);
      ArrayList localArrayList3 = new ArrayList(1);
      localArrayList3.add(paramPendingIntent2);
      localSmsManager.sendMultipartTextMessage(paramString1, null, localArrayList1, localArrayList2, localArrayList3);
    }
    while (true)
    {
      return;
      localSmsManager.sendTextMessage(paramString1, null, (String)localArrayList1.get(0), paramPendingIntent1, paramPendingIntent2);
    }
  }

  public final l[] a(Object[] paramArrayOfObject)
  {
    Log.d("sms", "parse by API Level3");
    int i = paramArrayOfObject.length;
    l[] arrayOfl = new l[i];
    for (int j = 0; j < i; j++)
    {
      SmsMessage localSmsMessage = SmsMessage.createFromPdu((byte[])paramArrayOfObject[j]);
      if (localSmsMessage != null)
        arrayOfl[j] = a(localSmsMessage.getDisplayOriginatingAddress(), localSmsMessage.getDisplayMessageBody());
    }
    return arrayOfl;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.v
 * JD-Core Version:    0.6.2
 */