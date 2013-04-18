package com.keniu.security.traffic;

import android.content.Context;
import android.widget.Toast;
import cn.com.wali.zft.ZftPluginCallBack;
import cn.com.wali.zft.plugin;
import java.io.PrintStream;
import java.util.HashMap;

public final class cq
{
  private static ZftPluginCallBack a = new cr();

  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    while (true)
    {
      HashMap localHashMap;
      try
      {
        plugin.getInstance().registCallBack(a);
        if (plugin.getInstance().beginAsyn_1_1(1) != 1)
        {
          Toast.makeText(paramContext, 2131428027, 1).show();
          plugin.getInstance().unregistCallBack(a);
          return;
        }
        StringBuffer localStringBuffer = new StringBuffer();
        localHashMap = plugin.getInstance().Asyn_1_1(paramString1, paramString2, localStringBuffer);
        if (localHashMap != null)
        {
          if (localHashMap.containsKey("GTCYL"))
          {
            String str4 = (String)localHashMap.get("GTCYL");
            System.out.println("GTCYL=============" + str4);
          }
        }
        else
        {
          plugin.getInstance().endAsyn_1_1();
          continue;
        }
      }
      finally
      {
      }
      if (localHashMap.containsKey("TOTAL_GPRS_USED"))
      {
        String str3 = (String)localHashMap.get("TOTAL_GPRS_USED");
        System.out.println("TOTAL_GPRS_USED=============" + str3);
      }
      else if (localHashMap.containsKey("GTCSY"))
      {
        String str2 = (String)localHashMap.get("GTCSY");
        System.out.println("GTCSY=============" + str2);
      }
      else if (localHashMap.containsKey("TOTAL_GPRS_BALANCE"))
      {
        String str1 = (String)localHashMap.get("TOTAL_GPRS_BALANCE");
        System.out.println("TOTAL_GPRS_BALANCE=============" + str1);
      }
      else
      {
        System.out.println("解析失败");
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cq
 * JD-Core Version:    0.6.2
 */