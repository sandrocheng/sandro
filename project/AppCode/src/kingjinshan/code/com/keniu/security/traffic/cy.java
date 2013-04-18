package com.keniu.security.traffic;

import android.os.Handler;
import android.os.Message;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import java.text.DateFormat;
import java.util.Date;
import java.util.Vector;

final class cy extends Handler
{
  cy(TrafficSoftListActivity2 paramTrafficSoftListActivity2)
  {
  }

  private void a(Vector paramVector)
  {
    String str1;
    String str2;
    if ((paramVector != null) && (paramVector.size() > 0))
    {
      TrafficSoftListActivity2.a(this.a, new cz(this.a, paramVector));
      if (TrafficSoftListActivity2.i(this.a) == null)
        TrafficSoftListActivity2.a(this.a, (RadioGroup)this.a.findViewById(2131231713));
      TrafficSoftListActivity2.i(this.a).setVisibility(0);
      TrafficSoftListActivity2.i(this.a).check(2131231714);
      if (TrafficSoftListActivity2.f(this.a) == null)
        TrafficSoftListActivity2.a(this.a, this.a.getListView());
      TrafficSoftListActivity2.f(this.a).setAdapter(TrafficSoftListActivity2.b(this.a));
      TrafficSoftListActivity2.f(this.a).setVisibility(0);
      if (TrafficSoftListActivity2.j(this.a) == null)
        TrafficSoftListActivity2.a(this.a, (TextView)this.a.findViewById(2131231719));
      TrafficSoftListActivity2.j(this.a).setVisibility(8);
      y localy = y.a(this.a.getApplicationContext());
      if (localy.j > System.currentTimeMillis())
        break label445;
      Date localDate = new Date(localy.j);
      str1 = DateFormat.getDateInstance(2).format(localDate);
      str2 = DateFormat.getDateInstance(2).format(new Date());
    }
    label445: String str3;
    for (Object localObject = str1; ; localObject = str3)
    {
      if (TrafficSoftListActivity2.k(this.a) == null)
        TrafficSoftListActivity2.b(this.a, (TextView)this.a.findViewById(2131231716));
      TrafficSoftListActivity2.k(this.a).setText((String)localObject + "至" + str2);
      TrafficSoftListActivity2.k(this.a).setVisibility(0);
      if (TrafficSoftListActivity2.l(this.a) == null)
        TrafficSoftListActivity2.c(this.a, (TextView)this.a.findViewById(2131231717));
      TrafficSoftListActivity2.l(this.a).setVisibility(0);
      if (TrafficSoftListActivity2.m(this.a) == null)
        TrafficSoftListActivity2.a(this.a, (RelativeLayout)this.a.findViewById(2131231718));
      TrafficSoftListActivity2.m(this.a).setVisibility(0);
      if (TrafficSoftListActivity2.n(this.a) == null)
        TrafficSoftListActivity2.a(this.a, (ImageView)this.a.findViewById(2131231185));
      TrafficSoftListActivity2.n(this.a).setVisibility(0);
      return;
      str3 = DateFormat.getDateInstance(2).format(new Date());
      str2 = DateFormat.getDateInstance(2).format(new Date());
    }
  }

  public final void handleMessage(Message paramMessage)
  {
    String str1;
    String str2;
    switch (paramMessage.what)
    {
    default:
    case 0:
      while (true)
      {
        return;
        TrafficSoftListActivity2.a(this.a, (Vector)paramMessage.obj);
      }
    case 1:
      TrafficSoftListActivity2.b(this.a, (Vector)paramMessage.obj);
    case 3:
      Vector localVector = TrafficSoftListActivity2.a(this.a);
      if ((localVector != null) && (localVector.size() > 0))
      {
        TrafficSoftListActivity2.a(this.a, new cz(this.a, localVector));
        if (TrafficSoftListActivity2.i(this.a) == null)
          TrafficSoftListActivity2.a(this.a, (RadioGroup)this.a.findViewById(2131231713));
        TrafficSoftListActivity2.i(this.a).setVisibility(0);
        TrafficSoftListActivity2.i(this.a).check(2131231714);
        if (TrafficSoftListActivity2.f(this.a) == null)
          TrafficSoftListActivity2.a(this.a, this.a.getListView());
        TrafficSoftListActivity2.f(this.a).setAdapter(TrafficSoftListActivity2.b(this.a));
        TrafficSoftListActivity2.f(this.a).setVisibility(0);
        if (TrafficSoftListActivity2.j(this.a) == null)
          TrafficSoftListActivity2.a(this.a, (TextView)this.a.findViewById(2131231719));
        TrafficSoftListActivity2.j(this.a).setVisibility(8);
        y localy = y.a(this.a.getApplicationContext());
        if (localy.j > System.currentTimeMillis())
          break label562;
        Date localDate = new Date(localy.j);
        str1 = DateFormat.getDateInstance(2).format(localDate);
        str2 = DateFormat.getDateInstance(2).format(new Date());
      }
      break;
    case 2:
    }
    label562: String str3;
    for (Object localObject = str1; ; localObject = str3)
    {
      if (TrafficSoftListActivity2.k(this.a) == null)
        TrafficSoftListActivity2.b(this.a, (TextView)this.a.findViewById(2131231716));
      TrafficSoftListActivity2.k(this.a).setText((String)localObject + "至" + str2);
      TrafficSoftListActivity2.k(this.a).setVisibility(0);
      if (TrafficSoftListActivity2.l(this.a) == null)
        TrafficSoftListActivity2.c(this.a, (TextView)this.a.findViewById(2131231717));
      TrafficSoftListActivity2.l(this.a).setVisibility(0);
      if (TrafficSoftListActivity2.m(this.a) == null)
        TrafficSoftListActivity2.a(this.a, (RelativeLayout)this.a.findViewById(2131231718));
      TrafficSoftListActivity2.m(this.a).setVisibility(0);
      if (TrafficSoftListActivity2.n(this.a) == null)
        TrafficSoftListActivity2.a(this.a, (ImageView)this.a.findViewById(2131231185));
      TrafficSoftListActivity2.n(this.a).setVisibility(0);
      TrafficSoftListActivity2.h(this.a).setVisibility(8);
      break;
      TrafficSoftListActivity2.e(this.a);
      TrafficSoftListActivity2.h(this.a).setVisibility(8);
      break;
      str3 = DateFormat.getDateInstance(2).format(new Date());
      str2 = DateFormat.getDateInstance(2).format(new Date());
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cy
 * JD-Core Version:    0.6.2
 */