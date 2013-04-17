package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import kg;

public class SuspendWhirlPoolView extends LinearLayout
{
  private final int EndStartGif = 2;
  private final int KStartGif = 1;
  private AnimationDrawable animationDrawableS;
  private Context mContext;
  private Handler mHandler = new SuspendWhirlPoolView.1(this);
  private ImageView mHighSmokeImg;
  private FrameLayout mLean;
  private onSuspendWhirlPoolAnimListener mListener;
  private ImageView mLowSmokeImg;
  private ImageView mSlashImg;
  private ImageView mSlashImg2;

  public SuspendWhirlPoolView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SuspendWhirlPoolView(Context paramContext, onSuspendWhirlPoolAnimListener paramonSuspendWhirlPoolAnimListener)
  {
    super(paramContext);
    this.mListener = paramonSuspendWhirlPoolAnimListener;
    this.mContext = paramContext;
    this.mLean = ((FrameLayout)LayoutInflater.from(this.mContext).inflate(2130903277, null));
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
    addView(this.mLean, localLayoutParams);
    this.mSlashImg = ((ImageView)this.mLean.findViewById(2131231501));
    this.mSlashImg2 = ((ImageView)this.mLean.findViewById(2131231502));
    this.mLowSmokeImg = ((ImageView)this.mLean.findViewById(2131231504));
    this.mLowSmokeImg.setVisibility(8);
    this.mHighSmokeImg = ((ImageView)this.mLean.findViewById(2131231503));
    this.mHighSmokeImg.setVisibility(8);
    this.animationDrawableS = ((AnimationDrawable)this.mSlashImg.getBackground());
  }

  private void setUp()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setFillAfter(true);
    localAlphaAnimation.setDuration(3000L);
    localAlphaAnimation.setAnimationListener(new SuspendWhirlPoolView.3(this));
    this.mLean.startAnimation(localAlphaAnimation);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(1.0F, 1.0F, 0.0F, 1.0F, 1, 0.0F, 1, 1.0F);
    localScaleAnimation.setDuration(500L);
    localScaleAnimation.setAnimationListener(new SuspendWhirlPoolView.4(this));
    this.mHighSmokeImg.startAnimation(localScaleAnimation);
  }

  private void startDelay()
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(1.0F, 1.0F);
    localAlphaAnimation.setFillAfter(true);
    localAlphaAnimation.setDuration(100L);
    localAlphaAnimation.setAnimationListener(new SuspendWhirlPoolView.2(this));
    this.mLean.startAnimation(localAlphaAnimation);
  }

  private void startScaleShortAnimation()
  {
    ScaleAnimation localScaleAnimation = new ScaleAnimation(1.0F, 1.0F, 1.0F, 0.8F, 1, 0.0F, 1, 1.0F);
    localScaleAnimation.setDuration(2500L);
    localScaleAnimation.setAnimationListener(new SuspendWhirlPoolView.5(this));
    this.mHighSmokeImg.startAnimation(localScaleAnimation);
  }

  public WindowManager.LayoutParams getParamXY()
  {
    Rect localRect = new Rect();
    getWindowVisibleDisplayFrame(localRect);
    kg.d.x = ((int)(0.5D * localRect.right - 0.5D * this.mSlashImg.getWidth()));
    return kg.d;
  }

  public WindowManager.LayoutParams getParams()
  {
    Rect localRect = new Rect();
    getWindowVisibleDisplayFrame(localRect);
    WindowManager.LayoutParams localLayoutParams = new WindowManager.LayoutParams();
    kg.d = localLayoutParams;
    localLayoutParams.copyFrom(kg.a);
    kg.d.gravity = 1;
    kg.d.y = ((int)(0.8D * localRect.bottom));
    kg.d.type = 2002;
    return kg.d;
  }

  public void poolAnimate(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mSlashImg2.setBackgroundResource(2130837611);
    this.mSlashImg.setBackgroundResource(2130838359);
    this.animationDrawableS = ((AnimationDrawable)this.mSlashImg.getBackground());
    if (paramBoolean1)
    {
      this.mHighSmokeImg.setVisibility(8);
      this.mLowSmokeImg.setVisibility(8);
      if (paramBoolean2)
      {
        this.mHandler.sendEmptyMessage(2);
        this.mSlashImg2.setVisibility(0);
      }
    }
    while (true)
    {
      return;
      this.mSlashImg2.setVisibility(4);
      this.mSlashImg.setVisibility(0);
      this.mHandler.sendEmptyMessage(1);
      continue;
      this.mSlashImg.setVisibility(4);
      this.mSlashImg2.setVisibility(4);
      startDelay();
    }
  }

  public void stopAnimation()
  {
    if (this.animationDrawableS.isRunning())
    {
      this.animationDrawableS.stop();
      this.animationDrawableS.setAlpha(0);
    }
    if (this.mListener != null)
      this.mListener.onAnimationDone();
  }

  public static abstract interface onSuspendWhirlPoolAnimListener
  {
    public abstract void onAnimationDone();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.SuspendWhirlPoolView
 * JD-Core Version:    0.6.2
 */