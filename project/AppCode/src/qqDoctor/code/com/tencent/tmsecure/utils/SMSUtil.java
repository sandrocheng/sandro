package com.tencent.tmsecure.utils;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class SMSUtil
{
  public static void sendSMS(String paramString1, String paramString2, Context paramContext)
  {
    if ((paramString1 == null) || (paramString2 == null))
      return;
    if (SDKUtil.getSDKVersion() > 3);
    for (Object localObject = new c(); ; localObject = new b())
    {
      try
      {
        ((a)localObject).a(paramString1, paramString2);
      }
      catch (Exception localException1)
      {
        try
        {
          Intent localIntent = new Intent("android.intent.action.VIEW", Uri.parse("smsto:" + paramString1));
          localIntent.putExtra("address", paramString1);
          localIntent.putExtra("sms_body", paramString2);
          localIntent.setType("vnd.android-dir/mms-sms");
          paramContext.startActivity(localIntent);
        }
        catch (Exception localException2)
        {
        }
      }
      break;
    }
  }

  static abstract interface a
  {
    public abstract void a(String paramString1, String paramString2);
  }

  static final class b
    implements SMSUtil.a
  {
    private android.telephony.gsm.SmsManager a = android.telephony.gsm.SmsManager.getDefault();

    public final void a(String paramString1, String paramString2)
    {
      Iterator localIterator;
      if (paramString2.length() > 70)
      {
        localIterator = this.a.divideMessage(paramString2).iterator();
        if (localIterator.hasNext());
      }
      while (true)
      {
        return;
        String str = (String)localIterator.next();
        this.a.sendTextMessage(paramString1, null, str, null, null);
        break;
        this.a.sendTextMessage(paramString1, null, paramString2, null, null);
      }
    }
  }

  static final class c
    implements SMSUtil.a
  {
    private android.telephony.SmsManager a = android.telephony.SmsManager.getDefault();

    public final void a(String paramString1, String paramString2)
    {
      Iterator localIterator;
      if (paramString2.length() > 70)
      {
        localIterator = this.a.divideMessage(paramString2).iterator();
        if (localIterator.hasNext());
      }
      while (true)
      {
        return;
        String str = (String)localIterator.next();
        this.a.sendTextMessage(paramString1, null, str, null, null);
        break;
        this.a.sendTextMessage(paramString1, null, paramString2, null, null);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.utils.SMSUtil
 * JD-Core Version:    0.6.2
 */