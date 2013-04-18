package com.keniu.security.traffic;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class dy
  implements View.OnClickListener
{
  dy(dx paramdx)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.b();
    Intent localIntent = new Intent();
    localIntent.setFlags(268435456);
    localIntent.setClass(TrafficXuanFuChuangStateReceiver.c(this.a.a), TrafficXuanFuChuangListActivity.class);
    TrafficXuanFuChuangStateReceiver.c(this.a.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dy
 * JD-Core Version:    0.6.2
 */