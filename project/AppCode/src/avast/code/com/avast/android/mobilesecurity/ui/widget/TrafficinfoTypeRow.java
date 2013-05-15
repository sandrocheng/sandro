package com.avast.android.mobilesecurity.ui.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.SpannableString;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.TextView.BufferType;
import com.avast.android.generic.ui.widget.Row;

public class TrafficinfoTypeRow extends Row
{
  private boolean A = true;
  private ImageView a;
  private Drawable b;
  private TextView c;
  private TextView m;
  private TextView n;
  private TextView o;
  private TextView p;
  private TextView q;
  private TextView r;
  private TextView s;
  private TextView t;
  private TextView u;
  private TextView v;
  private TextView w;
  private View x;
  private View y;
  private boolean z = false;

  public TrafficinfoTypeRow(Context paramContext)
  {
    super(paramContext);
    onFinishInflate();
  }

  public TrafficinfoTypeRow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public TrafficinfoTypeRow(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public TrafficinfoTypeRow(Context paramContext, String paramString)
  {
    super(paramContext);
    onFinishInflate();
    this.g = paramString;
  }

  private SpannableString a(String paramString)
  {
    SpannableString localSpannableString = new SpannableString(paramString);
    int i = paramString.lastIndexOf(" ");
    if (i != -1)
      localSpannableString.setSpan(new ForegroundColorSpan(-1), 0, i, 0);
    return localSpannableString;
  }

  private String a(long paramLong)
  {
    double d1 = paramLong;
    String str;
    if (d1 < 0.0D)
    {
      str = "";
      return str;
    }
    double d2 = d1 / 1048576.0D;
    if (d2 >= 10.0D);
    for (double d3 = Math.round(d2 * 10.0D) / 10.0D; ; d3 = Math.round(d2 * 100.0D) / 100.0D)
    {
      str = d3 + " " + getContext().getString(2131493074);
      break;
    }
  }

  private void d()
  {
    if ((!this.A) && (this.x != null))
      this.x.setVisibility(8);
    if ((!this.A) && (this.y != null))
      this.y.setVisibility(8);
  }

  protected void a()
  {
    if (this.z)
      return;
    this.z = true;
    if (this.l != 0)
      inflate(getContext(), this.l, this);
    while (true)
    {
      setBackgroundResource(2130837873);
      setClickable(true);
      setFocusable(true);
      this.a = ((ImageView)findViewById(2131165273));
      this.a.setId(-1);
      this.c = ((TextView)findViewById(2131165669));
      this.n = ((TextView)findViewById(2131165671));
      this.m = ((TextView)findViewById(2131165672));
      this.o = ((TextView)findViewById(2131165649));
      this.q = ((TextView)findViewById(2131165652));
      this.p = ((TextView)findViewById(2131165653));
      this.r = ((TextView)findViewById(2131165656));
      this.t = ((TextView)findViewById(2131165658));
      this.s = ((TextView)findViewById(2131165659));
      this.u = ((TextView)findViewById(2131165662));
      this.v = ((TextView)findViewById(2131165665));
      this.w = ((TextView)findViewById(2131165664));
      this.x = findViewById(2131165654);
      this.y = findViewById(2131165660);
      break;
      inflate(getContext(), 2130903202, this);
    }
  }

  public void a(int paramInt)
  {
    this.a.setVisibility(0);
    this.a.setImageResource(paramInt);
    d();
  }

  public void a(long paramLong1, long paramLong2)
  {
    ((RelativeLayout)findViewById(2131165667)).setVisibility(0);
    this.c.setText(a(a(paramLong1 + paramLong2)), TextView.BufferType.SPANNABLE);
    this.n.setText(a(a(paramLong1)), TextView.BufferType.SPANNABLE);
    this.m.setText(a(a(paramLong2)), TextView.BufferType.SPANNABLE);
    d();
  }

  public void a(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, long paramLong7, long paramLong8)
  {
    b(paramLong3, paramLong4);
    c(paramLong5, paramLong6);
    d(paramLong7, paramLong8);
    if (this.A)
    {
      a(paramLong1, paramLong2);
      b(true);
    }
  }

  public void a(Drawable paramDrawable)
  {
    this.b = paramDrawable;
    if (this.a != null)
    {
      this.a.setVisibility(0);
      this.a.setImageDrawable(paramDrawable);
    }
    d();
  }

  public void a(boolean paramBoolean)
  {
    int i = 8;
    int j;
    if (paramBoolean)
    {
      j = 0;
      if (!paramBoolean)
        break label139;
    }
    while (true)
    {
      findViewById(2131165669).setVisibility(j);
      findViewById(2131165649).setVisibility(j);
      findViewById(2131165656).setVisibility(j);
      findViewById(2131165662).setVisibility(j);
      findViewById(2131165670).setVisibility(i);
      findViewById(2131165650).setVisibility(i);
      findViewById(2131165657).setVisibility(i);
      findViewById(2131165663).setVisibility(i);
      findViewById(2131165668).setVisibility(i);
      findViewById(2131165648).setVisibility(i);
      findViewById(2131165655).setVisibility(i);
      findViewById(2131165661).setVisibility(i);
      return;
      j = i;
      break;
      label139: i = 0;
    }
  }

  public void b()
  {
  }

  public void b(int paramInt)
  {
    this.a.setVisibility(paramInt);
    d();
  }

  public void b(long paramLong1, long paramLong2)
  {
    ((RelativeLayout)findViewById(2131165647)).setVisibility(0);
    this.o.setText(a(a(paramLong1 + paramLong2)), TextView.BufferType.SPANNABLE);
    this.q.setText(a(a(paramLong1)), TextView.BufferType.SPANNABLE);
    this.p.setText(a(a(paramLong2)), TextView.BufferType.SPANNABLE);
    d();
  }

  public void b(boolean paramBoolean)
  {
    View localView = findViewById(2131165666);
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }

  public void c()
  {
    ((TextView)findViewById(2131165207)).setTextSize(1, 15.0F);
    ((LinearLayout)findViewById(2131165670)).setOrientation(0);
    ((LinearLayout)findViewById(2131165650)).setOrientation(0);
    ((LinearLayout)findViewById(2131165657)).setOrientation(0);
    ((LinearLayout)findViewById(2131165663)).setOrientation(0);
  }

  public void c(long paramLong1, long paramLong2)
  {
    ((RelativeLayout)findViewById(2131165654)).setVisibility(0);
    this.r.setText(a(a(paramLong1 + paramLong2)), TextView.BufferType.SPANNABLE);
    this.t.setText(a(a(paramLong1)), TextView.BufferType.SPANNABLE);
    this.s.setText(a(a(paramLong2)), TextView.BufferType.SPANNABLE);
    d();
  }

  public void c(boolean paramBoolean)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131165667);
    if (paramBoolean)
      localRelativeLayout.setVisibility(0);
    while (true)
    {
      d();
      return;
      localRelativeLayout.setVisibility(8);
    }
  }

  public void d(long paramLong1, long paramLong2)
  {
    ((RelativeLayout)findViewById(2131165660)).setVisibility(0);
    this.u.setText(a(a(paramLong1 + paramLong2)), TextView.BufferType.SPANNABLE);
    this.w.setText(a(a(paramLong1)), TextView.BufferType.SPANNABLE);
    this.v.setText(a(a(paramLong2)), TextView.BufferType.SPANNABLE);
    d();
  }

  public void d(boolean paramBoolean)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131165660);
    if (paramBoolean)
      localRelativeLayout.setVisibility(0);
    while (true)
    {
      d();
      return;
      localRelativeLayout.setVisibility(8);
    }
  }

  public void e(boolean paramBoolean)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131165647);
    if (paramBoolean)
      localRelativeLayout.setVisibility(0);
    while (true)
    {
      d();
      return;
      localRelativeLayout.setVisibility(8);
    }
  }

  public void f(boolean paramBoolean)
  {
    RelativeLayout localRelativeLayout = (RelativeLayout)findViewById(2131165654);
    if (paramBoolean)
      localRelativeLayout.setVisibility(0);
    while (true)
    {
      d();
      return;
      localRelativeLayout.setVisibility(8);
    }
  }

  public void g(boolean paramBoolean)
  {
    this.A = paramBoolean;
    d();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.TrafficinfoTypeRow
 * JD-Core Version:    0.6.2
 */