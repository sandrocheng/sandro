package com.keniu.security.traffic;

import android.os.Handler;
import android.text.TextUtils;
import cn.com.wali.zft.plugin;
import com.keniu.security.a;

final class bd extends Thread
{
  bd(TrafficMainActivity paramTrafficMainActivity)
  {
  }

  public final void run()
  {
    y localy = y.a(this.a.getApplicationContext());
    String str1 = "";
    String str2 = "";
    String str3 = "";
    if (!TextUtils.isEmpty(localy.k))
      str1 = localy.k.split(",")[0];
    if (!TextUtils.isEmpty(localy.l))
      str2 = localy.l.split(",")[0];
    if (!TextUtils.isEmpty(localy.n))
      str3 = localy.n.split(",")[0];
    if (!TextUtils.isEmpty(localy.m));
    for (String str4 = localy.m.split(",")[0]; ; str4 = "")
    {
      if (plugin.getInstance().update(str1, str2, str3, str4) != 1)
        TrafficMainActivity.o(this.a).sendEmptyMessage(0);
      while (true)
      {
        return;
        a.a(this.a.getApplicationContext()).a(System.currentTimeMillis());
        TrafficMainActivity.o(this.a).sendEmptyMessage(1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.bd
 * JD-Core Version:    0.6.2
 */