package com.tencent.qqpimsecure.uilib.view.button;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.ImageView;

public class RotationView extends ImageView
{
  private final int ANIMATION_ONCE_TIME = 30;
  private final int MAX_ANIMATION_TIME = 3500;
  private final int MAX_ROTATE = 2520;
  private boolean mAnimating = false;
  private int mCenterX = 0;
  private int mCenterY = 0;
  private Handler mHandler = new RotationView.1(this);
  private int mRotate = 0;
  private long mStartTime = 0L;
  private boolean mStop = false;

  public RotationView(Context paramContext)
  {
    super(paramContext);
  }

  public RotationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public RotationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onDraw(Canvas paramCanvas)
  {
    paramCanvas.save();
    paramCanvas.rotate(this.mRotate, this.mCenterX, this.mCenterY);
    super.onDraw(paramCanvas);
    paramCanvas.restore();
  }

  public void startRotationAnimation()
  {
    if (this.mAnimating);
    while (true)
    {
      return;
      this.mCenterX = (getWidth() / 2);
      this.mCenterY = (getHeight() / 2);
      this.mStartTime = System.currentTimeMillis();
      this.mAnimating = true;
      this.mStop = false;
      this.mHandler.sendEmptyMessageDelayed(0, 30L);
    }
  }

  public void stopRotationAnimation()
  {
    if (!this.mAnimating);
    while (true)
    {
      return;
      this.mStop = true;
      this.mHandler.sendEmptyMessageDelayed(0, 30L);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.button.RotationView
 * JD-Core Version:    0.6.2
 */