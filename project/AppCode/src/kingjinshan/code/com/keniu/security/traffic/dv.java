package com.keniu.security.traffic;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.keniu.security.util.at;
import com.keniu.security.util.ax;

final class dv
  implements dc
{
  dv(TrafficXuanFuChuangStateReceiver paramTrafficXuanFuChuangStateReceiver)
  {
  }

  public final boolean a(int paramInt)
  {
    if (paramInt == 2)
    {
      if (at.c(TrafficXuanFuChuangStateReceiver.c(this.a)))
        break label48;
      if (TrafficXuanFuChuangStateReceiver.j != null)
        TrafficXuanFuChuangStateReceiver.j.setVisibility(8);
      if (TrafficXuanFuChuangStateReceiver.k != null)
        TrafficXuanFuChuangStateReceiver.k.setVisibility(8);
    }
    return true;
    label48: if (TrafficXuanFuChuangStateReceiver.j != null)
    {
      TrafficXuanFuChuangStateReceiver.j.setVisibility(0);
      TrafficXuanFuChuangStateReceiver.m(this.a).setVisibility(0);
      if (!at.a(TrafficXuanFuChuangStateReceiver.c(this.a)))
        break label871;
      TrafficXuanFuChuangStateReceiver.m(this.a).setImageResource(2130837783);
      label97: TrafficXuanFuChuangStateReceiver localTrafficXuanFuChuangStateReceiver3 = this.a;
      TrafficXuanFuChuangStateReceiver.c(this.a);
      long l2 = z.c();
      TrafficXuanFuChuangStateReceiver.c(this.a);
      TrafficXuanFuChuangStateReceiver.a(localTrafficXuanFuChuangStateReceiver3, l2 + z.b());
      if (TrafficXuanFuChuangStateReceiver.n(this.a) <= TrafficXuanFuChuangStateReceiver.o(this.a))
        break label900;
      TrafficXuanFuChuangStateReceiver.e();
      TrafficXuanFuChuangStateReceiver.p(this.a).setText(ax.e(TrafficXuanFuChuangStateReceiver.n(this.a) - TrafficXuanFuChuangStateReceiver.o(this.a)) + "/S");
      label204: TrafficXuanFuChuangStateReceiver.b(this.a, TrafficXuanFuChuangStateReceiver.n(this.a));
      y localy3 = y.a(TrafficXuanFuChuangStateReceiver.c(this.a));
      if ((localy3.r) && (localy3.s))
      {
        if (TrafficXuanFuChuangStateReceiver.g() < 20)
          break label1016;
        TrafficXuanFuChuangStateReceiver.j.setVisibility(8);
      }
    }
    label263: if (TrafficXuanFuChuangStateReceiver.k != null)
    {
      TrafficXuanFuChuangStateReceiver.k.setVisibility(0);
      TrafficXuanFuChuangStateReceiver localTrafficXuanFuChuangStateReceiver1 = this.a;
      TrafficXuanFuChuangStateReceiver.c(this.a);
      TrafficXuanFuChuangStateReceiver.c(localTrafficXuanFuChuangStateReceiver1, z.b());
      TrafficXuanFuChuangStateReceiver localTrafficXuanFuChuangStateReceiver2 = this.a;
      TrafficXuanFuChuangStateReceiver.c(this.a);
      TrafficXuanFuChuangStateReceiver.d(localTrafficXuanFuChuangStateReceiver2, z.c());
      if (TrafficXuanFuChuangStateReceiver.q(this.a) == null)
        TrafficXuanFuChuangStateReceiver.a(this.a, (ClickableGridView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231764));
      if (TrafficXuanFuChuangStateReceiver.r(this.a) == null)
        TrafficXuanFuChuangStateReceiver.a(this.a, (TextView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231096));
      if (TrafficXuanFuChuangStateReceiver.s(this.a) == null)
        TrafficXuanFuChuangStateReceiver.b(this.a, (TextView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231759));
      TrafficXuanFuChuangStateReceiver.s(this.a).setVisibility(0);
      if (TrafficXuanFuChuangStateReceiver.t(this.a) == null)
        TrafficXuanFuChuangStateReceiver.c(this.a, (TextView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231761));
      TrafficXuanFuChuangStateReceiver.t(this.a).setVisibility(0);
      if (TrafficXuanFuChuangStateReceiver.u(this.a) == null)
        TrafficXuanFuChuangStateReceiver.d(this.a, (TextView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231762));
      TrafficXuanFuChuangStateReceiver.u(this.a).setVisibility(0);
      if (TrafficXuanFuChuangStateReceiver.v(this.a) == null)
        TrafficXuanFuChuangStateReceiver.e(this.a, (TextView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231760));
      TrafficXuanFuChuangStateReceiver.v(this.a).setVisibility(8);
      if (TrafficXuanFuChuangStateReceiver.w(this.a) == null)
        TrafficXuanFuChuangStateReceiver.a(this.a, (ImageView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231758));
      if (TrafficXuanFuChuangStateReceiver.x(this.a) == null)
        TrafficXuanFuChuangStateReceiver.b(this.a, (ImageView)TrafficXuanFuChuangStateReceiver.k.findViewById(2131231757));
      if (!at.b(TrafficXuanFuChuangStateReceiver.c(this.a)))
        break label1151;
      if (TrafficXuanFuChuangStateReceiver.x(this.a).getDrawable().getConstantState() != TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838057).getConstantState())
        break label1026;
      TrafficXuanFuChuangStateReceiver.x(this.a).setImageDrawable(TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838058));
      label671: TrafficXuanFuChuangStateReceiver.x(this.a).setVisibility(0);
      TrafficXuanFuChuangStateReceiver.w(this.a).setVisibility(8);
      WifiManager localWifiManager = (WifiManager)TrafficXuanFuChuangStateReceiver.c(this.a).getSystemService("wifi");
      TrafficXuanFuChuangStateReceiver.s(this.a).setText("当前网络：" + localWifiManager.getConnectionInfo().getSSID());
      TrafficXuanFuChuangStateReceiver.t(this.a).setText("本次连接：");
      y localy2 = y.a(TrafficXuanFuChuangStateReceiver.c(this.a));
      long l1 = System.currentTimeMillis() - localy2.t;
      String str = l1 / 3600000L + "小时" + l1 % 3600000L / 60000L + "分钟";
      TrafficXuanFuChuangStateReceiver.u(this.a).setText(str);
    }
    while (true)
    {
      TrafficXuanFuChuangStateReceiver.e(this.a, TrafficXuanFuChuangStateReceiver.y(this.a));
      TrafficXuanFuChuangStateReceiver.f(this.a, TrafficXuanFuChuangStateReceiver.A(this.a));
      break;
      label871: if (!at.b(TrafficXuanFuChuangStateReceiver.c(this.a)))
        break label97;
      TrafficXuanFuChuangStateReceiver.m(this.a).setImageResource(2130837786);
      break label97;
      label900: if (TrafficXuanFuChuangStateReceiver.n(this.a) == TrafficXuanFuChuangStateReceiver.o(this.a))
      {
        TrafficXuanFuChuangStateReceiver.p(this.a).setText(ax.e(TrafficXuanFuChuangStateReceiver.n(this.a) - TrafficXuanFuChuangStateReceiver.o(this.a)) + "/S");
        TrafficXuanFuChuangStateReceiver.f();
        break label204;
      }
      TrafficXuanFuChuangStateReceiver.e();
      TrafficXuanFuChuangStateReceiver.p(this.a).setText(ax.e(TrafficXuanFuChuangStateReceiver.n(this.a)) + "/S");
      break label204;
      label1016: TrafficXuanFuChuangStateReceiver.j.setVisibility(0);
      break label263;
      label1026: if (TrafficXuanFuChuangStateReceiver.x(this.a).getDrawable().getConstantState() == TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838058).getConstantState())
      {
        TrafficXuanFuChuangStateReceiver.x(this.a).setImageDrawable(TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838059));
        break label671;
      }
      TrafficXuanFuChuangStateReceiver.x(this.a).getDrawable().getConstantState();
      TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838059).getConstantState();
      TrafficXuanFuChuangStateReceiver.x(this.a).setImageDrawable(TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838057));
      break label671;
      label1151: TrafficXuanFuChuangStateReceiver.x(this.a).setVisibility(0);
      TrafficXuanFuChuangStateReceiver.w(this.a).setVisibility(0);
      TrafficXuanFuChuangStateReceiver.s(this.a).setText("当前网络：2G/3G");
      TrafficXuanFuChuangStateReceiver.t(this.a).setText("本月已用：");
      TrafficXuanFuChuangStateReceiver.u(this.a).setText(ax.c(dd.a));
      y localy1 = y.a(TrafficXuanFuChuangStateReceiver.c(this.a));
      if (dd.a > localy1.d)
      {
        TrafficXuanFuChuangStateReceiver.v(this.a).setVisibility(0);
        TrafficXuanFuChuangStateReceiver.v(this.a).setOnClickListener(new dw(this));
        label1268: if (TrafficXuanFuChuangStateReceiver.y(this.a) <= TrafficXuanFuChuangStateReceiver.z(this.a))
          break label1374;
        TrafficXuanFuChuangStateReceiver.x(this.a).setImageDrawable(TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838055));
      }
      while (true)
      {
        if (TrafficXuanFuChuangStateReceiver.A(this.a) <= TrafficXuanFuChuangStateReceiver.B(this.a))
          break label1403;
        TrafficXuanFuChuangStateReceiver.w(this.a).setImageDrawable(TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838052));
        break;
        TrafficXuanFuChuangStateReceiver.v(this.a).setVisibility(8);
        break label1268;
        label1374: TrafficXuanFuChuangStateReceiver.x(this.a).setImageDrawable(TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838056));
      }
      label1403: TrafficXuanFuChuangStateReceiver.w(this.a).setImageDrawable(TrafficXuanFuChuangStateReceiver.c(this.a).getResources().getDrawable(2130838053));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.dv
 * JD-Core Version:    0.6.2
 */