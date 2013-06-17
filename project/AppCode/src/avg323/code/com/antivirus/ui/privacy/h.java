package com.antivirus.ui.privacy;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.antivirus.m;
import com.antivirus.ui.i;
import com.antivirus.ui.j;
import com.avg.toolkit.e.e;
import com.avg.ui.general.s;
import java.util.ArrayList;

class h extends com.antivirus.ui.h
{
  private final int g = 1;
  private final int h = 2;
  private LayoutInflater i;
  private Context j;

  public h(b paramb, Context paramContext)
  {
    super(paramContext, b.a(paramb));
    this.i = LayoutInflater.from(paramContext);
    this.j = paramContext;
  }

  private void a(j paramj, int paramInt, View paramView, i parami)
  {
    if (!this.c)
    {
      paramj.a.setVisibility(8);
      paramj.d.setVisibility(8);
      paramj.c.setVisibility(8);
      paramj.f.setVisibility(8);
      paramj.e.setVisibility(8);
      paramj.g.setVisibility(4);
      paramView.setBackgroundResource(17170445);
      if (((i)this.a.get(paramInt)).a == b.t(this.b))
      {
        paramj.g.setVisibility(0);
        paramView.setBackgroundResource(2131165248);
      }
      paramj.b.setPadding(this.e, this.d, 0, this.d);
      return;
    }
    paramj.a.setVisibility(0);
    paramj.d.setVisibility(0);
    paramj.c.setVisibility(8);
    paramj.f.setVisibility(0);
    paramj.g.setVisibility(8);
    if (((i)this.a.get(paramInt)).a != b.t(this.b))
      paramView.setBackgroundResource(17170445);
    s locals = s.a(((i)b.a(this.b).get(paramInt)).a);
    switch (g.a[locals.ordinal()])
    {
    default:
    case 1:
    case 2:
    }
    while (true)
    {
      if (parami.c)
        paramj.c.setVisibility(0);
      paramj.b.setPadding(0, 0, 0, 0);
      break;
      paramj.e.setVisibility(0);
      paramj.e.findViewById(1).setVisibility(8);
      if ((com.antivirus.c.b(b.u(this.b).getApplicationContext()).length() != 0) && (b.e(this.b) > 0))
      {
        paramj.e.setVisibility(0);
        paramj.e.findViewById(1).setVisibility(0);
      }
      while (e.a().d == com.avg.toolkit.e.c.a)
      {
        paramView.setVisibility(8);
        break;
        if (b.e(this.b) != 0)
          paramj.e.setVisibility(8);
      }
      if (e.a().h == com.avg.toolkit.e.c.a)
        paramView.setVisibility(8);
    }
  }

  public int a()
  {
    return this.f;
  }

  public void a(int paramInt)
  {
    this.f = paramInt;
  }

  public int getCount()
  {
    return b.a(this.b).size();
  }

  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    j localj;
    i locali;
    s locals;
    if (paramView == null)
    {
      paramView = this.i.inflate(2130903097, null);
      localj = new j(this);
      localj.a = ((ImageView)paramView.findViewById(2131230924));
      localj.b = ((TextView)paramView.findViewById(2131230733));
      localj.d = ((TextView)paramView.findViewById(2131230999));
      localj.f = ((ImageView)paramView.findViewById(2131230925));
      localj.e = new LinearLayout(this.j);
      localj.g = ((LinearLayout)paramView.findViewById(2131230995));
      ((LinearLayout)localj.e).setGravity(16);
      localj.c = new TextView(this.j.getApplicationContext());
      localj.c.setPadding(10, 0, 10, 0);
      ((LinearLayout)paramView.findViewById(2131230998)).addView(localj.c);
      ((LinearLayout)paramView.findViewById(2131230997)).addView(localj.e);
      ImageView localImageView = new ImageView(this.j);
      localImageView.setId(1);
      localImageView.setImageResource(2130837772);
      ((LinearLayout)localj.e).addView(localImageView);
      TextView localTextView5 = new TextView(this.j);
      localTextView5.setTextAppearance(this.j, 2131099667);
      localTextView5.setId(2);
      ((LinearLayout)localj.e).addView(localTextView5);
      paramView.setTag(localj);
      localj.e.setVisibility(8);
      localj.c.setVisibility(8);
      locali = (i)b.a(this.b).get(paramInt);
      locals = s.a(((i)b.a(this.b).get(paramInt)).a);
      switch (g.a[locals.ordinal()])
      {
      default:
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      }
    }
    while (true)
    {
      a(localj, paramInt, paramView, locali);
      return paramView;
      localj = (j)paramView.getTag();
      break;
      a(b.b(this.b), localj, locals.a(), 2130837601, 2131296528, 2131296529, 2130837778);
      localj.e.setVisibility(0);
      localj.e.findViewById(1).setVisibility(8);
      if (com.antivirus.c.b(b.c(this.b).getApplicationContext()).length() == 0)
      {
        TextView localTextView4 = (TextView)localj.e.findViewById(2);
        localTextView4.setText(m.a(b.d(this.b), 2131296785));
        localTextView4.setTextColor(this.b.i().getColor(2131165246));
        label525: if (locali.c)
        {
          if (!locali.b)
            break label873;
          localj.c.setVisibility(0);
          localj.c.setText(m.a(b.i(this.b), 2131296790));
          localj.c.setTextAppearance(this.j, 2131099669);
          localj.c.setBackgroundColor(this.b.i().getColor(2131165246));
        }
      }
      while (e.a().d == com.avg.toolkit.e.c.a)
      {
        paramView.setVisibility(8);
        break;
        if (b.e(this.b) > 0)
        {
          ((ImageView)localj.e.findViewById(1)).setVisibility(0);
          TextView localTextView3 = (TextView)localj.e.findViewById(2);
          if (b.e(this.b) == 1)
            localTextView3.setText(" " + b.e(this.b) + " " + m.a(b.f(this.b), 2131296787));
          while (true)
          {
            localTextView3.setTextColor(-1);
            break;
            localTextView3.setText(" " + b.e(this.b) + " " + m.a(b.g(this.b), 2131296788));
          }
        }
        if (b.e(this.b) == 0)
        {
          TextView localTextView2 = (TextView)localj.e.findViewById(2);
          localTextView2.setText(m.a(b.h(this.b), 2131296786));
          localTextView2.setTextColor(this.b.i().getColor(2131165246));
          break label525;
        }
        localj.e.setVisibility(8);
        break label525;
        label873: localj.c.setVisibility(0);
        localj.c.setText(m.a(b.j(this.b), 2131296789));
        localj.c.setTextAppearance(this.j, 2131099668);
        localj.c.setBackgroundColor(this.b.i().getColor(2131165220));
      }
      a(b.k(this.b), localj, locals.a(), 2130837577, 2131296559, 2131296558, 2130837778);
      if (locali.c)
      {
        if (!locali.b)
          break label1074;
        localj.c.setVisibility(0);
        localj.c.setText(m.a(b.l(this.b), 2131296790));
        localj.c.setTextAppearance(this.j, 2131099669);
        localj.c.setBackgroundColor(this.b.i().getColor(2131165246));
      }
      while (e.a().h == com.avg.toolkit.e.c.a)
      {
        paramView.setVisibility(8);
        break;
        label1074: localj.c.setVisibility(0);
        localj.c.setText(m.a(b.m(this.b), 2131296789));
        localj.c.setTextAppearance(this.j, 2131099668);
        localj.c.setBackgroundColor(this.b.i().getColor(2131165220));
      }
      a(b.n(this.b), localj, locals.a(), 2130837702, 2131296733, 2131296734, 2130837778);
      if (b.o(this.b))
      {
        TextView localTextView1 = (TextView)localj.e.findViewById(2);
        localTextView1.setText(m.a(b.p(this.b), 2131296807));
        localTextView1.setTextColor(this.b.i().getColor(2131165246));
        localj.e.setVisibility(0);
        localj.e.findViewById(1).setVisibility(8);
        continue;
        a(b.q(this.b), localj, locals.a(), 2130837936, 2131296608, 2131296609, 2130837778);
        continue;
        a(b.r(this.b), localj, locals.a(), 2130837937, 2131296606, 2131296607, 2130837778);
        continue;
        a(b.s(this.b), localj, locals.a(), 2130837928, 2131296610, 2131296611, 2130837778);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.privacy.h
 * JD-Core Version:    0.6.2
 */