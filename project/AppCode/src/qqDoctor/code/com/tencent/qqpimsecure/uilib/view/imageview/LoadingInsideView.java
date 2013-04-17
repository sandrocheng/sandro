package com.tencent.qqpimsecure.uilib.view.imageview;

import android.content.Context;
import android.util.AttributeSet;

public class LoadingInsideView extends AutoLoadingView
{
  public LoadingInsideView(Context paramContext)
  {
    super(paramContext);
  }

  public LoadingInsideView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public LoadingInsideView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  public int getAnimationTime()
  {
    return 300;
  }

  public int getImageResource()
  {
    return 2130837940;
  }

  public boolean isClockwise()
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.imageview.LoadingInsideView
 * JD-Core Version:    0.6.2
 */