package com.jxphone.mosecurity.d;

import android.app.PendingIntent;
import android.telephony.SmsManager;
import android.telephony.SmsMessage;
import android.util.Log;
import com.jxphone.mosecurity.c.l;
import java.util.ArrayList;

final class w extends u
{
  final void a(String paramString1, String paramString2, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
  {
    Log.d("sms", "send by API Level4");
    SmsManager localSmsManager = SmsManager.getDefault();
    ArrayList localArrayList1 = localSmsManager.divideMessage(paramString2);
    try
    {
      if (localArrayList1.size() > 1)
      {
        ArrayList localArrayList2 = new ArrayList(1);
        localArrayList2.add(paramPendingIntent1);
        ArrayList localArrayList3 = new ArrayList(1);
        localArrayList3.add(paramPendingIntent2);
        localSmsManager.sendMultipartTextMessage(paramString1, null, localArrayList1, localArrayList2, localArrayList3);
      }
      else
      {
        localSmsManager.sendTextMessage(paramString1, null, (String)localArrayList1.get(0), paramPendingIntent1, paramPendingIntent2);
      }
    }
    catch (Exception localException)
    {
    }
  }

  public final l[] a(Object[] paramArrayOfObject)
  {
    Log.d("sms", "parse by API Level4");
    int i = paramArrayOfObject.length;
    l[] arrayOfl = new l[i];
    int j = 0;
    SmsMessage localSmsMessage;
    if (j < i)
    {
      localSmsMessage = SmsMessage.createFromPdu((byte[])paramArrayOfObject[j]);
      if (localSmsMessage == null)
        break label103;
    }
    label65: label95: label103: label114: 
    while (true)
    {
      String str1;
      String str2;
      try
      {
        str1 = localSmsMessage.getDisplayOriginatingAddress();
        str2 = localSmsMessage.getDisplayMessageBody();
        if (str1 != null)
        {
          break label95;
          arrayOfl[j] = a(str1, str2);
          break label103;
          str2 = "";
          continue;
          return arrayOfl;
        }
      }
      catch (Exception localException)
      {
      }
      while (true)
      {
        if (str2 == null)
          break label114;
        break label65;
        j++;
        break;
        str1 = "";
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.d.w
 * JD-Core Version:    0.6.2
 */