package com.avg.tuneup.battery;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.a.g;
import com.avg.tuneup.traffic.s;
import com.avg.ui.general.a.a;

class t extends BaseAdapter
{
  private LayoutInflater b;
  private int[] c;

  public t(r paramr, Context paramContext)
  {
    this.b = LayoutInflater.from(paramContext);
    if (s.b(paramContext));
    for (this.c = new int[] { 0, 1, 2, 3, 4, 5 }; ; this.c = new int[] { 0, 3, 4, 5 })
      return;
  }

  private void a(int paramInt, u paramu)
  {
    switch (this.c[paramInt])
    {
    default:
    case 1:
    case 2:
    case 3:
    case 5:
    case 4:
    case 0:
    }
    while (true)
    {
      return;
      paramu.b.setText(r.a(this.a).getString(g.battery_talk_time_3_4_g));
      paramu.a.setImageResource(d.battery_time_3g);
      paramu.c.setText(r.b(this.a).c());
      continue;
      paramu.b.setText(r.c(this.a).getString(g.battery_talk_time_2_g));
      paramu.a.setImageResource(d.battery_time_2g);
      paramu.c.setText(r.b(this.a).d());
      continue;
      paramu.b.setText(r.d(this.a).getString(g.battery_audio_time));
      paramu.a.setImageResource(d.battery_time_audio);
      paramu.c.setText(r.b(this.a).e());
      continue;
      paramu.b.setText(r.e(this.a).getString(g.battery_web_time));
      paramu.a.setImageResource(d.battery_time_web);
      paramu.c.setText(r.b(this.a).g());
      continue;
      paramu.b.setText(r.f(this.a).getString(g.battery_video_time));
      paramu.a.setImageResource(d.battery_time_video);
      paramu.c.setText(r.b(this.a).f());
      continue;
      paramu.b.setText(r.g(this.a).getString(g.battery_idle_time));
      paramu.a.setImageResource(d.battery_time_idle);
      paramu.c.setText(r.b(this.a).h());
    }
  }

  public int getCount()
  {
    return this.c.length;
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
    u localu2;
    if (paramView == null)
    {
      paramView = this.b.inflate(f.battery_state_list_item, null);
      localu2 = new u(this);
      localu2.a = ((ImageView)paramView.findViewById(e.img_icon));
      localu2.b = ((TextView)paramView.findViewById(e.tv_title));
      localu2.c = ((TextView)paramView.findViewById(e.tv_value));
      paramView.setTag(localu2);
    }
    for (u localu1 = localu2; ; localu1 = (u)paramView.getTag())
    {
      a(paramInt, localu1);
      return paramView;
    }
  }

  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.battery.t
 * JD-Core Version:    0.6.2
 */