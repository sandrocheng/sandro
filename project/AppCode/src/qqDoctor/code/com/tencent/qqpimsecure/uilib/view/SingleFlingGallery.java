package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.widget.Gallery;

public class SingleFlingGallery extends Gallery
{
  private static final int TOUCH_STATE_REST = 0;
  private static final int TOUCH_STATE_SCROLLING = 1;
  private float mLastMotionX;
  private float mLastMotionY;
  private float mSensitivity = 0.0F;
  private final int mTouchSlop = 16;
  private int mTouchState = 0;

  public SingleFlingGallery(Context paramContext)
  {
    super(paramContext);
  }

  public SingleFlingGallery(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SingleFlingGallery(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private boolean isScrollingLeft(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2)
  {
    if (paramMotionEvent2.getX() > paramMotionEvent1.getX());
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
  {
    boolean bool;
    if ((paramMotionEvent1 == null) || (paramMotionEvent2 == null))
    {
      bool = false;
      return bool;
    }
    if (isScrollingLeft(paramMotionEvent1, paramMotionEvent2));
    for (int i = 21; ; i = 22)
    {
      onKeyDown(i, null);
      bool = true;
      break;
    }
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = 1;
    int j = paramMotionEvent.getAction();
    if ((j == 2) && (this.mTouchState != 0));
    label189: label195: 
    while (true)
    {
      return i;
      float f1 = paramMotionEvent.getX();
      float f2 = paramMotionEvent.getY();
      switch (j)
      {
      default:
      case 2:
      case 0:
      case 1:
      case 3:
      }
      while (true)
      {
        if (this.mTouchState != 0)
          break label195;
        i = 0;
        break;
        int k = (int)(f1 - this.mLastMotionX);
        if ((int)Math.abs(f1 - this.mLastMotionX) > 16);
        int n;
        for (int m = i; m != 0; n = 0)
        {
          new StringBuilder().append(k).append(" SingleFlingGallery onInterceptTouchEvent getSelectedItemPosition() ").append(getSelectedItemPosition()).toString();
          if (((getSelectedItemPosition() == 0) && (k > 0)) || ((getSelectedItemPosition() == i) && (k < 0)))
            break label189;
          this.mTouchState = i;
          break;
        }
        this.mLastMotionX = f1;
        this.mLastMotionY = f2;
        this.mTouchState = 0;
      }
    }
  }

  public void setSensitivity(float paramFloat)
  {
    this.mSensitivity = paramFloat;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SingleFlingGallery
 * JD-Core Version:    0.6.2
 */