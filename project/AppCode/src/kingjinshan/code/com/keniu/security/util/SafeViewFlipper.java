package com.keniu.security.util;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ViewFlipper;

public class SafeViewFlipper extends ViewFlipper
{
  private SafeViewFlipper(Context paramContext)
  {
    super(paramContext);
  }

  public SafeViewFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void onDetachedFromWindow()
  {
    try
    {
      super.onDetachedFromWindow();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        stopFlipping();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.SafeViewFlipper
 * JD-Core Version:    0.6.2
 */