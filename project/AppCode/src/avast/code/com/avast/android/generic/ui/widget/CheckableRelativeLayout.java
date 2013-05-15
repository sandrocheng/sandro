package com.avast.android.generic.ui.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.RelativeLayout;

public class CheckableRelativeLayout extends RelativeLayout
  implements Checkable
{
  private static final int[] a = { 16842912 };
  private boolean b = false;

  public CheckableRelativeLayout(Context paramContext)
  {
    super(paramContext);
  }

  public CheckableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public CheckableRelativeLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public boolean isChecked()
  {
    return this.b;
  }

  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if (this.b)
      mergeDrawableStates(arrayOfInt, a);
    return arrayOfInt;
  }

  public void setChecked(boolean paramBoolean)
  {
    this.b = paramBoolean;
    refreshDrawableState();
  }

  public void toggle()
  {
    if (!this.b);
    for (boolean bool = true; ; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.CheckableRelativeLayout
 * JD-Core Version:    0.6.2
 */