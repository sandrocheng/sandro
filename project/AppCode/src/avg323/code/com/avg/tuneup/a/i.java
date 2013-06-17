package com.avg.tuneup.a;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.avg.a.d;
import com.avg.a.e;
import com.avg.a.f;
import com.avg.tuneup.j;
import com.avg.ui.general.a.a;
import java.util.ArrayList;

class i extends com.avg.ui.general.b.g
{
  private LayoutInflater g;
  private Context h;

  public i(c paramc, Context paramContext, ArrayList paramArrayList)
  {
    super(paramContext, paramArrayList);
    this.g = LayoutInflater.from(paramContext);
    this.h = paramContext;
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    com.avg.ui.general.b.i locali;
    if (paramView == null)
    {
      paramView = this.g.inflate(f.settings_list_item, null);
      locali = new com.avg.ui.general.b.i(this);
      locali.a = ((ImageView)paramView.findViewById(e.icon));
      locali.b = ((TextView)paramView.findViewById(e.title));
      locali.c = ((TextView)paramView.findViewById(e.summary));
      locali.e = ((ImageView)paramView.findViewById(e.check));
      locali.f = ((LinearLayout)paramView.findViewById(e.ll_selection));
      LinearLayout localLinearLayout = (LinearLayout)paramView.findViewById(e.ll_texts);
      locali.d = new TextView(this.h);
      ((TextView)locali.d).setTextAppearance(this.h, com.avg.a.h.ListItemMoreInfo);
      localLinearLayout.addView(locali.d);
      paramView.setTag(locali);
      locali.d.setVisibility(8);
      switch (((com.avg.ui.general.b.h)this.b.get(paramInt)).a)
      {
      default:
        label216: if (!this.c)
        {
          locali.e.setVisibility(8);
          locali.c.setVisibility(8);
          locali.d.setVisibility(8);
          locali.a.setVisibility(8);
          locali.b.setPadding(this.e, this.d, 0, this.d);
          locali.f.setVisibility(4);
          paramView.setBackgroundResource(17170445);
          if (((com.avg.ui.general.b.h)this.b.get(paramInt)).a == c.t(this.a))
          {
            locali.f.setVisibility(0);
            paramView.setBackgroundResource(com.avg.a.c.selected_list_item_bg);
          }
        }
        break;
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      return paramView;
      locali = (com.avg.ui.general.b.i)paramView.getTag();
      break;
      a(c.h(this.a), locali, 0, d.list_ic_task_killer, com.avg.a.g.title_task_killer_preference, com.avg.a.g.summary_task_killer_preference, d.list_goto);
      locali.d.setVisibility(0);
      ((TextView)locali.d).setText(c.i(this.a));
      ((TextView)locali.d).setTextColor(-1);
      break label216;
      a(c.j(this.a), locali, 1, d.list_ic_battery, com.avg.a.g.performance_battery, com.avg.a.g.performance_battery_desc, d.list_goto);
      String str1 = c.k(this.a).getString(com.avg.a.g.battery_status) + " " + c.l(this.a) + "\n";
      String str2 = str1 + c.m(this.a).getString(com.avg.a.g.performance_battery_level) + " " + c.n(this.a) + "%";
      ((TextView)locali.d).setText(str2);
      locali.d.setVisibility(0);
      if ((j.n()) && (c.n(this.a) <= j.o()))
      {
        ((TextView)locali.d).setTextColor(this.a.i().getColor(com.avg.a.c.orange_warning));
        break label216;
      }
      ((TextView)locali.d).setTextColor(-1);
      break label216;
      a(c.o(this.a), locali, 2, d.list_ic_traffic, com.avg.a.g.performance_traffic, com.avg.a.g.performance_traffic_desc, d.list_goto);
      if (c.p(this.a).equals(""))
        break label216;
      locali.d.setVisibility(0);
      ((TextView)locali.d).setText(c.p(this.a));
      ((TextView)locali.d).setTextColor(c.q(this.a));
      break label216;
      a(c.r(this.a), locali, 3, d.list_ic_storage, com.avg.a.g.performance_storage, com.avg.a.g.performance_storage_desc, d.list_goto);
      locali.d.setVisibility(0);
      ((TextView)locali.d).setText(c.s(this.a));
      ((TextView)locali.d).setTextColor(-1);
      break label216;
      locali.e.setVisibility(0);
      locali.c.setVisibility(0);
      locali.d.setVisibility(0);
      locali.a.setVisibility(0);
      locali.f.setVisibility(8);
      if (((com.avg.ui.general.b.h)this.b.get(paramInt)).a != c.t(this.a))
        paramView.setBackgroundResource(17170445);
      locali.b.setPadding(0, 0, 0, 0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avg.tuneup.a.i
 * JD-Core Version:    0.6.2
 */