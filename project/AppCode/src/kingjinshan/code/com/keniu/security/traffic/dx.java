package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.Vector;

final class dx extends Handler
{
  dx(TrafficXuanFuChuangStateReceiver paramTrafficXuanFuChuangStateReceiver)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if ((paramMessage.what == 0) && (TrafficXuanFuChuangStateReceiver.k != null))
    {
      TrafficXuanFuChuangStateReceiver.q(this.a).setVisibility(0);
      TrafficXuanFuChuangStateReceiver.a(this.a, (Vector)paramMessage.obj);
      TrafficXuanFuChuangStateReceiver.r(this.a).setText(2131428009);
      TrafficXuanFuChuangStateReceiver.C(this.a).setOnClickListener(new dy(this));
      if ((TrafficXuanFuChuangStateReceiver.D(this.a) != null) && (TrafficXuanFuChuangStateReceiver.D(this.a).size() != 0))
        break label116;
      TrafficXuanFuChuangStateReceiver.r(this.a).setVisibility(0);
      TrafficXuanFuChuangStateReceiver.q(this.a).setVisibility(8);
    }
    while (true)
    {
      return;
      label116: TrafficXuanFuChuangStateReceiver.r(this.a).setVisibility(8);
      TrafficXuanFuChuangStateReceiver.q(this.a).setVisibility(0);
      j localj = new j(TrafficXuanFuChuangStateReceiver.D(this.a), TrafficXuanFuChuangStateReceiver.c(this.a));
      TrafficXuanFuChuangStateReceiver.q(this.a).setAdapter(localj);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dx
 * JD-Core Version:    0.6.2
 */