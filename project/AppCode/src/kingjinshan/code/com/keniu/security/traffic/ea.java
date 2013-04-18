package com.keniu.security.traffic;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class ea
  implements View.OnClickListener
{
  ea(TrafficXuanFuChuangStateReceiver paramTrafficXuanFuChuangStateReceiver)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(TrafficXuanFuChuangStateReceiver.c(this.a), TrafficTabActivity.class);
    localIntent.setFlags(268435456);
    TrafficXuanFuChuangStateReceiver.c(this.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.ea
 * JD-Core Version:    0.6.2
 */