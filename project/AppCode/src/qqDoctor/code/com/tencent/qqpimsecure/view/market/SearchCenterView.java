package com.tencent.qqpimsecure.view.market;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.TranslateAnimation;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import ayd;
import ayp;
import java.util.ArrayList;

public class SearchCenterView extends RelativeLayout
  implements View.OnClickListener
{
  private RelativeLayout a;
  private Context b;
  private TextView c;
  private Animation d;
  private ayp e;
  private ArrayList<View> f;
  private ArrayList<TextView> g;
  private ArrayList<TextView> h;
  private ArrayList<String> i;
  private ArrayList<Animation> j;
  private ArrayList<Integer> k;
  private ArrayList<Integer> l;
  private ArrayList<Integer[]> m;
  private boolean n = false;
  private Handler o = new ayd(this);

  public SearchCenterView(Context paramContext, ayp paramayp)
  {
    super(paramContext);
    this.b = paramContext;
    this.e = paramayp;
  }

  private void a(TextView paramTextView1, TextView paramTextView2, int paramInt)
  {
    paramTextView1.setText((CharSequence)this.i.get(paramInt));
    paramTextView2.setText((CharSequence)this.i.get(paramInt));
    paramTextView1.setTextSize(((Integer)this.l.get(paramInt)).intValue());
    paramTextView2.setTextSize(((Integer)this.l.get(paramInt)).intValue());
    paramTextView1.setTextColor(((Integer)this.k.get(paramInt)).intValue());
    this.i.get(paramInt);
  }

  private void g()
  {
    for (int i1 = 0; i1 < this.g.size(); i1++)
      ((View)this.g.get(i1)).setOnClickListener(this);
  }

  public final boolean a()
  {
    return this.n;
  }

  public final void b()
  {
    View localView = LayoutInflater.from(this.b).inflate(2130903242, null);
    addView(localView, new LinearLayout.LayoutParams(-1, -2));
    this.a = ((RelativeLayout)localView.findViewById(2131231295));
    this.c = ((TextView)localView.findViewById(2131231297));
    this.c.setText(this.b.getText(2131428863));
    this.c.setVisibility(4);
    this.c.setTextColor(-16777216);
    this.i = new ArrayList();
    this.j = new ArrayList();
    this.k = new ArrayList();
    this.l = new ArrayList();
    this.g = new ArrayList();
    this.h = new ArrayList();
    this.m = new ArrayList();
    this.l.add(Integer.valueOf(24));
    this.l.add(Integer.valueOf(18));
    this.l.add(Integer.valueOf(24));
    this.l.add(Integer.valueOf(18));
    this.l.add(Integer.valueOf(34));
    this.l.add(Integer.valueOf(18));
    this.l.add(Integer.valueOf(18));
    this.l.add(Integer.valueOf(24));
    this.l.add(Integer.valueOf(24));
    this.l.add(Integer.valueOf(18));
    this.d = new TranslateAnimation((int)(0.5F + 80.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 70.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 115.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 0.0F * this.b.getResources().getDisplayMetrics().density));
    Integer[] arrayOfInteger1 = new Integer[2];
    arrayOfInteger1[0] = Integer.valueOf((int)(0.5F + 70.0F * this.b.getResources().getDisplayMetrics().density));
    arrayOfInteger1[1] = Integer.valueOf((int)(0.5F + 0.0F * this.b.getResources().getDisplayMetrics().density));
    this.m.add(arrayOfInteger1);
    this.d.setDuration(1001L);
    this.d.setFillAfter(false);
    this.d.setFillEnabled(false);
    synchronized (this.j)
    {
      this.j.add(this.d);
      this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296358)));
      this.d = new TranslateAnimation((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 200.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 130.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 30.0F * this.b.getResources().getDisplayMetrics().density));
      Integer[] arrayOfInteger2 = new Integer[2];
      arrayOfInteger2[0] = Integer.valueOf((int)(0.5F + 200.0F * this.b.getResources().getDisplayMetrics().density));
      arrayOfInteger2[1] = Integer.valueOf((int)(0.5F + 30.0F * this.b.getResources().getDisplayMetrics().density));
      this.m.add(arrayOfInteger2);
      this.d.setDuration(1001L);
      this.d.setFillAfter(false);
      this.d.setFillEnabled(false);
      synchronized (this.j)
      {
        this.j.add(this.d);
        this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296359)));
        this.d = new TranslateAnimation((int)(0.5F + 78.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 125.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 120.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 60.0F * this.b.getResources().getDisplayMetrics().density));
        Integer[] arrayOfInteger3 = new Integer[2];
        arrayOfInteger3[0] = Integer.valueOf((int)(0.5F + 125.0F * this.b.getResources().getDisplayMetrics().density));
        arrayOfInteger3[1] = Integer.valueOf((int)(0.5F + 60.0F * this.b.getResources().getDisplayMetrics().density));
        this.m.add(arrayOfInteger3);
        this.d.setDuration(1001L);
        this.d.setFillAfter(false);
        this.d.setFillEnabled(false);
        synchronized (this.j)
        {
          this.j.add(this.d);
          this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296360)));
          this.d = new TranslateAnimation((int)(0.5F + 72.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 10.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 120.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 90.0F * this.b.getResources().getDisplayMetrics().density));
          Integer[] arrayOfInteger4 = new Integer[2];
          arrayOfInteger4[0] = Integer.valueOf((int)(0.5F + 10.0F * this.b.getResources().getDisplayMetrics().density));
          arrayOfInteger4[1] = Integer.valueOf((int)(0.5F + 90.0F * this.b.getResources().getDisplayMetrics().density));
          this.m.add(arrayOfInteger4);
          this.d.setDuration(1001L);
          this.d.setFillAfter(false);
          this.d.setFillEnabled(false);
          synchronized (this.j)
          {
            this.j.add(this.d);
            this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296361)));
            this.d = new TranslateAnimation((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density));
            Integer[] arrayOfInteger5 = new Integer[2];
            arrayOfInteger5[0] = Integer.valueOf((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density));
            arrayOfInteger5[1] = Integer.valueOf((int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density));
            this.m.add(arrayOfInteger5);
            this.d.setDuration(1001L);
            this.d.setFillAfter(false);
            this.d.setFillEnabled(false);
            synchronized (this.j)
            {
              this.j.add(this.d);
              this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296362)));
              this.d = new TranslateAnimation((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 200.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 90.0F * this.b.getResources().getDisplayMetrics().density));
              Integer[] arrayOfInteger6 = new Integer[2];
              arrayOfInteger6[0] = Integer.valueOf((int)(0.5F + 200.0F * this.b.getResources().getDisplayMetrics().density));
              arrayOfInteger6[1] = Integer.valueOf((int)(0.5F + 90.0F * this.b.getResources().getDisplayMetrics().density));
              this.m.add(arrayOfInteger6);
              this.d.setDuration(1001L);
              this.d.setFillAfter(false);
              this.d.setFillEnabled(false);
              synchronized (this.j)
              {
                this.j.add(this.d);
                this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296363)));
                this.d = new TranslateAnimation((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 170.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 170.0F * this.b.getResources().getDisplayMetrics().density));
                Integer[] arrayOfInteger7 = new Integer[2];
                arrayOfInteger7[0] = Integer.valueOf((int)(0.5F + 170.0F * this.b.getResources().getDisplayMetrics().density));
                arrayOfInteger7[1] = Integer.valueOf((int)(0.5F + 170.0F * this.b.getResources().getDisplayMetrics().density));
                this.m.add(arrayOfInteger7);
                this.d.setDuration(1001L);
                this.d.setFillAfter(false);
                this.d.setFillEnabled(false);
                synchronized (this.j)
                {
                  this.j.add(this.d);
                  this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296364)));
                  this.d = new TranslateAnimation((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 20.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 170.0F * this.b.getResources().getDisplayMetrics().density));
                  Integer[] arrayOfInteger8 = new Integer[2];
                  arrayOfInteger8[0] = Integer.valueOf((int)(0.5F + 20.0F * this.b.getResources().getDisplayMetrics().density));
                  arrayOfInteger8[1] = Integer.valueOf((int)(0.5F + 170.0F * this.b.getResources().getDisplayMetrics().density));
                  this.m.add(arrayOfInteger8);
                  this.d.setDuration(1001L);
                  this.d.setFillAfter(false);
                  this.d.setFillEnabled(false);
                  synchronized (this.j)
                  {
                    this.j.add(this.d);
                    this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296365)));
                    this.d = new TranslateAnimation((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 200.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 210.0F * this.b.getResources().getDisplayMetrics().density));
                    Integer[] arrayOfInteger9 = new Integer[2];
                    arrayOfInteger9[0] = Integer.valueOf((int)(0.5F + 200.0F * this.b.getResources().getDisplayMetrics().density));
                    arrayOfInteger9[1] = Integer.valueOf((int)(0.5F + 210.0F * this.b.getResources().getDisplayMetrics().density));
                    this.m.add(arrayOfInteger9);
                    this.d.setDuration(1001L);
                    this.d.setFillAfter(false);
                    this.d.setFillEnabled(false);
                    synchronized (this.j)
                    {
                      this.j.add(this.d);
                      this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296366)));
                      this.d = new TranslateAnimation((int)(0.5F + 75.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 105.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 110.0F * this.b.getResources().getDisplayMetrics().density), (int)(0.5F + 230.0F * this.b.getResources().getDisplayMetrics().density));
                      Integer[] arrayOfInteger10 = new Integer[2];
                      arrayOfInteger10[0] = Integer.valueOf((int)(0.5F + 105.0F * this.b.getResources().getDisplayMetrics().density));
                      arrayOfInteger10[1] = Integer.valueOf((int)(0.5F + 230.0F * this.b.getResources().getDisplayMetrics().density));
                      this.m.add(arrayOfInteger10);
                      this.d.setDuration(1001L);
                      this.d.setFillAfter(false);
                      this.d.setFillEnabled(false);
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
    synchronized (this.j)
    {
      this.j.add(this.d);
      this.k.add(Integer.valueOf(this.b.getResources().getColor(2131296367)));
      this.f = new ArrayList();
      return;
      localObject1 = finally;
      throw localObject1;
      localObject2 = finally;
      throw localObject2;
      localObject3 = finally;
      throw localObject3;
      localObject4 = finally;
      throw localObject4;
      localObject5 = finally;
      throw localObject5;
      localObject6 = finally;
      throw localObject6;
      localObject7 = finally;
      throw localObject7;
      localObject8 = finally;
      throw localObject8;
      localObject9 = finally;
      throw localObject9;
    }
  }

  public final View c()
  {
    return this.c;
  }

  public final void d()
  {
    Message localMessage = this.o.obtainMessage(100);
    this.o.sendMessageDelayed(localMessage, 1040L);
    int i1 = this.f.size();
    int i2 = 0;
    while (i2 < i1)
    {
      View localView;
      synchronized (this.f)
      {
        localView = (View)this.f.get(i2);
      }
      synchronized (this.j)
      {
        localView.startAnimation((Animation)this.j.get(i2));
        i2++;
        continue;
        localObject1 = finally;
        throw localObject1;
      }
    }
  }

  public final void e()
  {
    int i1 = 0;
    while (i1 < this.f.size())
      synchronized (this.f)
      {
        LinearLayout localLinearLayout = (LinearLayout)this.f.get(i1);
        int i2 = localLinearLayout.getWidth();
        int i3 = localLinearLayout.getHeight();
        localLinearLayout.layout(((Integer[])this.m.get(i1))[0].intValue(), ((Integer[])this.m.get(i1))[1].intValue(), i2 + ((Integer[])this.m.get(i1))[0].intValue(), i3 + ((Integer[])this.m.get(i1))[1].intValue());
        localLinearLayout.setVisibility(0);
        i1++;
      }
  }

  public final void f()
  {
    ArrayList localArrayList = this.f;
    int i1 = 0;
    try
    {
      while (i1 < this.f.size())
      {
        a((TextView)this.g.get(i1), (TextView)this.h.get(i1), i1);
        i1++;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void onClick(View paramView)
  {
    String str = (String)((TextView)paramView).getText();
    Message localMessage1 = this.o.obtainMessage(-1);
    this.e.c.sendMessage(localMessage1);
    Message localMessage2 = this.o.obtainMessage(15);
    localMessage2.obj = str;
    this.e.c.sendMessageDelayed(localMessage2, 50L);
    this.e.a(str);
    this.e.b(str);
  }

  public void setTranslateHotWordText(ArrayList<String> paramArrayList)
  {
    this.i.clear();
    for (int i1 = 0; i1 < paramArrayList.size(); i1++)
      this.i.add(paramArrayList.get(i1));
  }

  public void setTranslateView()
  {
    int i1 = 0;
    while (true)
    {
      LinearLayout localLinearLayout;
      TextView localTextView1;
      TextView localTextView2;
      if (i1 < 10)
      {
        localLinearLayout = (LinearLayout)LayoutInflater.from(this.b).inflate(2130903361, null);
        localTextView1 = (TextView)localLinearLayout.findViewById(2131230918);
        localTextView2 = (TextView)localLinearLayout.findViewById(2131230917);
        a(localTextView1, localTextView2, i1);
        LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -1);
        this.a.addView(localLinearLayout, localLayoutParams);
      }
      synchronized (this.f)
      {
        this.f.add(localLinearLayout);
        this.g.add(localTextView1);
        this.h.add(localTextView2);
        i1++;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.market.SearchCenterView
 * JD-Core Version:    0.6.2
 */