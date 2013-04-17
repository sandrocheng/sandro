package com.tencent.qqpimsecure.uilib.view.imageview;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Message;
import android.util.AttributeSet;
import android.widget.ImageView;

public abstract class AutoLoadingView extends ImageView
  implements Handler.Callback
{
  private final int ANIMATION_ONCE_TIME = 10;
  private final int MAX_ROTATE = 360;
  private boolean mAnimating = false;
  private int mAnimationTime = 1000;
  private int mCenterX = 0;
  private int mCenterY = 0;
  private Handler mHandler = new Handler(this);
  private int mReallyRotate = 0;
  private int mRotate = 0;
  private boolean mStart = false;
  private long mStartTime = 0L;
  private boolean mStop = false;

  public AutoLoadingView(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  public AutoLoadingView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    initView(paramContext);
  }

  public AutoLoadingView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    initView(paramContext);
  }

  private void initView(Context paramContext)
  {
    setImageResource(getImageResource());
    this.mAnimationTime = getAnimationTime();
  }

  public abstract int getAnimationTime();

  public abstract int getImageResource();

  public boolean handleMessage(Message paramMessage)
  {
    if (this.mStart)
    {
      this.mStartTime = System.currentTimeMillis();
      this.mStart = false;
    }
    float f = 1.0F * (float)(System.currentTimeMillis() - this.mStartTime) / this.mAnimationTime;
    this.mHandler.removeMessages(0);
    if (f > 1.0F)
      this.mStartTime = System.currentTimeMillis();
    for (this.mRotate = 0; ; this.mRotate = ((int)(f * 360.0F)))
    {
      postInvalidate();
      if (!this.mStop)
        this.mHandler.sendEmptyMessageDelayed(0, 10L);
      return true;
    }
  }

  public boolean isClockwise()
  {
    return true;
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.save();
    if (isClockwise());
    for (int i = this.mRotate; ; i = -this.mRotate)
    {
      this.mReallyRotate = i;
      paramCanvas.rotate(this.mReallyRotate, this.mCenterX, this.mCenterY);
      super.onDraw(paramCanvas);
      paramCanvas.restore();
      return;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.mCenterX = (getWidth() / 2);
    this.mCenterY = (getHeight() / 2);
  }

  public void setVisibility(int paramInt)
  {
    if (paramInt != 0)
      stopRotationAnimation();
    super.setVisibility(paramInt);
  }

  public void startRotationAnimation()
  {
    if (this.mAnimating);
    while (true)
    {
      return;
      this.mAnimating = true;
      this.mStart = true;
      this.mStop = false;
      this.mHandler.sendEmptyMessageDelayed(0, 10L);
    }
  }

  public void stopRotationAnimation()
  {
    if (!this.mAnimating);
    while (true)
    {
      return;
      this.mAnimating = false;
      this.mStop = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.imageview.AutoLoadingView
 * JD-Core Version:    0.6.2
 */