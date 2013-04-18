package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import android.widget.TextView;
import com.keniu.security.util.aw;
import java.io.PrintStream;
import java.util.Vector;

final class dq extends Handler
{
  dq(TrafficXuanFuChuangListActivity paramTrafficXuanFuChuangListActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (TrafficXuanFuChuangListActivity.a(this.a) != null)
      TrafficXuanFuChuangListActivity.a(this.a).a();
    if (TrafficXuanFuChuangListActivity.b(this.a))
      System.out.println("paused ------reurn");
    while (true)
    {
      return;
      switch (paramMessage.what)
      {
      default:
        break;
      case 0:
        System.out.println("receiver msg COMPLETE");
        TrafficXuanFuChuangListActivity.c(this.a).setVisibility(8);
        TrafficXuanFuChuangListActivity.a(this.a, (Vector)paramMessage.obj);
        if (TrafficXuanFuChuangListActivity.d(this.a) == null)
        {
          TrafficXuanFuChuangListActivity.a(this.a, new dn(this.a, TrafficXuanFuChuangListActivity.e(this.a)));
          TrafficXuanFuChuangListActivity.f(this.a).setAdapter(TrafficXuanFuChuangListActivity.d(this.a));
        }
        else
        {
          TrafficXuanFuChuangListActivity.d(this.a).a(TrafficXuanFuChuangListActivity.e(this.a));
          TrafficXuanFuChuangListActivity.d(this.a).notifyDataSetChanged();
        }
        break;
      case 1:
        if (TrafficXuanFuChuangListActivity.e(this.a) != null)
        {
          TrafficXuanFuChuangListActivity.e(this.a).clear();
          TrafficXuanFuChuangListActivity.d(this.a).notifyDataSetChanged();
        }
        TrafficXuanFuChuangListActivity.c(this.a).setVisibility(0);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dq
 * JD-Core Version:    0.6.2
 */