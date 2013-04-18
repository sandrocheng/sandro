package com.jxphone.mosecurity.listener;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.ServiceManager;
import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManager;
import com.android.internal.telephony.ITelephony;
import com.android.internal.telephony.ITelephony.Stub;
import com.ijinshan.kinghelper.a.i;
import com.ijinshan.kinghelper.firewall.dc;
import com.jxphone.mosecurity.d.l;
import com.jxphone.mosecurity.logic.h;
import java.util.ArrayList;

public class OuttingCallReceiver extends BroadcastReceiver
{
  private static final String a = "OuttingCallReceiver";
  private static ArrayList b = null;
  private static String c = null;
  private static long d = 0L;

  private static boolean a(String paramString)
  {
    String[] arrayOfString = dc.d().split(";");
    int i = 0;
    if (i < 2 * (arrayOfString.length / 2))
      if (!arrayOfString[i].equals(paramString));
    for (boolean bool = true; ; bool = false)
    {
      return bool;
      i += 2;
      break;
    }
  }

  private void b(String paramString)
  {
    Log.d("OuttingCallReceiver", "START:sendCall");
    ITelephony localITelephony = ITelephony.Stub.asInterface(ServiceManager.getService("phone"));
    String str;
    if (paramString != null)
      str = getResultData();
    try
    {
      c = paramString;
      localITelephony.call(paramString);
      setResultData(null);
      Log.d("OuttingCallReceiver", "END:sendCall");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        setResultData(str);
    }
  }

  public void onReceive(Context paramContext, Intent paramIntent)
  {
    if (System.currentTimeMillis() - d < 500L);
    label524: label939: 
    while (true)
    {
      return;
      d = System.currentTimeMillis();
      com.jxphone.mosecurity.logic.a.g localg = h.b(paramContext);
      if (paramIntent.getAction().equals("android.intent.action.NEW_OUTGOING_CALL"))
      {
        String str1 = getResultData();
        if ((str1 == null) && (paramIntent != null));
        for (String str2 = paramIntent.getStringExtra("android.intent.extra.PHONE_NUMBER"); ; str2 = str1)
        {
          if ((TextUtils.isEmpty(str2)) || (str2.startsWith("*")) || (str2.startsWith("#")))
            break label939;
          com.ijinshan.kinghelper.firewall.a.g localg1 = e.a(paramContext, str2);
          if (localg1 != null)
          {
            FirewallCallTipDialog.a(paramContext, str2, localg1.g);
            setResultData(null);
            break;
          }
          localg.a(str2, 2, ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay());
          Log.e("OuttingCallReceiver", ">>onReceive>>callLogic>>handleCall");
          String str3 = i.a(paramIntent.getStringExtra("android.intent.extra.PHONE_NUMBER"));
          Log.d("OuttingCallReceiver", str3);
          if (TextUtils.isEmpty(str3))
            break;
          dc.a(paramContext);
          dc.a();
          if (dc.b(paramContext.getString(2131427502)).equals(paramContext.getString(2131427502)))
            break;
          ArrayList localArrayList = new ArrayList();
          b = localArrayList;
          localArrayList.add("13800138000");
          b.add("13800570507");
          b.add("13800571505");
          b.add("13800571507");
          b.add("13800572507");
          b.add("13800573507");
          b.add("13800574507");
          b.add("13800575507");
          b.add("13800576507");
          b.add("13800577507");
          b.add("13800578507");
          b.add("13800579507");
          b.add("13800580507");
          if (((str3.length() == 11) && (b.contains(str3))) || ((!TextUtils.isEmpty(c)) && ((str3.equals(c)) || (str2.equals(c)))) || (l.b()))
            break;
          String str4 = com.jxphone.mosecurity.d.a.a(paramContext).b(str3, paramContext.getString(2131427718));
          if ((str4 == null) || (paramContext.getString(2131427718).equals(str4)))
            break;
          String str5 = dc.h("选择全省");
          String str6 = dc.f("未选择任何地区");
          if (a(str3))
            break;
          if (!"未选择任何地区".equals(str6))
          {
            if ((!"北京".equals(str6)) && (!"上海".equals(str6)) && (!"天津".equals(str6)) && (!"重庆".equals(str6)) && (!"海南".equals(str6)))
              break label767;
            if (str6.equals(str4))
              break;
          }
          String str7 = dc.k("其他IP号码");
          String str8 = dc.l("");
          String str9 = dc.d("");
          String str10 = dc.b("拨打长途时");
          if ("拨打长途时".equals(str10))
          {
            if (((str3.length() > 2) && (!str3.substring(0, 1).equals("0")) && ((!str3.substring(0, 1).equals("1")) || ((!str3.substring(1, 2).equals("3")) && (!str3.substring(1, 2).equals("5")) && (!str3.substring(1, 2).equals("8"))))) || (TextUtils.isEmpty(str9)))
              break;
            if ((!com.keniu.security.mydb.opt.a.a(str4, str9)) && (str3.length() >= 6) && (str3.length() <= 12))
            {
              if (!"其他IP号码".equals(str7))
                break label843;
              b(str8 + str3);
            }
          }
          while (true)
          {
            if (!"拨打所有电话时".equals(str10))
              break label868;
            if ((str3.length() != 7) && (str3.length() != 8))
              break label870;
            b(str3);
            break;
            label767: if (str5.equals("选择全省"))
            {
              if ((str4.length() <= str6.length()) || (!str6.equals(str4.substring(0, str6.length()))))
                break label524;
              break;
            }
            if (!str4.equals(str6 + str5))
              break label524;
            break;
            label843: b(str7 + str3);
          }
          label868: break;
          label870: if ("其他IP号码".equals(str7))
          {
            b(str8 + str3);
            break;
          }
          b(str7 + str3);
          break;
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.jxphone.mosecurity.listener.OuttingCallReceiver
 * JD-Core Version:    0.6.2
 */