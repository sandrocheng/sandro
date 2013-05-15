package com.actionbarsherlock.internal.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.MeasureSpec;
import android.widget.LinearLayout.LayoutParams;
import com.actionbarsherlock.internal.nineoldandroids.widget.NineLinearLayout;

public class IcsLinearLayout extends NineLinearLayout
{
  private static final int LinearLayout_divider = 0;
  private static final int LinearLayout_dividerPadding = 3;
  private static final int LinearLayout_measureWithLargestChild = 1;
  private static final int LinearLayout_showDividers = 2;
  private static final int[] R_styleable_LinearLayout = { 16843049, 16843476, 16843561, 16843562 };
  public static final int SHOW_DIVIDER_BEGINNING = 1;
  public static final int SHOW_DIVIDER_END = 4;
  public static final int SHOW_DIVIDER_MIDDLE = 2;
  public static final int SHOW_DIVIDER_NONE;
  private Drawable mDivider;
  private int mDividerHeight;
  private int mDividerPadding;
  private int mDividerWidth;
  private int mShowDividers;
  private boolean mUseLargestChild;

  public IcsLinearLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R_styleable_LinearLayout);
    setDividerDrawable(localTypedArray.getDrawable(0));
    this.mShowDividers = localTypedArray.getInt(2, 0);
    this.mDividerPadding = localTypedArray.getDimensionPixelSize(3, 0);
    this.mUseLargestChild = localTypedArray.getBoolean(1, false);
    localTypedArray.recycle();
  }

  private void useLargestChildHorizontal()
  {
    int i = getChildCount();
    int j = 0;
    int i3;
    for (int k = 0; j < i; k = i3)
    {
      i3 = Math.max(getChildAt(j).getMeasuredWidth(), k);
      j++;
    }
    int m = 0;
    int n = 0;
    View localView;
    int i1;
    if (m < i)
    {
      localView = getChildAt(m);
      if (localView == null)
        break label186;
      if (localView.getVisibility() == 8)
        i1 = n;
    }
    while (true)
    {
      m++;
      n = i1;
      break;
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
      if (localLayoutParams.weight > 0.0F)
        localView.measure(View.MeasureSpec.makeMeasureSpec(k, 1073741824), View.MeasureSpec.makeMeasureSpec(localView.getMeasuredHeight(), 1073741824));
      for (int i2 = n + k; ; i2 = n + localView.getMeasuredWidth())
      {
        i1 = i2 + (localLayoutParams.leftMargin + localLayoutParams.rightMargin);
        break;
      }
      setMeasuredDimension(n + (getPaddingLeft() + getPaddingRight()), getMeasuredHeight());
      return;
      label186: i1 = n;
    }
  }

  private void useLargestChildVertical()
  {
    int i = getChildCount();
    int j = 0;
    int i4;
    for (int k = 0; j < i; k = i4)
    {
      i4 = Math.max(getChildAt(j).getMeasuredHeight(), k);
      j++;
    }
    int m = 0;
    int n = 0;
    View localView;
    int i2;
    if (m < i)
    {
      localView = getChildAt(m);
      if (localView == null)
        break label190;
      if (localView.getVisibility() == 8)
        i2 = n;
    }
    while (true)
    {
      m++;
      n = i2;
      break;
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView.getLayoutParams();
      if (localLayoutParams.weight > 0.0F)
        localView.measure(View.MeasureSpec.makeMeasureSpec(localView.getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(k, 1073741824));
      for (int i3 = n + k; ; i3 = n + localView.getMeasuredHeight())
      {
        i2 = i3 + (localLayoutParams.leftMargin + localLayoutParams.rightMargin);
        break;
      }
      int i1 = n + (getPaddingLeft() + getPaddingRight());
      setMeasuredDimension(getMeasuredWidth(), i1);
      return;
      label190: i2 = n;
    }
  }

  void drawDividersHorizontal(Canvas paramCanvas)
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView2 = getChildAt(j);
      if ((localView2 != null) && (localView2.getVisibility() != 8) && (hasDividerBeforeChildAt(j)))
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView2.getLayoutParams();
        drawVerticalDivider(paramCanvas, localView2.getLeft() - localLayoutParams.leftMargin);
      }
    }
    View localView1;
    if (hasDividerBeforeChildAt(i))
    {
      localView1 = getChildAt(i - 1);
      if (localView1 != null)
        break label120;
    }
    label120: for (int k = getWidth() - getPaddingRight() - this.mDividerWidth; ; k = localView1.getRight())
    {
      drawVerticalDivider(paramCanvas, k);
      return;
    }
  }

  void drawDividersVertical(Canvas paramCanvas)
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
    {
      View localView2 = getChildAt(j);
      if ((localView2 != null) && (localView2.getVisibility() != 8) && (hasDividerBeforeChildAt(j)))
      {
        LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)localView2.getLayoutParams();
        drawHorizontalDivider(paramCanvas, localView2.getTop() - localLayoutParams.topMargin);
      }
    }
    View localView1;
    if (hasDividerBeforeChildAt(i))
    {
      localView1 = getChildAt(i - 1);
      if (localView1 != null)
        break label120;
    }
    label120: for (int k = getHeight() - getPaddingBottom() - this.mDividerHeight; ; k = localView1.getBottom())
    {
      drawHorizontalDivider(paramCanvas, k);
      return;
    }
  }

  void drawHorizontalDivider(Canvas paramCanvas, int paramInt)
  {
    this.mDivider.setBounds(getPaddingLeft() + this.mDividerPadding, paramInt, getWidth() - getPaddingRight() - this.mDividerPadding, paramInt + this.mDividerHeight);
    this.mDivider.draw(paramCanvas);
  }

  void drawVerticalDivider(Canvas paramCanvas, int paramInt)
  {
    this.mDivider.setBounds(paramInt, getPaddingTop() + this.mDividerPadding, paramInt + this.mDividerWidth, getHeight() - getPaddingBottom() - this.mDividerPadding);
    this.mDivider.draw(paramCanvas);
  }

  public int getDividerPadding()
  {
    return this.mDividerPadding;
  }

  public int getDividerWidth()
  {
    return this.mDividerWidth;
  }

  public int getShowDividers()
  {
    return this.mShowDividers;
  }

  protected boolean hasDividerBeforeChildAt(int paramInt)
  {
    boolean bool = true;
    if (paramInt == 0)
      if ((0x1 & this.mShowDividers) == 0);
    while (true)
    {
      return bool;
      bool = false;
      continue;
      if (paramInt == getChildCount())
      {
        if ((0x4 & this.mShowDividers) == 0)
          bool = false;
      }
      else
      {
        if ((0x2 & this.mShowDividers) != 0)
          for (int i = paramInt - 1; ; i--)
          {
            if (i < 0)
              break label85;
            if (getChildAt(i).getVisibility() != 8)
              break;
          }
        bool = false;
        continue;
        label85: bool = false;
      }
    }
  }

  public boolean isMeasureWithLargestChildEnabled()
  {
    return this.mUseLargestChild;
  }

  protected void measureChildWithMargins(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = indexOfChild(paramView);
    int j = getOrientation();
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)paramView.getLayoutParams();
    if (hasDividerBeforeChildAt(i))
    {
      if (j == 1)
        localLayoutParams.topMargin = this.mDividerHeight;
    }
    else
    {
      int k = getChildCount();
      if ((i == k - 1) && (hasDividerBeforeChildAt(k)))
      {
        if (j != 1)
          break label109;
        localLayoutParams.bottomMargin = this.mDividerHeight;
      }
    }
    while (true)
    {
      super.measureChildWithMargins(paramView, paramInt1, paramInt2, paramInt3, paramInt4);
      return;
      localLayoutParams.leftMargin = this.mDividerWidth;
      break;
      label109: localLayoutParams.rightMargin = this.mDividerWidth;
    }
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if (this.mDivider != null)
    {
      if (getOrientation() != 1)
        break label26;
      drawDividersVertical(paramCanvas);
    }
    while (true)
    {
      super.onDraw(paramCanvas);
      return;
      label26: drawDividersHorizontal(paramCanvas);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if (this.mUseLargestChild)
      switch (getOrientation())
      {
      default:
      case 0:
      case 1:
      }
    while (true)
    {
      return;
      useLargestChildHorizontal();
      continue;
      useLargestChildVertical();
    }
  }

  public void setDividerDrawable(Drawable paramDrawable)
  {
    if (paramDrawable == this.mDivider)
      return;
    this.mDivider = paramDrawable;
    if (paramDrawable != null)
      this.mDividerWidth = paramDrawable.getIntrinsicWidth();
    for (this.mDividerHeight = paramDrawable.getIntrinsicHeight(); ; this.mDividerHeight = 0)
    {
      boolean bool = false;
      if (paramDrawable == null)
        bool = true;
      setWillNotDraw(bool);
      requestLayout();
      break;
      this.mDividerWidth = 0;
    }
  }

  public void setDividerPadding(int paramInt)
  {
    this.mDividerPadding = paramInt;
  }

  public void setMeasureWithLargestChildEnabled(boolean paramBoolean)
  {
    this.mUseLargestChild = paramBoolean;
  }

  public void setShowDividers(int paramInt)
  {
    if (paramInt != this.mShowDividers)
    {
      requestLayout();
      invalidate();
    }
    this.mShowDividers = paramInt;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.widget.IcsLinearLayout
 * JD-Core Version:    0.6.2
 */