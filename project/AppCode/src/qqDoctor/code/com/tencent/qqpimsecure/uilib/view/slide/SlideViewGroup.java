package com.tencent.qqpimsecure.uilib.view.slide;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.LinearLayout;

public class SlideViewGroup extends LinearLayout
{
  public SlideViewGroup(Context paramContext)
  {
    super(paramContext);
  }

  public SlideViewGroup(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return true;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.slide.SlideViewGroup
 * JD-Core Version:    0.6.2
 */