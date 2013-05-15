package com.avast.android.mobilesecurity.app.filter.core;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.net.Uri;
import android.os.Bundle;
import android.provider.ContactsContract.PhoneLookup;
import android.telephony.SmsMessage;
import android.text.TextUtils;
import com.avast.android.generic.ad;
import com.avast.android.generic.util.ga.a;
import com.avast.android.generic.util.m;
import com.avast.android.mobilesecurity.app.filter.core.a.d;
import com.avast.android.mobilesecurity.app.filter.core.a.e;
import com.avast.android.mobilesecurity.app.globalactivitylog.u;
import com.avast.android.mobilesecurity.app.messageshield.c;
import com.avast.android.mobilesecurity.engine.o;
import com.avast.android.mobilesecurity.t;
import com.google.analytics.tracking.android.bo;
import java.util.UUID;

public class MessageReceiver extends BroadcastReceiver
  implements com.avast.android.mobilesecurity.app.messageshield.b
{
  private Intent a;
  private t b;
  private f c;
  private String d = "";
  private long e;
  private o f;
  private String g;

  private void a()
  {
    while (true)
    {
      try
      {
        int i;
        if (this.f != null)
        {
          i = 1;
          if (i != 0)
          {
            m.c("MessageReceiver: Scan finished in time.");
            if ((this.f == o.j) || (this.f == o.k) || (this.f == o.i) || (this.f == o.h))
            {
              m.c("MessageReceiver: Infected message, aborting.");
              abortBroadcast();
              g.a(this.g);
            }
          }
        }
        else
        {
          i = 0;
          continue;
        }
      }
      finally
      {
      }
      m.c("MessageReceiver: Scan not finished in time.");
    }
  }

  private void a(Context paramContext, Intent paramIntent)
  {
    d locald = new e().a(paramIntent.getByteArrayExtra("data"));
    if (locald == null)
      m.f("SmsReciever: Couldn't parse headers for WAP PUSH.");
    while (true)
    {
      return;
      int i = locald.a();
      m.c("SmsReciever: WAP PUSH message type: 0x" + Integer.toHexString(i));
      if (i == 130)
      {
        com.avast.android.mobilesecurity.app.filter.core.a.b localb = locald.b();
        if (localb != null)
        {
          String str = localb.b();
          this.d = paramContext.getString(2131493554);
          if ((str != null) && (!TextUtils.isEmpty(str)))
            this.c.a(str);
        }
      }
    }
  }

  private void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if ((this.b.aj()) && (this.b.ak()))
    {
      int i = (int)((10000L - (System.currentTimeMillis() - this.e)) / 2L);
      m.c("MessageReceiver: Starting scan and waiting for result, time left: " + i);
      if (i > 0)
        c.a(paramContext, paramString1, paramString2, paramString3, "", System.currentTimeMillis(), this.a.getExtras(), this, i);
      a();
    }
  }

  private void a(Context paramContext, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    t localt = (t)ad.a(paramContext, t.class);
    if ((getAbortBroadcast()) || (!localt.aj()) || (!localt.al()));
    while (true)
    {
      return;
      if ((paramString2 != null) && ((paramString2.equals(this.b.M())) || (paramString2.equals(this.b.N()))))
      {
        m.c("MessageReceiver: Received SMS from Anti-Theft friend number, skipping block offer.");
      }
      else
      {
        m.b("MessageReceiver", String.format("show proposal: %s, %s, %s", new Object[] { paramString2, paramString3, paramString4 }));
        if ((paramString2 != null) && (!TextUtils.isEmpty(paramString2)))
        {
          Cursor localCursor = paramContext.getContentResolver().query(Uri.withAppendedPath(ContactsContract.PhoneLookup.CONTENT_FILTER_URI, Uri.encode(paramString2)), new String[] { "_id" }, null, null, null);
          if ((localCursor == null) || (localCursor.getCount() == 0))
          {
            m.c("MessageReceiver: Aborting broadcast, showing proposal to deal with the message.");
            c.a(paramContext, paramString1, paramString2, paramString3, paramString4, this.a.getExtras(), 268435456);
            abortBroadcast();
            g.a(this.g);
          }
          if (localCursor != null)
            localCursor.close();
        }
      }
    }
  }

  private void a(String paramString)
  {
    if ((paramString != null) && ((paramString.equals(this.b.M())) || (paramString.equals(this.b.N()))))
      m.c("MessageReceiver: Received SMS from Anti-Theft friend number, skipping filter.");
    while (true)
    {
      return;
      if ((paramString != null) && (!TextUtils.isEmpty(paramString)))
      {
        m.c("MessageReceiver: smsLookup, lookupPhoneNumber: " + paramString);
        this.c.a(paramString);
      }
      else
      {
        m.c("MessageReceiver: smsLookup, lookupHiddenNumber");
        this.c.a();
        a.a().a("error", "received SMS without sender number", "", Long.valueOf(0L));
      }
    }
  }

  private SmsMessage[] a(Intent paramIntent)
  {
    try
    {
      Object[] arrayOfObject = (Object[])paramIntent.getExtras().get("pdus");
      SmsMessage[] arrayOfSmsMessage2;
      if (arrayOfObject != null)
      {
        arrayOfSmsMessage2 = new SmsMessage[arrayOfObject.length];
        for (int i = 0; i < arrayOfObject.length; i++)
          arrayOfSmsMessage2[i] = SmsMessage.createFromPdu((byte[])(byte[])arrayOfObject[i]);
      }
      for (SmsMessage[] arrayOfSmsMessage1 = arrayOfSmsMessage2; ; arrayOfSmsMessage1 = new SmsMessage[0])
        return arrayOfSmsMessage1;
    }
    finally
    {
    }
  }

  private void b(Context paramContext, Intent paramIntent)
  {
    m.c("MessageReceiver: onReceiveSMS");
    SmsMessage[] arrayOfSmsMessage = a(paramIntent);
    this.g = UUID.randomUUID().toString();
    m.c("MessageReceiver: Generating message UUID: " + this.g);
    int i = 0;
    String str1 = null;
    String str2 = null;
    while (true)
    {
      if (i < arrayOfSmsMessage.length);
      try
      {
        str1 = arrayOfSmsMessage[i].getDisplayOriginatingAddress();
        m.c("MessageReceiver: getDisplayOriginatingAddress: " + arrayOfSmsMessage[i].getDisplayOriginatingAddress());
        m.c("MessageReceiver: getOriginatingAddress: " + arrayOfSmsMessage[i].getOriginatingAddress());
        label140: m.c("MessageReceiver: receiving sms from " + str1);
        try
        {
          String str3 = arrayOfSmsMessage[i].getDisplayMessageBody();
          if ((str2 == null) || (str2.equals(str1)))
          {
            this.d += str3;
            i++;
          }
        }
        catch (Exception localException)
        {
          m.b("MessageReceiver: Error parsing SMS", localException);
          a.a().a("error", "received SMS parse error", localException.getMessage(), Long.valueOf(0L));
        }
        while (true)
        {
          return;
          a(str1);
          if (!getAbortBroadcast())
          {
            a(paramContext, this.g, str1, this.d);
            a(paramContext, this.g, str1, this.d, null);
          }
          this.d = "";
          str2 = str1;
          break;
          if (this.d.length() > 0)
          {
            a(str1);
            if (!getAbortBroadcast())
            {
              a(paramContext, this.g, str1, this.d);
              a(paramContext, this.g, str1, this.d, null);
            }
          }
        }
      }
      catch (NullPointerException localNullPointerException)
      {
        break label140;
      }
    }
  }

  public void a(String paramString, o paramo)
  {
    m.c("MessageReceiver: onScanFinised for UUID: " + paramString);
    try
    {
      this.f = paramo;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.e = System.currentTimeMillis();
    String str = paramIntent.getAction();
    m.c("MessageReceiver: Received message, action: " + str);
    m.c("MessageReceiver: isOrderedBroadcast: " + isOrderedBroadcast());
    this.b = ((t)ad.a(paramContext, t.class));
    if (!this.b.b("eulaDone", false))
      m.c("MessageReceiver: EULA not approved, stop processing sms.");
    while (true)
    {
      return;
      u localu = u.a(paramContext);
      this.a = paramIntent;
      this.c = new l(this, paramContext, localu);
      if (("android.provider.Telephony.SMS_RECEIVED".equals(str)) || ("android.provider.Telephony.DATA_SMS_RECEIVED".equals(str)) || ("android.provider.Telephony.SMS_CB_RECEIVED".equals(str)))
        b(paramContext, paramIntent);
      if (("android.provider.Telephony.WAP_PUSH_RECEIVED".equals(str)) && ("application/vnd.wap.mms-message".equals(paramIntent.getType())))
        a(paramContext, paramIntent);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.core.MessageReceiver
 * JD-Core Version:    0.6.2
 */