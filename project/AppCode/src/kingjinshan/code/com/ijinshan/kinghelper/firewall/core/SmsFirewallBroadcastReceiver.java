package com.ijinshan.kinghelper.firewall.core;

import [B;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.android.internal.telephony.SmsMessageBase;
import com.jxphone.mosecurity.d.l;
import com.keniu.security.monitor.a;
import java.lang.reflect.Field;

public class SmsFirewallBroadcastReceiver extends BroadcastReceiver
{
  public static int a = 0;
  public static int b = 0;
  public static int c = 0;
  private static final String d = "SmsFirewallBroadcastReceiver";

  private static SmsMessageBase a(byte[] paramArrayOfByte, boolean paramBoolean)
  {
    if (paramBoolean);
    for (Object localObject = com.android.internal.telephony.cdma.SmsMessage.createFromPdu(paramArrayOfByte); ; localObject = com.android.internal.telephony.gsm.SmsMessage.createFromPdu(paramArrayOfByte))
      return localObject;
  }

  private static android.telephony.SmsMessage[] a(Intent paramIntent)
  {
    int i = 0;
    if (l.c);
    android.telephony.SmsMessage[] arrayOfSmsMessage;
    for (Object localObject = b(paramIntent); ; localObject = arrayOfSmsMessage)
    {
      return localObject;
      Object[] arrayOfObject = (Object[])paramIntent.getSerializableExtra("pdus");
      byte[][] arrayOfByte1 = new byte[arrayOfObject.length][];
      for (int j = 0; j < arrayOfObject.length; j++)
        arrayOfByte1[j] = ((byte[])arrayOfObject[j]);
      byte[][] arrayOfByte2 = new byte[arrayOfByte1.length][];
      int k = arrayOfByte2.length;
      arrayOfSmsMessage = new android.telephony.SmsMessage[k];
      while (i < k)
      {
        arrayOfByte2[i] = arrayOfByte1[i];
        arrayOfSmsMessage[i] = android.telephony.SmsMessage.createFromPdu(arrayOfByte2[i]);
        i++;
      }
    }
  }

  private static android.telephony.SmsMessage[] b(Intent paramIntent)
  {
    int i = 0;
    String str = paramIntent.getStringExtra("from");
    Object localObject1;
    if (str == null)
      localObject1 = null;
    while (true)
    {
      return localObject1;
      if (str.equals("GSM"));
      byte[][] arrayOfByte1;
      for (int j = 0; ; j = 1)
      {
        Object[] arrayOfObject = (Object[])paramIntent.getSerializableExtra("pdus");
        arrayOfByte1 = new byte[arrayOfObject.length][];
        for (int k = 0; k < arrayOfObject.length; k++)
          arrayOfByte1[k] = ((byte[])arrayOfObject[k]);
        if (!str.equals("CDMA"))
          break;
      }
      localObject1 = null;
      continue;
      byte[][] arrayOfByte2 = new byte[arrayOfByte1.length][];
      int m = arrayOfByte2.length;
      android.telephony.SmsMessage[] arrayOfSmsMessage = new android.telephony.SmsMessage[m];
      while (true)
        if (i < m)
        {
          arrayOfByte2[i] = arrayOfByte1[i];
          [B local[B = arrayOfByte2[i];
          Object localObject2;
          if (j != 0)
            localObject2 = com.android.internal.telephony.cdma.SmsMessage.createFromPdu(local[B);
          try
          {
            while (true)
            {
              arrayOfSmsMessage[i] = ((android.telephony.SmsMessage)android.telephony.SmsMessage.class.newInstance());
              android.telephony.SmsMessage.class.getField("mWrappedSmsMessage").set(arrayOfSmsMessage[i], localObject2);
              i++;
              break;
              localObject2 = com.android.internal.telephony.gsm.SmsMessage.createFromPdu(local[B);
            }
          }
          catch (Exception localException)
          {
            while (true)
              localException.printStackTrace();
          }
        }
      localObject1 = arrayOfSmsMessage;
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    Log.e("SmsFirewallBroadcastReceiver", "SmsFirewallBroadcastReceiver>>onReceive>>intent=" + paramIntent);
    w localw = new w(this);
    paramIntent.getAction();
    a locala = a.a();
    localw.b = paramIntent;
    localw.e = false;
    localw.a = paramContext;
    localw.g = this;
    Bundle localBundle;
    int i;
    if (("android.provider.Telephony.SMS_RECEIVED".equals(paramIntent.getAction())) || ("android.provider.Telephony.WAP_PUSH_RECEIVED".equals(paramIntent.getAction())))
    {
      localBundle = paramIntent.getExtras();
      if ("android.provider.Telephony.WAP_PUSH_RECEIVED".equals(paramIntent.getAction()))
      {
        localw.e = true;
        if (paramIntent.getType().equals("application/vnd.wap.sic"))
        {
          byte[] arrayOfByte = paramIntent.getByteArrayExtra("data");
          if (arrayOfByte == null)
            break label354;
          String str4 = p.a(arrayOfByte);
          if (str4 == null)
            break label354;
          localw.d = str4;
          localw.c = p.a;
          i = 1;
        }
      }
    }
    while (true)
      while (true)
      {
        if (i != 0)
          locala.a(a.r, localw, null);
        return;
        if (paramIntent.getType().equals("application/vnd.wap.mms-message"))
        {
          localw.h = true;
          i = 1;
          continue;
          if (localBundle == null);
        }
        else
        {
          try
          {
            android.telephony.SmsMessage[] arrayOfSmsMessage = a(paramIntent);
            if ((arrayOfSmsMessage != null) && (arrayOfSmsMessage.length > 0))
            {
              String str1 = arrayOfSmsMessage[0].getOriginatingAddress();
              StringBuilder localStringBuilder = new StringBuilder();
              int j = arrayOfSmsMessage.length;
              int k = 0;
              while (true)
                if (k < j)
                {
                  android.telephony.SmsMessage localSmsMessage = arrayOfSmsMessage[k];
                  try
                  {
                    localStringBuilder.append(localSmsMessage.getDisplayMessageBody());
                    k++;
                  }
                  catch (Exception localException2)
                  {
                    while (true)
                      localException2.printStackTrace();
                  }
                }
              localw.d = localStringBuilder.toString();
              localw.c = str1;
              localw.f = arrayOfSmsMessage;
              String str2 = localw.c;
              String str3 = localw.d;
              com.jxphone.mosecurity.d.f.b = str2;
              com.jxphone.mosecurity.d.f.c = str3;
              break;
            }
            label354: i = 0;
          }
          catch (Exception localException1)
          {
            i = 0;
          }
        }
      }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.core.SmsFirewallBroadcastReceiver
 * JD-Core Version:    0.6.2
 */