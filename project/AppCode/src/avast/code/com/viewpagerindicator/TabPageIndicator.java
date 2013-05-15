package com.viewpagerindicator;

import android.content.Context;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bk;
import android.support.v4.view.x;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.HorizontalScrollView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;

public class TabPageIndicator extends HorizontalScrollView
  implements a
{
  private static final CharSequence a = "";
  private Runnable b;
  private final View.OnClickListener c = new b(this);
  private final LinearLayout d;
  private ViewPager e;
  private bk f;
  private int g;
  private int h;
  private d i;

  public TabPageIndicator(Context paramContext)
  {
    this(paramContext, null);
  }

  public TabPageIndicator(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setHorizontalScrollBarEnabled(false);
    this.d = new LinearLayout(getContext());
    addView(this.d, new ViewGroup.LayoutParams(-2, -1));
  }

  private void a(CharSequence paramCharSequence, int paramInt)
  {
    e locale = new e(this, getContext());
    e.a(locale, paramInt);
    locale.setFocusable(true);
    locale.setOnClickListener(this.c);
    locale.setText(paramCharSequence);
    this.d.addView(locale, new LinearLayout.LayoutParams(0, -1, 1.0F));
  }

  private void d(int paramInt)
  {
    View localView = this.d.getChildAt(paramInt);
    if (this.b != null)
      removeCallbacks(this.b);
    this.b = new c(this, localView);
    post(this.b);
  }

  public void a()
  {
    this.d.removeAllViews();
    x localx = this.e.b();
    int j = localx.getCount();
    for (int k = 0; k < j; k++)
    {
      CharSequence localCharSequence = localx.getPageTitle(k);
      if (localCharSequence == null)
        localCharSequence = a;
      a(localCharSequence, k);
    }
    if (this.h > j)
      this.h = (j - 1);
    c(this.h);
    requestLayout();
  }

  public void a(int paramInt)
  {
    c(paramInt);
    if (this.f != null)
      this.f.a(paramInt);
  }

  public void a(int paramInt1, float paramFloat, int paramInt2)
  {
    if (this.f != null)
      this.f.a(paramInt1, paramFloat, paramInt2);
  }

  public void a(ViewPager paramViewPager)
  {
    if (this.e == paramViewPager);
    while (true)
    {
      return;
      if (this.e != null)
        this.e.a(null);
      if (paramViewPager.b() == null)
        throw new IllegalStateException("ViewPager does not have adapter instance.");
      this.e = paramViewPager;
      paramViewPager.a(this);
      a();
    }
  }

  public void a(bk parambk)
  {
    this.f = parambk;
  }

  public void b(int paramInt)
  {
    if (this.f != null)
      this.f.b(paramInt);
  }

  public void c(int paramInt)
  {
    if (this.e == null)
      throw new IllegalStateException("ViewPager has not been bound.");
    this.h = paramInt;
    this.e.a(paramInt);
    int j = this.d.getChildCount();
    int k = 0;
    if (k < j)
    {
      View localView = this.d.getChildAt(k);
      if (k == paramInt);
      for (boolean bool = true; ; bool = false)
      {
        localView.setSelected(bool);
        if (bool)
          d(paramInt);
        k++;
        break;
      }
    }
  }

  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.b != null)
      post(this.b);
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.b != null)
      removeCallbacks(this.b);
  }

  public void onMeasure(int paramInt1, int paramInt2)
  {
    int j = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (j == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int k = this.d.getChildCount();
      if ((k <= 1) || ((j != 1073741824) && (j != -2147483648)))
        break label124;
      if (k <= 2)
        break label111;
      this.g = ((int)(0.4F * View.MeasureSpec.getSize(paramInt1)));
    }
    while (true)
    {
      int m = getMeasuredWidth();
      super.onMeasure(paramInt1, paramInt2);
      int n = getMeasuredWidth();
      if ((bool) && (m != n))
        c(this.h);
      return;
      bool = false;
      break;
      label111: this.g = (View.MeasureSpec.getSize(paramInt1) / 2);
      continue;
      label124: this.g = -1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.viewpagerindicator.TabPageIndicator
 * JD-Core Version:    0.6.2
 */