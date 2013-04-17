package com.tencent.powermanager.uilib.button;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import dc;
import java.util.ArrayList;

public class SleekButtonView extends LinearLayout
{
  private Context a;
  private ImageView b;
  private ImageView c;
  private ImageView d;
  private ArrayList<ImageView> e;
  private int f;
  private int g;
  private boolean h;
  private Handler i = new dc(this);

  public SleekButtonView(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }

  public SleekButtonView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }

  private void a(Context paramContext)
  {
    this.a = paramContext;
    View localView = LayoutInflater.from(this.a).inflate(2130903077, null);
    this.b = ((ImageView)localView.findViewById(2131230846));
    this.c = ((ImageView)localView.findViewById(2131230847));
    this.d = ((ImageView)localView.findViewById(2131230848));
    this.e = new ArrayList();
    this.e.add(this.b);
    this.e.add(this.c);
    this.e.add(this.d);
    addView(localView, new FrameLayout.LayoutParams(-1, -2));
  }

  private void c()
  {
    int j = 0;
    if (j < this.e.size())
    {
      if (j == this.g)
        ((ImageView)this.e.get(j)).setImageResource(2130837795);
      while (true)
      {
        j++;
        break;
        if (j == this.f)
          ((ImageView)this.e.get(j)).setImageResource(2130837796);
      }
    }
    this.i.sendEmptyMessageDelayed(0, 500L);
  }

  public final void a()
  {
    if (this.h);
    while (true)
    {
      return;
      this.h = true;
      this.f = 0;
      this.g = -1;
      c();
    }
  }

  public final void b()
  {
    this.h = false;
    this.i.removeMessages(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.powermanager.uilib.button.SleekButtonView
 * JD-Core Version:    0.6.2
 */