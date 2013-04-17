package com.tencent.qqpimsecure.service;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.telephony.TelephonyManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.phoneservice.IpDialManager;
import com.tencent.tmsecure.module.phoneservice.IpDialManagerSetting;
import fu;
import ho;
import ov;
import sn;
import vc;

public class InOutCallReceiver extends BroadcastReceiver
{
  private static String a;
  private static int b = 0;
  private boolean c;

  private void a(Context paramContext, String paramString)
  {
    new StringBuilder("onCallingIn:").append(paramString).toString();
    if ((this.c) && (paramString != null))
      new sn(paramString, true, paramContext, false).start();
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this.c = ho.a().o();
    if (paramIntent.getAction().equals("com.tencent.action.SHOW_LOCATION"))
      if (this.c)
        abortBroadcast();
    int i;
    while (true)
    {
      return;
      i = ((TelephonyManager)paramContext.getSystemService("phone")).getCallState();
      if (paramIntent.getIntExtra("SUBSCRIPTION", -2) != 1)
        break label294;
      String str6 = paramIntent.getStringExtra("state");
      if ((str6 != null) && (str6.equals("IDLE")))
      {
        String str10 = a;
        new StringBuilder("onHoldOff:").append(str10).toString();
        ov.a().f();
        Intent localIntent5 = new Intent();
        localIntent5.setClass(paramContext, SecureService.class);
        localIntent5.setAction(vc.b);
        paramContext.startService(localIntent5);
        b = 0;
      }
      else
      {
        if ((str6 == null) || (!str6.equals("OFFHOOK")) || (b != 1))
          break;
        String str9 = a;
        new StringBuilder("onHoldOff:").append(str9).toString();
        ov.a().f();
        Intent localIntent4 = new Intent();
        localIntent4.setClass(paramContext, SecureService.class);
        localIntent4.setAction(vc.b);
        paramContext.startService(localIntent4);
      }
    }
    String str7 = paramIntent.getStringExtra("incoming_number");
    if (str7 != null);
    while (true)
    {
      String str8 = fu.d(str7);
      a = str8;
      if (str8 == null)
        break;
      a(paramContext, a);
      b = 1;
      break;
      str7 = getResultData();
    }
    label294: String str3;
    label319: String str4;
    int j;
    boolean bool;
    if (paramIntent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL"))
    {
      str3 = paramIntent.getStringExtra("android.intent.extra.PHONE_NUMBER");
      if (str3 != null)
      {
        a = fu.d(str3);
        str4 = a;
        new StringBuilder("onOutCall:").append(str4).toString();
        j = ((IpDialManager)ManagerCreator.getManager(IpDialManager.class)).getIpDialSetting().getIpDialMode();
        if ((str4 == null) || (j == 2))
          break label545;
        IpDialManager localIpDialManager = (IpDialManager)ManagerCreator.getManager(IpDialManager.class);
        String str5 = localIpDialManager.getDialPhoneNumber(str4);
        new StringBuilder("onOutCall:").append(str5).toString();
        localIpDialManager.doIpCall(str5, this);
        if ((str5 == null) || (str5.equals(str4)) || (str5.length() <= str4.length()))
          break label563;
        bool = true;
        label453: if (this.c)
        {
          if ((str4 != null) && (!str4.endsWith("*")) && (!str4.startsWith("**67*")) && (!str4.startsWith("##67#")))
            break label569;
          Intent localIntent3 = new Intent();
          localIntent3.setClass(paramContext, SecureService.class);
          localIntent3.setAction(vc.b);
          paramContext.startService(localIntent3);
        }
      }
    }
    while (true)
    {
      b = i;
      break;
      str3 = getResultData();
      break label319;
      label545: new StringBuilder("mode: ").append(j).toString();
      label563: bool = false;
      break label453;
      label569: new sn(str4, false, paramContext, bool).start();
      continue;
      if (i == 1)
      {
        String str2 = paramIntent.getStringExtra("incoming_number");
        if (str2 != null);
        while (true)
        {
          a = fu.d(str2);
          a(paramContext, a);
          break;
          str2 = getResultData();
        }
      }
      if ((b == 1) && (i == 2))
      {
        ov.a().f();
        Intent localIntent2 = new Intent();
        localIntent2.setClass(paramContext, SecureService.class);
        localIntent2.setAction(vc.b);
        paramContext.startService(localIntent2);
      }
      else if (i != 2)
      {
        String str1 = a;
        new StringBuilder("onHoldOff:").append(str1).toString();
        ov.a().f();
        Intent localIntent1 = new Intent();
        localIntent1.setClass(paramContext, SecureService.class);
        localIntent1.setAction(vc.b);
        paramContext.startService(localIntent1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.service.InOutCallReceiver
 * JD-Core Version:    0.6.2
 */