package com.tencent.qqpimsecure.view.privacy;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import gw;

public class LockPatternBackgroundImage extends ImageView
{
  public LockPatternBackgroundImage(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    setScaleType(ImageView.ScaleType.FIT_XY);
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    if (gw.a < gw.b);
    for (int i = gw.a; ; i = gw.b)
    {
      setMeasuredDimension(i, (int)(0.62334F * i));
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.view.privacy.LockPatternBackgroundImage
 * JD-Core Version:    0.6.2
 */