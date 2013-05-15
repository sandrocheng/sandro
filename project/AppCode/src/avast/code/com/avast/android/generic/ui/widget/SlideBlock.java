package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.avast.android.generic.s;
import com.avast.android.generic.t;
import com.avast.android.generic.ui.a.a;
import com.avast.android.generic.v;

public class SlideBlock extends LinearLayout
{
  private int a = 300;
  private boolean b = false;
  private CharSequence c = "Title";
  private int d = s.d;
  private int e = s.j;
  private View f;
  private LinearLayout g;
  private a h;
  private ImageView i;
  private TextView j;
  private y k;

  public SlideBlock(Context paramContext)
  {
    super(paramContext);
  }

  public SlideBlock(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }

  public SlideBlock(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }

  private void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    int m = paramAttributeSet.getAttributeResourceValue("http://schemas.android.com/apk/res/android", "text", 0);
    if (m > 0)
      this.c = paramContext.getText(m);
  }

  private void c()
  {
    this.h = new a(this.g);
    this.h.setStartTime(9223372036854775807L);
    this.h.setDuration(this.a);
    this.g.setAnimation(this.h);
  }

  private void d()
  {
    if (this.b)
      b();
    while (true)
    {
      return;
      a();
    }
  }

  public void a()
  {
    if (!this.b)
    {
      this.h.a(false);
      this.b = true;
      this.i.setImageResource(this.d);
      this.g.startAnimation(this.h);
      this.g.invalidate();
      if (this.k != null)
        this.k.a(this);
    }
  }

  public void a(View paramView)
  {
    this.g.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.g.removeAllViews();
    this.g.addView(paramView);
    this.b = false;
    c();
  }

  public void a(y paramy)
  {
    this.k = paramy;
  }

  public void a(CharSequence paramCharSequence)
  {
    this.c = paramCharSequence;
    if (this.j != null)
      this.j.setText(paramCharSequence);
  }

  public void b()
  {
    if (this.b)
    {
      this.h.a(true);
      this.b = false;
      this.i.setImageResource(this.e);
      this.g.startAnimation(this.h);
      this.g.invalidate();
      if (this.k != null)
        this.k.b(this);
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setOrientation(1);
    this.f = inflate(getContext(), v.l, null);
    this.g = new LinearLayout(getContext());
    this.g.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
    this.g.setOrientation(1);
    while (getChildCount() > 0)
    {
      View localView = getChildAt(0);
      removeView(localView);
      this.g.addView(localView);
    }
    addView(this.f);
    addView(this.g);
    c();
    this.i = ((ImageView)this.f.findViewById(t.P));
    this.j = ((TextView)this.f.findViewById(t.E));
    ImageView localImageView;
    if ((this.i != null) && (this.j != null))
    {
      localImageView = this.i;
      if (!this.b)
        break label210;
    }
    label210: for (int m = this.d; ; m = this.e)
    {
      localImageView.setImageResource(m);
      this.j.setText(this.c);
      this.f.setOnClickListener(new x(this));
      return;
    }
  }

  public void setEnabled(boolean paramBoolean)
  {
    super.setEnabled(paramBoolean);
    this.f.setEnabled(paramBoolean);
    this.j.setEnabled(paramBoolean);
    this.i.setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.SlideBlock
 * JD-Core Version:    0.6.2
 */