package com.keniu.security.traffic;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnLongClickListener;
import com.jxphone.mosecurity.a.a;

final class ds
  implements View.OnLongClickListener
{
  ds(TrafficXuanFuChuangStateReceiver paramTrafficXuanFuChuangStateReceiver)
  {
  }

  public final boolean onLongClick(View paramView)
  {
    boolean bool;
    if ((TrafficXuanFuChuangStateReceiver.a(this.a) >= 60.0F) || (TrafficXuanFuChuangStateReceiver.b(this.a) >= 60.0F))
      bool = true;
    while (true)
    {
      return bool;
      if (this.a.c())
      {
        bool = true;
      }
      else
      {
        a.c(TrafficXuanFuChuangStateReceiver.c(this.a), "3");
        Intent localIntent = new Intent();
        localIntent.putExtra("extra_to_main", true);
        localIntent.setClass(TrafficXuanFuChuangStateReceiver.c(this.a), TrafficTabActivity.class);
        localIntent.setFlags(268435456);
        TrafficXuanFuChuangStateReceiver.c(this.a).startActivity(localIntent);
        bool = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ds
 * JD-Core Version:    0.6.2
 */