package com.hoi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.widget.Scroller;

public class ScrollLayout extends ViewGroup
{
  private static final String a = "ScrollLayout";
  private static final int f = 0;
  private static final int g = 1;
  private static final int h = 600;
  private Scroller b;
  private VelocityTracker c;
  private int d;
  private int e = 0;
  private int i = 0;
  private int j;
  private float k;
  private float l;
  private int m = 0;
  private ah n = null;

  public ScrollLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ScrollLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.b = new Scroller(paramContext);
    this.d = this.e;
    this.j = ViewConfiguration.get(getContext()).getScaledTouchSlop();
  }

  private void b()
  {
    int i1 = getWidth();
    b((getScrollX() + i1 / 2) / i1);
  }

  private void b(int paramInt)
  {
    int i1 = Math.max(0, Math.min(paramInt, getChildCount() - 1));
    if (getScrollX() != i1 * getWidth())
    {
      int i2 = this.d;
      int i3 = i1 * getWidth() - getScrollX();
      this.b.startScroll(getScrollX(), 0, i3, 0, 2 * Math.abs(i3));
      this.d = i1;
      invalidate();
      if ((this.n != null) && (this.d != i2))
        this.n.a(this.d, i2, this.b.getDuration());
    }
  }

  public final int a()
  {
    return this.d;
  }

  public final void a(int paramInt)
  {
    int i1 = Math.max(0, Math.min(paramInt, getChildCount() - 1));
    this.d = i1;
    scrollTo(i1 * getWidth(), 0);
  }

  public final void a(ah paramah)
  {
    this.n = paramah;
  }

  public void computeScroll()
  {
    if (this.b.computeScrollOffset())
    {
      scrollTo(this.b.getCurrX(), this.b.getCurrY());
      postInvalidate();
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    Log.e("ScrollLayout", "onInterceptTouchEvent-slop:" + this.j);
    int i1 = paramMotionEvent.getAction();
    boolean bool;
    if ((i1 == 2) && (this.i != 0))
      bool = true;
    while (true)
    {
      return bool;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      switch (i1)
      {
      default:
      case 2:
      case 0:
      case 1:
      case 3:
      }
      while (true)
      {
        if (this.i == 0)
          break label183;
        bool = true;
        break;
        if ((int)Math.abs(this.k - f1) > this.j)
        {
          this.i = 1;
          continue;
          this.k = f1;
          this.l = f2;
          if (this.b.isFinished());
          for (int i2 = 0; ; i2 = 1)
          {
            this.i = i2;
            break;
          }
          this.i = 0;
        }
      }
      label183: bool = false;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool;
    if (this.m != getChildCount())
    {
      bool = true;
      this.m = getChildCount();
    }
    while (true)
    {
      if (bool)
      {
        int i1 = getChildCount();
        int i2 = 0;
        int i3 = 0;
        while (i2 < i1)
        {
          View localView = getChildAt(i2);
          if (localView.getVisibility() != 8)
          {
            int i4 = localView.getMeasuredWidth();
            localView.layout(i3, 0, i3 + i4, localView.getMeasuredHeight());
            i3 += i4;
          }
          i2++;
        }
      }
      return;
      bool = paramBoolean;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    Log.e("ScrollLayout", "onMeasure");
    super.onMeasure(paramInt1, paramInt2);
    int i1 = View.MeasureSpec.getSize(paramInt1);
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824)
      throw new IllegalStateException("ScrollLayout only canmCurScreen run at EXACTLY mode!");
    if (View.MeasureSpec.getMode(paramInt2) != 1073741824)
      throw new IllegalStateException("ScrollLayout only can run at EXACTLY mode!");
    int i2 = getChildCount();
    for (int i3 = 0; i3 < i2; i3++)
      getChildAt(i3).measure(paramInt1, paramInt2);
    scrollTo(i1 * this.d, 0);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (this.c == null)
      this.c = VelocityTracker.obtain();
    this.c.addMovement(paramMotionEvent);
    int i1 = paramMotionEvent.getAction();
    float f1 = paramMotionEvent.getX();
    switch (i1)
    {
    default:
    case 0:
    case 2:
    case 1:
    case 3:
    }
    while (true)
    {
      return true;
      Log.e("ScrollLayout", "event down!");
      if (!this.b.isFinished())
        this.b.abortAnimation();
      this.k = f1;
      continue;
      int i4 = (int)(this.k - f1);
      this.k = f1;
      scrollBy(i4, 0);
      continue;
      Log.e("ScrollLayout", "event : up");
      VelocityTracker localVelocityTracker = this.c;
      localVelocityTracker.computeCurrentVelocity(1000);
      int i2 = (int)localVelocityTracker.getXVelocity();
      Log.e("ScrollLayout", "velocityX:" + i2);
      if ((i2 > 600) && (this.d > 0))
      {
        Log.e("ScrollLayout", "snap left");
        b(this.d - 1);
      }
      while (true)
      {
        if (this.c != null)
        {
          this.c.recycle();
          this.c = null;
        }
        this.i = 0;
        break;
        if ((i2 < -600) && (this.d < getChildCount() - 1))
        {
          Log.e("ScrollLayout", "snap right");
          b(1 + this.d);
        }
        else
        {
          int i3 = getWidth();
          b((getScrollX() + i3 / 2) / i3);
        }
      }
      this.i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.ScrollLayout
 * JD-Core Version:    0.6.2
 */