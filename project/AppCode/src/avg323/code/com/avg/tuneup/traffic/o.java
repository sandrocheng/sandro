package com.avg.tuneup.traffic;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.avg.a.b;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.a.g;
import com.avg.tuneup.j;
import com.avg.ui.general.c.i;
import java.text.DateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

class o extends BaseAdapter
{
  private LayoutInflater b;
  private int c;
  private LinearLayout.LayoutParams d;

  public o(a parama, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    this.c = (10 * i.a(((WindowManager)a.r(parama).getSystemService("window")).getDefaultDisplay()) / 160);
    this.d = new LinearLayout.LayoutParams(-1, -2);
    this.d.leftMargin = this.c;
    this.d.rightMargin = this.c;
  }

  private void a(int paramInt, q paramq)
  {
    paramq.b.setVisibility(0);
    paramq.b.setEnabled(true);
    paramq.c.setVisibility(0);
    paramq.a.setVisibility(0);
    paramq.d.setVisibility(8);
    paramq.d.setOnClickListener(new p(this, paramq, paramInt));
    switch (paramInt)
    {
    default:
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    }
    while (true)
    {
      return;
      String[] arrayOfString3 = this.a.i().getStringArray(b.traffic_quota_units);
      paramq.b.setText(a.s(this.a).getString(g.traffic_quota));
      paramq.c.setText(a.t(this.a) + arrayOfString3[a.e(this.a)]);
      paramq.a.setImageResource(d.more_details);
      continue;
      String[] arrayOfString2 = this.a.i().getStringArray(b.traffic_cycle_units);
      paramq.b.setText(a.u(this.a).getString(g.traffic_package_cycle));
      paramq.c.setText(a.v(this.a) + " " + arrayOfString2[a.f(this.a)]);
      paramq.a.setImageResource(d.more_details);
      continue;
      paramq.b.setText(a.w(this.a).getString(g.traffic_billing_date));
      paramq.c.setText(DateFormat.getDateInstance(1, Locale.getDefault()).format(new Date(a.c(this.a).getTimeInMillis())));
      paramq.a.setImageResource(d.more_details);
      continue;
      String[] arrayOfString1 = this.a.i().getStringArray(b.traffic_refresh_rate_arr);
      paramq.b.setText(a.x(this.a).getString(g.traffic_refresh_rate));
      paramq.c.setText(arrayOfString1[a.y(this.a)]);
      paramq.a.setImageResource(d.more_details);
      continue;
      paramq.b.setVisibility(8);
      paramq.a.setVisibility(8);
      paramq.c.setVisibility(8);
      paramq.d.setVisibility(0);
      paramq.d.setText(a.z(this.a).getString(g.traffic_restart_count));
      paramq.d.setChecked(j.g());
      continue;
      paramq.b.setText(a.A(this.a).getString(g.traffic_usage_reaches));
      if (j.i())
        paramq.c.setText(a.B(this.a) + "%");
      while (true)
      {
        paramq.a.setImageResource(d.more_details);
        break;
        paramq.c.setText(a.C(this.a).getString(g.off));
      }
      paramq.b.setVisibility(8);
      paramq.a.setVisibility(8);
      paramq.c.setVisibility(8);
      paramq.d.setVisibility(0);
      paramq.d.setText(a.D(this.a).getString(g.traffic_ongoing_notification));
      paramq.d.setChecked(j.m());
    }
  }

  private void a(int paramInt, boolean paramBoolean)
  {
    switch (paramInt)
    {
    case 5:
    default:
    case 4:
    case 6:
    }
    do
      while (true)
      {
        return;
        if (paramBoolean != j.g())
          j.b(paramBoolean);
      }
    while (paramBoolean == j.m());
    j.d(paramBoolean);
    com.avg.ui.general.a.a locala = a.E(this.a);
    if (paramBoolean);
    for (String str = "on"; ; str = "off")
    {
      com.avg.toolkit.c.a.a(locala, "data_usage_settings", "show_data_usage_notification", str, 0);
      break;
    }
  }

  public int getCount()
  {
    return 7;
  }

  public Object getItem(int paramInt)
  {
    return null;
  }

  public long getItemId(int paramInt)
  {
    return paramInt;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    q localq2;
    if (paramView == null)
    {
      paramView = this.b.inflate(f.battery_state_list_item, null);
      localq2 = new q(this);
      localq2.a = ((ImageView)paramView.findViewById(e.img_more_details));
      localq2.b = ((TextView)paramView.findViewById(e.tv_title));
      localq2.b.setLayoutParams(this.d);
      localq2.c = ((TextView)paramView.findViewById(e.tv_description));
      localq2.c.setLayoutParams(this.d);
      localq2.d = ((CheckedTextView)paramView.findViewById(e.ctv_option));
      localq2.d.setLayoutParams(this.d);
      paramView.findViewById(e.tv_value).setVisibility(8);
      paramView.findViewById(e.img_icon).setVisibility(8);
      paramView.findViewById(e.cb_state).setVisibility(8);
      paramView.setTag(localq2);
    }
    for (q localq1 = localq2; ; localq1 = (q)paramView.getTag())
    {
      a(paramInt, localq1);
      return paramView;
    }
  }

  public boolean isEnabled(int paramInt)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.traffic.o
 * JD-Core Version:    0.6.2
 */