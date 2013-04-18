package com.keniu.security.traffic;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class dw
  implements View.OnClickListener
{
  dw(dv paramdv)
  {
  }

  public final void onClick(View paramView)
  {
    this.a.a.b();
    this.a.a.d();
    Intent localIntent = new Intent();
    localIntent.setClass(TrafficXuanFuChuangStateReceiver.c(this.a.a), TrafficTabActivity.class);
    localIntent.setFlags(268435456);
    TrafficXuanFuChuangStateReceiver.c(this.a.a).startActivity(localIntent);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dw
 * JD-Core Version:    0.6.2
 */