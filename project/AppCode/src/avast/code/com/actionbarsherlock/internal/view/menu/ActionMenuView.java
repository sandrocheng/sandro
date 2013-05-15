package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.os.Build.VERSION;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import com.actionbarsherlock.internal.widget.IcsLinearLayout;

public class ActionMenuView extends IcsLinearLayout
  implements MenuBuilder.ItemInvoker, MenuView
{
  static final int GENERATED_ITEM_PADDING = 4;
  private static final boolean IS_FROYO = false;
  static final int MIN_CELL_SIZE = 56;
  private boolean mFirst = true;
  private boolean mFormatItems;
  private int mFormatItemsWidth;
  private int mGeneratedItemPadding;
  private MenuBuilder mMenu;
  private int mMinCellSize;
  private ActionMenuPresenter mPresenter;
  private boolean mReserveOverflow;

  static
  {
    if (Build.VERSION.SDK_INT >= 8);
    for (boolean bool = true; ; bool = false)
    {
      IS_FROYO = bool;
      return;
    }
  }

  public ActionMenuView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionMenuView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setBaselineAligned(false);
    float f = paramContext.getResources().getDisplayMetrics().density;
    this.mMinCellSize = ((int)(56.0F * f));
    this.mGeneratedItemPadding = ((int)(f * 4.0F));
  }

  static int measureChildForCells(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    ActionMenuView.LayoutParams localLayoutParams = (ActionMenuView.LayoutParams)paramView.getLayoutParams();
    int i = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt3) - paramInt4, View.MeasureSpec.getMode(paramInt3));
    int m;
    int j;
    if (paramInt2 > 0)
    {
      paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1 * paramInt2, -2147483648), i);
      int k = paramView.getMeasuredWidth();
      m = k / paramInt1;
      if (k % paramInt1 != 0)
        j = m + 1;
    }
    while (true)
    {
      if ((paramView instanceof ActionMenuItemView));
      for (ActionMenuItemView localActionMenuItemView = (ActionMenuItemView)paramView; ; localActionMenuItemView = null)
      {
        boolean bool1 = localLayoutParams.isOverflowButton;
        boolean bool2 = false;
        if (!bool1)
        {
          bool2 = false;
          if (localActionMenuItemView != null)
          {
            boolean bool3 = localActionMenuItemView.hasText();
            bool2 = false;
            if (bool3)
              bool2 = true;
          }
        }
        localLayoutParams.expandable = bool2;
        localLayoutParams.cellsUsed = j;
        paramView.measure(View.MeasureSpec.makeMeasureSpec(j * paramInt1, 1073741824), i);
        return j;
      }
      j = m;
      continue;
      j = 0;
    }
  }

  private void onMeasureExactFormat(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt2);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = View.MeasureSpec.getSize(paramInt2);
    int m = getPaddingLeft() + getPaddingRight();
    int n = getPaddingTop() + getPaddingBottom();
    int i1 = j - m;
    int i2 = i1 / this.mMinCellSize;
    int i3 = i1 % this.mMinCellSize;
    if (i2 == 0)
    {
      setMeasuredDimension(i1, 0);
      return;
    }
    int i4 = this.mMinCellSize + i3 / i2;
    int i5 = 0;
    int i6 = 0;
    int i7 = 0;
    int i8 = 0;
    int i9 = 0;
    long l1 = 0L;
    int i10 = getChildCount();
    int i11 = 0;
    View localView4;
    int i40;
    long l8;
    int i42;
    int i43;
    int i41;
    label161: int i32;
    ActionMenuView.LayoutParams localLayoutParams5;
    boolean bool2;
    label285: int i33;
    label303: int i34;
    int i35;
    while (true)
      if (i11 < i10)
      {
        localView4 = getChildAt(i11);
        if (localView4.getVisibility() == 8)
        {
          i40 = i8;
          l8 = l1;
          i42 = i5;
          i43 = i2;
          i41 = i6;
          i11++;
          i6 = i41;
          i5 = i42;
          i2 = i43;
          l1 = l8;
          i8 = i40;
        }
        else
        {
          boolean bool1 = localView4 instanceof ActionMenuItemView;
          i32 = i8 + 1;
          if (bool1)
            localView4.setPadding(this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
          localLayoutParams5 = (ActionMenuView.LayoutParams)localView4.getLayoutParams();
          localLayoutParams5.expanded = false;
          localLayoutParams5.extraPixels = 0;
          localLayoutParams5.cellsUsed = 0;
          localLayoutParams5.expandable = false;
          localLayoutParams5.leftMargin = 0;
          localLayoutParams5.rightMargin = 0;
          if ((bool1) && (((ActionMenuItemView)localView4).hasText()))
          {
            bool2 = true;
            localLayoutParams5.preventEdgeOffset = bool2;
            if (!localLayoutParams5.isOverflowButton)
              break label423;
            i33 = 1;
            i34 = measureChildForCells(localView4, i4, i33, paramInt2, n);
            i35 = Math.max(i6, i34);
            if (!localLayoutParams5.expandable)
              break label1326;
          }
        }
      }
    label423: label1326: for (int i36 = i7 + 1; ; i36 = i7)
    {
      if (localLayoutParams5.isOverflowButton);
      for (int i37 = 1; ; i37 = i9)
      {
        int i38 = i2 - i34;
        int i39 = Math.max(i5, localView4.getMeasuredHeight());
        label455: label478: label754: if (i34 == 1)
        {
          long l9 = l1 | 1 << i11;
          i42 = i39;
          i43 = i38;
          i7 = i36;
          i9 = i37;
          l8 = l9;
          i41 = i35;
          i40 = i32;
          break label161;
          bool2 = false;
          break label285;
          i33 = i2;
          break label303;
          int i12;
          int i13;
          long l2;
          int i14;
          int i23;
          long l4;
          int i24;
          int i25;
          ActionMenuView.LayoutParams localLayoutParams4;
          int i30;
          int i31;
          if ((i9 != 0) && (i8 == 2))
          {
            i12 = 1;
            i13 = 0;
            l2 = l1;
            i14 = i2;
            if ((i7 <= 0) || (i14 <= 0))
              break label1277;
            i23 = 2147483647;
            l4 = 0L;
            i24 = 0;
            i25 = 0;
            if (i25 >= i10)
              break label598;
            localLayoutParams4 = (ActionMenuView.LayoutParams)getChildAt(i25).getLayoutParams();
            if (localLayoutParams4.expandable)
              break label535;
            i30 = i24;
            i31 = i23;
          }
          while (true)
          {
            i25++;
            i23 = i31;
            i24 = i30;
            break label478;
            i12 = 0;
            break;
            if (localLayoutParams4.cellsUsed < i23)
            {
              i31 = localLayoutParams4.cellsUsed;
              l4 = 1 << i25;
              i30 = 1;
            }
            else
            {
              if (localLayoutParams4.cellsUsed != i23)
                break label1266;
              l4 |= 1 << i25;
              i30 = i24 + 1;
              i31 = i23;
            }
          }
          long l5 = l2 | l4;
          if (i24 > i14);
          label630: label1277: for (long l3 = l5; ; l3 = l2)
          {
            int i15;
            float f1;
            float f2;
            int i20;
            int i21;
            int i16;
            int i22;
            int i27;
            int i28;
            long l6;
            View localView3;
            ActionMenuView.LayoutParams localLayoutParams3;
            int i29;
            if ((i9 == 0) && (i8 == 1))
            {
              i15 = 1;
              if ((i14 <= 0) || (l3 == 0L))
                break label1137;
              int i19 = i8 - 1;
              if ((i14 >= i19) && (i15 == 0) && (i6 <= 1))
                break label1137;
              f1 = Long.bitCount(l3);
              if (i15 != 0)
                break label1252;
              if (((1L & l3) != 0L) && (!((ActionMenuView.LayoutParams)getChildAt(0).getLayoutParams()).preventEdgeOffset))
                f1 -= 0.5F;
              if (((l3 & 1 << i10 - 1) == 0L) || (((ActionMenuView.LayoutParams)getChildAt(i10 - 1).getLayoutParams()).preventEdgeOffset))
                break label1252;
              f2 = f1 - 0.5F;
              if (f2 <= 0.0F)
                break label987;
              i20 = (int)(i14 * i4 / f2);
              i21 = 0;
              i16 = i13;
              while (true)
                if (i21 < i10)
                  if ((l3 & 1 << i21) == 0L)
                  {
                    i22 = i16;
                    i21++;
                    i16 = i22;
                    continue;
                    int i26 = i23 + 1;
                    i27 = 0;
                    i28 = i14;
                    l6 = l5;
                    if (i27 < i10)
                    {
                      localView3 = getChildAt(i27);
                      localLayoutParams3 = (ActionMenuView.LayoutParams)localView3.getLayoutParams();
                      if ((l4 & 1 << i27) == 0L)
                      {
                        if (localLayoutParams3.cellsUsed != i26)
                          break label1259;
                        l6 |= 1 << i27;
                        i29 = i28;
                      }
                    }
                  }
            }
            while (true)
            {
              i27++;
              i28 = i29;
              break label831;
              if ((i12 != 0) && (localLayoutParams3.preventEdgeOffset) && (i28 == 1))
                localView3.setPadding(i4 + this.mGeneratedItemPadding, 0, this.mGeneratedItemPadding, 0);
              localLayoutParams3.cellsUsed = (1 + localLayoutParams3.cellsUsed);
              localLayoutParams3.expanded = true;
              i29 = i28 - 1;
              continue;
              l2 = l6;
              i13 = 1;
              i14 = i28;
              break label455;
              i15 = 0;
              break label630;
              i20 = 0;
              break label773;
              View localView2 = getChildAt(i21);
              ActionMenuView.LayoutParams localLayoutParams2 = (ActionMenuView.LayoutParams)localView2.getLayoutParams();
              if ((localView2 instanceof ActionMenuItemView))
              {
                localLayoutParams2.extraPixels = i20;
                localLayoutParams2.expanded = true;
                if ((i21 == 0) && (!localLayoutParams2.preventEdgeOffset))
                  localLayoutParams2.leftMargin = (-i20 / 2);
                i22 = 1;
                break label804;
              }
              if (localLayoutParams2.isOverflowButton)
              {
                localLayoutParams2.extraPixels = i20;
                localLayoutParams2.expanded = true;
                localLayoutParams2.rightMargin = (-i20 / 2);
                i22 = 1;
                break label804;
              }
              if (i21 != 0)
                localLayoutParams2.leftMargin = (i20 / 2);
              if (i21 != i10 - 1)
                localLayoutParams2.rightMargin = (i20 / 2);
              i22 = i16;
              break label804;
              i16 = i13;
              if (i16 != 0)
              {
                int i17 = View.MeasureSpec.makeMeasureSpec(k - n, i);
                int i18 = 0;
                if (i18 < i10)
                {
                  View localView1 = getChildAt(i18);
                  ActionMenuView.LayoutParams localLayoutParams1 = (ActionMenuView.LayoutParams)localView1.getLayoutParams();
                  if (!localLayoutParams1.expanded);
                  while (true)
                  {
                    i18++;
                    break;
                    localView1.measure(View.MeasureSpec.makeMeasureSpec(i4 * localLayoutParams1.cellsUsed + localLayoutParams1.extraPixels, 1073741824), i17);
                  }
                }
              }
              if (i != 1073741824);
              while (true)
              {
                setMeasuredDimension(i1, i5);
                break;
                i5 = k;
              }
              f2 = f1;
              break label754;
              i29 = i28;
            }
            i30 = i24;
            i31 = i23;
            break label515;
          }
        }
        label598: label987: label1137: label1266: i40 = i32;
        label831: label1252: label1259: i41 = i35;
        long l7 = l1;
        i42 = i39;
        i43 = i38;
        i9 = i37;
        i7 = i36;
        l8 = l7;
        break label161;
      }
    }
  }

  protected boolean checkLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if ((paramLayoutParams != null) && ((paramLayoutParams instanceof ActionMenuView.LayoutParams)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    return false;
  }

  protected ActionMenuView.LayoutParams generateDefaultLayoutParams()
  {
    ActionMenuView.LayoutParams localLayoutParams = new ActionMenuView.LayoutParams(-2, -2);
    localLayoutParams.gravity = 16;
    return localLayoutParams;
  }

  public ActionMenuView.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ActionMenuView.LayoutParams(getContext(), paramAttributeSet);
  }

  protected ActionMenuView.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    ActionMenuView.LayoutParams localLayoutParams;
    if ((paramLayoutParams instanceof ActionMenuView.LayoutParams))
    {
      localLayoutParams = new ActionMenuView.LayoutParams((ActionMenuView.LayoutParams)paramLayoutParams);
      if (localLayoutParams.gravity <= 0)
        localLayoutParams.gravity = 16;
    }
    while (true)
    {
      return localLayoutParams;
      localLayoutParams = generateDefaultLayoutParams();
    }
  }

  public ActionMenuView.LayoutParams generateOverflowButtonLayoutParams()
  {
    ActionMenuView.LayoutParams localLayoutParams = generateDefaultLayoutParams();
    localLayoutParams.isOverflowButton = true;
    return localLayoutParams;
  }

  public int getWindowAnimations()
  {
    return 0;
  }

  protected boolean hasDividerBeforeChildAt(int paramInt)
  {
    boolean bool2;
    if (paramInt == 0)
      bool2 = false;
    while (true)
    {
      return bool2;
      View localView1 = getChildAt(paramInt - 1);
      View localView2 = getChildAt(paramInt);
      int i = getChildCount();
      boolean bool1 = false;
      if (paramInt < i)
      {
        boolean bool3 = localView1 instanceof ActionMenuView.ActionMenuChildView;
        bool1 = false;
        if (bool3)
          bool1 = false | ((ActionMenuView.ActionMenuChildView)localView1).needsDividerAfter();
      }
      if ((paramInt > 0) && ((localView2 instanceof ActionMenuView.ActionMenuChildView)))
        bool2 = bool1 | ((ActionMenuView.ActionMenuChildView)localView2).needsDividerBefore();
      else
        bool2 = bool1;
    }
  }

  public void initialize(MenuBuilder paramMenuBuilder)
  {
    this.mMenu = paramMenuBuilder;
  }

  public boolean invokeItem(MenuItemImpl paramMenuItemImpl)
  {
    return this.mMenu.performItemAction(paramMenuItemImpl, 0);
  }

  public boolean isExpandedFormat()
  {
    return this.mFormatItems;
  }

  public boolean isOverflowReserved()
  {
    return this.mReserveOverflow;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (IS_FROYO)
      super.onConfigurationChanged(paramConfiguration);
    this.mPresenter.updateMenuView(false);
    if ((this.mPresenter != null) && (this.mPresenter.isOverflowMenuShowing()))
    {
      this.mPresenter.hideOverflowMenu();
      this.mPresenter.showOverflowMenu();
    }
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    this.mPresenter.dismissPopupMenus();
  }

  protected void onDraw(Canvas paramCanvas)
  {
    if ((!IS_FROYO) && (this.mFirst))
    {
      this.mFirst = false;
      requestLayout();
    }
    while (true)
    {
      return;
      super.onDraw(paramCanvas);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (!this.mFormatItems)
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    int i;
    int j;
    int k;
    int m;
    int n;
    while (true)
    {
      return;
      i = getChildCount();
      j = (paramInt2 + paramInt4) / 2;
      k = 0;
      m = paramInt3 - paramInt1 - getPaddingRight() - getPaddingLeft();
      n = 0;
      int i1 = 0;
      if (i1 < i)
      {
        View localView3 = getChildAt(i1);
        int i21;
        int i20;
        int i18;
        if (localView3.getVisibility() == 8)
        {
          i21 = n;
          i20 = m;
          i18 = k;
        }
        while (true)
        {
          i1++;
          k = i18;
          m = i20;
          n = i21;
          break;
          ActionMenuView.LayoutParams localLayoutParams2 = (ActionMenuView.LayoutParams)localView3.getLayoutParams();
          if (localLayoutParams2.isOverflowButton)
          {
            int i22 = localView3.getMeasuredWidth();
            if (hasDividerBeforeChildAt(i1))
              i22 += 0;
            int i23 = localView3.getMeasuredHeight();
            int i24 = getWidth() - getPaddingRight() - localLayoutParams2.rightMargin;
            int i25 = i24 - i22;
            int i26 = j - i23 / 2;
            localView3.layout(i25, i26, i24, i23 + i26);
            i20 = m - i22;
            i21 = 1;
            i18 = k;
          }
          else
          {
            int i17 = m - (localView3.getMeasuredWidth() + localLayoutParams2.leftMargin + localLayoutParams2.rightMargin);
            i18 = k + 1;
            int i19 = n;
            i20 = i17;
            i21 = i19;
          }
        }
      }
      if ((i != 1) || (n != 0))
        break;
      View localView2 = getChildAt(0);
      int i13 = localView2.getMeasuredWidth();
      int i14 = localView2.getMeasuredHeight();
      int i15 = (paramInt3 - paramInt1) / 2 - i13 / 2;
      int i16 = j - i14 / 2;
      localView2.layout(i15, i16, i13 + i15, i14 + i16);
    }
    int i2;
    label350: int i4;
    label369: int i5;
    int i6;
    int i7;
    label386: View localView1;
    ActionMenuView.LayoutParams localLayoutParams1;
    int i8;
    if (n != 0)
    {
      i2 = 0;
      int i3 = k - i2;
      if (i3 <= 0)
        break label449;
      i4 = m / i3;
      i5 = Math.max(0, i4);
      i6 = getPaddingLeft();
      i7 = 0;
      if (i7 < i)
      {
        localView1 = getChildAt(i7);
        localLayoutParams1 = (ActionMenuView.LayoutParams)localView1.getLayoutParams();
        if (localView1.getVisibility() == 8)
          break label526;
        if (!localLayoutParams1.isOverflowButton)
          break label455;
        i8 = i6;
      }
    }
    while (true)
    {
      i7++;
      i6 = i8;
      break label386;
      break;
      i2 = 1;
      break label350;
      label449: i4 = 0;
      break label369;
      label455: int i9 = i6 + localLayoutParams1.leftMargin;
      int i10 = localView1.getMeasuredWidth();
      int i11 = localView1.getMeasuredHeight();
      int i12 = j - i11 / 2;
      localView1.layout(i9, i12, i9 + i10, i11 + i12);
      i8 = i9 + (i5 + (i10 + localLayoutParams1.rightMargin));
      continue;
      label526: i8 = i6;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool1 = this.mFormatItems;
    boolean bool2;
    if (View.MeasureSpec.getMode(paramInt1) == 1073741824)
    {
      bool2 = true;
      this.mFormatItems = bool2;
      if (bool1 != this.mFormatItems)
        this.mFormatItemsWidth = 0;
      int i = View.MeasureSpec.getMode(paramInt1);
      if ((this.mFormatItems) && (this.mMenu != null) && (i != this.mFormatItemsWidth))
      {
        this.mFormatItemsWidth = i;
        this.mMenu.onItemsChanged(true);
      }
      if (!this.mFormatItems)
        break label99;
      onMeasureExactFormat(paramInt1, paramInt2);
    }
    while (true)
    {
      return;
      bool2 = false;
      break;
      label99: super.onMeasure(paramInt1, paramInt2);
    }
  }

  public void setOverflowReserved(boolean paramBoolean)
  {
    this.mReserveOverflow = paramBoolean;
  }

  public void setPresenter(ActionMenuPresenter paramActionMenuPresenter)
  {
    this.mPresenter = paramActionMenuPresenter;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuView
 * JD-Core Version:    0.6.2
 */