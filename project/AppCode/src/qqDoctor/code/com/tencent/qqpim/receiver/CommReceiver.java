package com.tencent.qqpim.receiver;

import a;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import be;
import bf;
import bl;
import ca;
import ca.a;
import dk;

public class CommReceiver extends BroadcastReceiver
{
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    String str1 = paramContext.getPackageName();
    dk.b("CommReceiver", "onReceive current packageName = " + str1);
    if (paramIntent == null)
      dk.d("CommReceiver", "intent == null");
    while (true)
    {
      return;
      Bundle localBundle = paramIntent.getExtras();
      if (localBundle == null)
      {
        dk.d("CommReceiver", "Extras == null");
        continue;
      }
      int i = -1;
      String str2 = "";
      try
      {
        str2 = localBundle.getString("intent_key_comm_from");
        i = localBundle.getInt("intent_key_comm_msgid");
        bf localbf3 = (bf)localBundle.getParcelable("intent_key_comm_data");
        j = i;
        str3 = str2;
        localbf1 = localbf3;
      }
      catch (Exception localException1)
      {
        try
        {
          while (true)
          {
            String str7 = localBundle.getString("intent_key_comm_to");
            str4 = str7;
            dk.b("CommReceiver", "onReceive msgID = " + j + " msgFrom = " + str3);
            dk.b("CommReceiver", "handleMsg packageName = " + str1);
            if ((str1 != null) && (!str1.equalsIgnoreCase(str3)))
              break label292;
            dk.d("CommReceiver", "handleMsg packageName equars");
            dk.b("CommReceiver", "onReceive leave packageName = " + str1);
            break;
            localException1 = localException1;
            dk.c("CommReceiver", "onReceive e = " + localException1.toString());
            j = i;
            String str3 = str2;
            localbf1 = null;
          }
        }
        catch (Exception localException2)
        {
          while (true)
          {
            int j;
            bf localbf1;
            dk.c("CommReceiver", "onReceive get msgTo e = " + localException2.toString());
            String str4 = null;
            continue;
            label292: if (str4 != null)
            {
              dk.d("CommReceiver", "handleMsg msgTo =" + str4);
              if (!str4.equalsIgnoreCase(str1))
                dk.d("CommReceiver", "handleMsg send to " + str4 + ", no need me(" + str1 + ") to handle");
            }
            if (localbf1 != null)
              localbf1.f();
            switch (j)
            {
            case 2:
            case 257:
            default:
              break;
            case 3:
              ca localca = bl.f();
              bf localbf2 = new bf();
              String str5 = localca.a(ca.a.o);
              long l = localca.c(ca.a.p);
              int k = localca.b(ca.a.q);
              int m = localca.b(ca.a.r);
              localbf2.b(str5);
              localbf2.b(l);
              localbf2.b(k);
              localbf2.c(m);
              localbf2.a(str1);
              String str6 = paramContext.getPackageName();
              dk.b("CommReceiver", "handleRequstLastNotification packageName=" + str6 + " lastNotifyAccount=" + str5 + " lastNotifyTime=" + l + " lastNotifyLocalDataType=" + k + " lastNotifyNetDataType=" + m);
              boolean bool = a.a(paramContext, 258, localbf2, str6, str4);
              dk.b("CommReceiver", "handleRequstLastNotification broadSuccess=" + bool);
              break;
            case 258:
              dk.b("CommReceiver", "handleReplyAskLastNotification");
              be.a().a(localbf1);
              dk.b("CommReceiver", "handleReplyAskLastNotification fromName=" + localbf1.d() + " lastNotifyTime=" + localbf1.c() + " lastNotifyLocalDataType=" + localbf1.a() + " lastNotifyNetDataType=" + localbf1.b());
              dk.b("CommReceiver", "handleReplyAskLastNotification leave");
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpim.receiver.CommReceiver
 * JD-Core Version:    0.6.2
 */