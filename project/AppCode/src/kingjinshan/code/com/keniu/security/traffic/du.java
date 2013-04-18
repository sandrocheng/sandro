package com.keniu.security.traffic;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

final class du
  implements View.OnTouchListener
{
  du(TrafficXuanFuChuangStateReceiver paramTrafficXuanFuChuangStateReceiver)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    switch (paramMotionEvent.getAction())
    {
    case 1:
    default:
    case 0:
    case 2:
    }
    while (true)
    {
      return false;
      TrafficXuanFuChuangStateReceiver.e(this.a);
      TrafficXuanFuChuangStateReceiver.f(this.a);
      TrafficXuanFuChuangStateReceiver.a(this.a, paramMotionEvent.getRawX());
      TrafficXuanFuChuangStateReceiver.b(this.a, paramMotionEvent.getRawY());
      continue;
      TrafficXuanFuChuangStateReceiver.c(this.a, paramMotionEvent.getRawX() - TrafficXuanFuChuangStateReceiver.g(this.a));
      TrafficXuanFuChuangStateReceiver.d(this.a, paramMotionEvent.getRawY() - TrafficXuanFuChuangStateReceiver.h(this.a));
      TrafficXuanFuChuangStateReceiver.e(this.a, Math.abs(TrafficXuanFuChuangStateReceiver.i(this.a)));
      TrafficXuanFuChuangStateReceiver.f(this.a, Math.abs(TrafficXuanFuChuangStateReceiver.j(this.a)));
      TrafficXuanFuChuangStateReceiver.a(this.a, paramMotionEvent.getRawX());
      TrafficXuanFuChuangStateReceiver.b(this.a, paramMotionEvent.getRawY());
      if ((Math.abs(TrafficXuanFuChuangStateReceiver.i(this.a)) >= 4.0F) || (Math.abs(TrafficXuanFuChuangStateReceiver.j(this.a)) >= 4.0F))
      {
        this.a.a(TrafficXuanFuChuangStateReceiver.i(this.a), TrafficXuanFuChuangStateReceiver.j(this.a));
        TrafficXuanFuChuangStateReceiver.k(this.a);
        TrafficXuanFuChuangStateReceiver.l(this.a);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.du
 * JD-Core Version:    0.6.2
 */