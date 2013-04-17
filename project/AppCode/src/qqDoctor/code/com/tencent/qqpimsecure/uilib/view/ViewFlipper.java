package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.util.AttributeSet;

public class ViewFlipper extends android.widget.ViewFlipper
{
  public ViewFlipper(Context paramContext)
  {
    super(paramContext);
  }

  public ViewFlipper(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  protected void onDetachedFromWindow()
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.ViewFlipper
 * JD-Core Version:    0.6.2
 */