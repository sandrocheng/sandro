package com.keniu.security.rates;

import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.widget.Toast;
import cn.com.wali.zft.plugin;
import com.ijinshan.kpref.t;
import com.keniu.security.MoSecurityApplication;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map.Entry;

final class b
  implements Runnable
{
  private a a;

  public b(a parama)
  {
    this.a = parama;
  }

  public final void run()
  {
    if (a.a() == null)
    {
      try
      {
        Iterator localIterator = plugin.getInstance().load_today_cache(0).iterator();
        while (localIterator.hasNext())
          a.a((String)((Map.Entry)localIterator.next()).getValue());
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
      if (a.a() != null)
        break label167;
      RatesRequestMainActivity.e.sendEmptyMessage(1);
    }
    while (true)
    {
      if (this.a != null)
      {
        com.keniu.security.monitor.a.a().a(com.keniu.security.monitor.a.r, this.a);
        a.c().unregistCallBack(this.a);
        a.c().endAsyn_1_1();
        SharedPreferences localSharedPreferences = t.b(MoSecurityApplication.a());
        if (!localSharedPreferences.getBoolean("traffic_updater2_report_fix_sms", false))
        {
          SharedPreferences.Editor localEditor = localSharedPreferences.edit();
          localEditor.putBoolean("traffic_updater2_report_fix_sms", true);
          localEditor.commit();
          System.out.println("reported = true");
        }
      }
      return;
      label167: a.b(a.a());
      Toast.makeText(a.b(), 2131428218, 1).show();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.rates.b
 * JD-Core Version:    0.6.2
 */