package com.keniu.security.traffic;

import android.os.Handler;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import cn.com.wali.zft.plugin;
import com.ijinshan.kinghelper.firewall.dc;
import com.keniu.security.a;
import com.keniu.security.sync.l;
import java.io.PrintStream;

final class fj extends Thread
{
  fj(fi paramfi)
  {
  }

  public final void run()
  {
    String str = ((TelephonyManager)this.a.a.getSystemService("phone")).getSubscriberId();
    TrafficZiFeiSubSettingActivity.b(this.a.a).p = str;
    if ((str != null) && (!str.equals("")))
      TrafficZiFeiSubSettingActivity.b(this.a.a).a(this.a.a, 2131428297);
    if (!TextUtils.isEmpty(TrafficZiFeiSubSettingActivity.b(this.a.a).k))
    {
      dc.a(this.a.a);
      if (TrafficZiFeiSubSettingActivity.b(this.a.a).l.equals(TrafficZiFeiSubSettingActivity.b(this.a.a).k))
        dc.e(TrafficZiFeiSubSettingActivity.b(this.a.a).k.split(",")[1].toString());
    }
    else
    {
      TrafficZiFeiSubSettingActivity.b(this.a.a).a(this.a.a, 2131428299);
      TrafficZiFeiSubSettingActivity.b(this.a.a).a(this.a.a, 2131428300);
      TrafficZiFeiSubSettingActivity.b(this.a.a).a(this.a.a, 2131428301);
      TrafficZiFeiSubSettingActivity.b(this.a.a).a(this.a.a, 2131428302);
      int i = plugin.getInstance().update(TrafficZiFeiSubSettingActivity.b(this.a.a).k.split(",")[0], TrafficZiFeiSubSettingActivity.b(this.a.a).l.split(",")[0], TrafficZiFeiSubSettingActivity.b(this.a.a).n.split(",")[0], TrafficZiFeiSubSettingActivity.b(this.a.a).m.split(",")[0]);
      if (i == 1)
        break label444;
      TrafficZiFeiSubSettingActivity.e(this.a.a).sendEmptyMessage(0);
      System.out.println("update failedfailed id=" + i);
    }
    while (true)
    {
      return;
      dc.e(TrafficZiFeiSubSettingActivity.b(this.a.a).k.split(",")[1].toString() + TrafficZiFeiSubSettingActivity.b(this.a.a).l.split(",")[1].toString());
      break;
      label444: a.a(this.a.a).a(System.currentTimeMillis());
      TrafficZiFeiSubSettingActivity.e(this.a.a).sendEmptyMessage(1);
      l.a(this.a.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.fj
 * JD-Core Version:    0.6.2
 */