package com.actionbarsherlock.internal.view.menu;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout.LayoutParams;

public class ActionMenuView$LayoutParams extends LinearLayout.LayoutParams
{
  public int cellsUsed;
  public boolean expandable;
  public boolean expanded;
  public int extraPixels;
  public boolean isOverflowButton;
  public boolean preventEdgeOffset;

  public ActionMenuView$LayoutParams(int paramInt1, int paramInt2)
  {
    super(paramInt1, paramInt2);
    this.isOverflowButton = false;
  }

  public ActionMenuView$LayoutParams(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    super(paramInt1, paramInt2);
    this.isOverflowButton = paramBoolean;
  }

  public ActionMenuView$LayoutParams(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public ActionMenuView$LayoutParams(LayoutParams paramLayoutParams)
  {
    super(paramLayoutParams);
    this.isOverflowButton = paramLayoutParams.isOverflowButton;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.actionbarsherlock.internal.view.menu.ActionMenuView.LayoutParams
 * JD-Core Version:    0.6.2
 */