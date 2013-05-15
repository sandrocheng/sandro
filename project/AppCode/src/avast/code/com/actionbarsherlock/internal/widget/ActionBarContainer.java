package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout.LayoutParams;
import com.actionbarsherlock.R.id;
import com.actionbarsherlock.R.styleable;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineFrameLayout;

public class ActionBarContainer extends NineFrameLayout
{
  private ActionBarView mActionBarView;
  private Drawable mBackground;
  private boolean mIsSplit;
  private boolean mIsStacked;
  private boolean mIsTransitioning;
  private Drawable mSplitBackground;
  private Drawable mStackedBackground;
  private View mTabContainer;

  public ActionBarContainer(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionBarContainer(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBackgroundDrawable(null);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SherlockActionBar);
    this.mBackground = localTypedArray.getDrawable(2);
    this.mStackedBackground = localTypedArray.getDrawable(12);
    if (((this.mStackedBackground instanceof ColorDrawable)) && (Build.VERSION.SDK_INT < 11))
    {
      Bitmap localBitmap = Bitmap.createBitmap(i, i, Bitmap.Config.ARGB_8888);
      Canvas localCanvas = new Canvas(localBitmap);
      this.mStackedBackground.draw(localCanvas);
      int k = localBitmap.getPixel(0, 0);
      localBitmap.recycle();
      this.mStackedBackground = new IcsColorDrawable(k);
    }
    if (getId() == R.id.abs__split_action_bar)
    {
      this.mIsSplit = i;
      this.mSplitBackground = localTypedArray.getDrawable(3);
    }
    localTypedArray.recycle();
    if (this.mIsSplit)
      if (this.mSplitBackground != null);
    while (true)
    {
      setWillNotDraw(i);
      return;
      int j = 0;
      continue;
      if ((this.mBackground != null) || (this.mStackedBackground != null))
        j = 0;
    }
  }

  public View getTabContainer()
  {
    return this.mTabContainer;
  }

  public void onDraw(Canvas paramCanvas)
  {
    if ((getWidth() == 0) || (getHeight() == 0));
    while (true)
    {
      return;
      if (this.mIsSplit)
      {
        if (this.mSplitBackground != null)
          this.mSplitBackground.draw(paramCanvas);
      }
      else
      {
        if (this.mBackground != null)
          this.mBackground.draw(paramCanvas);
        if ((this.mStackedBackground != null) && (this.mIsStacked))
          this.mStackedBackground.draw(paramCanvas);
      }
    }
  }

  public void onFinishInflate()
  {
    super.onFinishInflate();
    this.mActionBarView = ((ActionBarView)findViewById(R.id.abs__action_bar));
  }

  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    super.onHoverEvent(paramMotionEvent);
    return true;
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    if ((this.mIsTransitioning) || (super.onInterceptTouchEvent(paramMotionEvent)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool1 = true;
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i;
    int j;
    int k;
    int n;
    label92: View localView;
    if ((this.mTabContainer != null) && (this.mTabContainer.getVisibility() != 8))
    {
      i = bool1;
      if ((this.mTabContainer == null) || (this.mTabContainer.getVisibility() == 8))
        break label161;
      j = getMeasuredHeight();
      k = this.mTabContainer.getMeasuredHeight();
      if ((0x2 & this.mActionBarView.getDisplayOptions()) != 0)
        break label202;
      int m = getChildCount();
      n = 0;
      if (n >= m)
        break label148;
      localView = getChildAt(n);
      if (localView != this.mTabContainer)
        break label128;
    }
    while (true)
    {
      n++;
      break label92;
      i = 0;
      break;
      label128: if (!this.mActionBarView.isCollapsed())
        localView.offsetTopAndBottom(k);
    }
    label148: this.mTabContainer.layout(paramInt1, 0, paramInt3, k);
    label161: if (this.mIsSplit)
    {
      if (this.mSplitBackground == null)
        break label356;
      this.mSplitBackground.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
    }
    while (true)
    {
      if (bool1)
        invalidate();
      return;
      label202: this.mTabContainer.layout(paramInt1, j - k, paramInt3, j);
      break;
      if (this.mBackground != null)
        this.mBackground.setBounds(this.mActionBarView.getLeft(), this.mActionBarView.getTop(), this.mActionBarView.getRight(), this.mActionBarView.getBottom());
      for (boolean bool2 = bool1; ; bool2 = false)
      {
        boolean bool3 = false;
        if (i != 0)
        {
          Drawable localDrawable = this.mStackedBackground;
          bool3 = false;
          if (localDrawable != null)
            bool3 = bool1;
        }
        this.mIsStacked = bool3;
        if (bool3)
        {
          this.mStackedBackground.setBounds(this.mTabContainer.getLeft(), this.mTabContainer.getTop(), this.mTabContainer.getRight(), this.mTabContainer.getBottom());
          break;
        }
        bool1 = bool2;
        break;
      }
      label356: bool1 = false;
    }
  }

  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.mActionBarView == null);
    label118: 
    while (true)
    {
      return;
      FrameLayout.LayoutParams localLayoutParams = (FrameLayout.LayoutParams)this.mActionBarView.getLayoutParams();
      if (this.mActionBarView.isCollapsed());
      for (int i = 0; ; i = this.mActionBarView.getMeasuredHeight() + localLayoutParams.topMargin + localLayoutParams.bottomMargin)
      {
        if ((this.mTabContainer == null) || (this.mTabContainer.getVisibility() == 8) || (View.MeasureSpec.getMode(paramInt2) != -2147483648))
          break label118;
        int j = View.MeasureSpec.getSize(paramInt2);
        setMeasuredDimension(getMeasuredWidth(), Math.min(i + this.mTabContainer.getMeasuredHeight(), j));
        break;
      }
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    super.onTouchEvent(paramMotionEvent);
    return true;
  }

  public void setPrimaryBackground(Drawable paramDrawable)
  {
    this.mBackground = paramDrawable;
    invalidate();
  }

  public void setSplitBackground(Drawable paramDrawable)
  {
    this.mSplitBackground = paramDrawable;
    invalidate();
  }

  public void setStackedBackground(Drawable paramDrawable)
  {
    this.mStackedBackground = paramDrawable;
    invalidate();
  }

  public void setTabContainer(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (this.mTabContainer != null)
      removeView(this.mTabContainer);
    this.mTabContainer = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null)
    {
      addView(paramScrollingTabContainerView);
      ViewGroup.LayoutParams localLayoutParams = paramScrollingTabContainerView.getLayoutParams();
      localLayoutParams.width = -1;
      localLayoutParams.height = -2;
      paramScrollingTabContainerView.setAllowCollapse(false);
    }
  }

  public void setTransitioning(boolean paramBoolean)
  {
    this.mIsTransitioning = paramBoolean;
    if (paramBoolean);
    for (int i = 393216; ; i = 262144)
    {
      setDescendantFocusability(i);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.ActionBarContainer
 * JD-Core Version:    0.6.2
 */