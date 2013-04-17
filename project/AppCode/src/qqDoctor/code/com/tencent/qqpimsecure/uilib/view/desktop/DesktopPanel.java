package com.tencent.qqpimsecure.uilib.view.desktop;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.GestureDetector.OnGestureListener;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.animation.Interpolator;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import dp;

public class DesktopPanel extends LinearLayout
{
  public static final int BOTTOM = 1;
  public static final int LEFT = 2;
  public static final int RIGHT = 3;
  public static final int TOP;
  private final int ANIMATION_ONCE_TIME = 30;
  private final int ANIMATION_TIME = 300;
  protected boolean mAnimating = false;
  protected int mAnimatingY;
  private AnimationRunner mAnimationRunner;
  private boolean mClickOrScroll;
  private Drawable mClosedHandle;
  private View mContent;
  protected int mContentHeight;
  protected int mContentWidth;
  private boolean mFireScrolled;
  private GestureDetector mGestureDetector;
  private PanelOnGestureListener mGestureListener;
  protected View mHandle;
  private ImageButton mHandleButton;
  private Handler mHandler = new Handler();
  private boolean mInitLayout;
  private Interpolator mInterpolator;
  private OnPanelListener mOnPanelListener;
  protected boolean mOpen;
  protected int mOrientation;
  protected int mPosition;
  protected int mScrollY;
  protected boolean mScrolling = false;
  private DesktopView mTopDesktopView;
  protected View.OnTouchListener mTouchListener = new DesktopPanel.1(this);

  public DesktopPanel(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, dp.Panel);
    this.mPosition = localTypedArray.getInteger(i, i);
    this.mClosedHandle = localTypedArray.getDrawable(4);
    localTypedArray.recycle();
    if ((this.mPosition == 0) || (this.mPosition == i));
    while (true)
    {
      this.mOrientation = i;
      setOrientation(this.mOrientation);
      this.mGestureListener = new PanelOnGestureListener();
      this.mGestureDetector = new GestureDetector(this.mGestureListener);
      this.mGestureDetector.setIsLongpressEnabled(false);
      this.mAnimationRunner = new AnimationRunner(null);
      return;
      i = 0;
    }
  }

  private void changedHandleAndCallBack()
  {
    callBackAfter();
  }

  private void initLayout()
  {
    if ((!this.mInitLayout) || (this.mContentHeight != this.mContent.getHeight() - getPaddingBottomHeight()))
    {
      this.mContentWidth = this.mContent.getWidth();
      this.mContentHeight = (this.mContent.getHeight() - getPaddingBottomHeight());
      if (this.mClosedHandle != null)
        this.mHandleButton.setBackgroundDrawable(this.mClosedHandle);
      this.mOpen = false;
      this.mScrollY = (-this.mContentHeight);
      this.mAnimatingY = (-this.mContentHeight);
      scrollTo(0, this.mScrollY);
      this.mInitLayout = true;
    }
  }

  protected void callBackAfter()
  {
    if (this.mOnPanelListener != null)
    {
      if (!this.mOpen)
        break label29;
      onPanelOpened();
      this.mOnPanelListener.onPanelOpened(this);
    }
    while (true)
    {
      return;
      label29: onPanelClosed();
      this.mOnPanelListener.onPanelClosed(this);
    }
  }

  protected void callBackBefore()
  {
    if (this.mOnPanelListener != null)
    {
      if (this.mOpen)
        break label29;
      onBeforePanelOpened();
      this.mOnPanelListener.onBeforePanelOpened(this);
    }
    while (true)
    {
      return;
      label29: onBeforePanelClosed();
      this.mOnPanelListener.onBeforePanelClosed(this);
    }
  }

  public View getContent()
  {
    return this.mContent;
  }

  public View getHandle()
  {
    return this.mHandle;
  }

  protected int getPaddingBottomHeight()
  {
    return 0;
  }

  public boolean isOpen()
  {
    return this.mOpen;
  }

  protected void onBeforePanelClosed()
  {
  }

  protected void onBeforePanelOpened()
  {
  }

  protected void onEndAnimation(boolean paramBoolean)
  {
    if (paramBoolean)
      if (this.mOpen)
        break label33;
    label33: for (boolean bool = true; ; bool = false)
    {
      this.mOpen = bool;
      callBackAfter();
      this.mAnimating = false;
      this.mFireScrolled = false;
      return;
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.mHandle = findViewById(2131231098);
    this.mHandle.setOnTouchListener(this.mTouchListener);
    this.mContent = findViewById(2131231104);
    removeView(this.mHandle);
    removeView(this.mContent);
    if ((this.mPosition == 0) || (this.mPosition == 2))
    {
      addView(this.mContent);
      addView(this.mHandle);
    }
    while (true)
    {
      this.mHandleButton = ((ImageButton)findViewById(2131231099));
      this.mTopDesktopView = ((DesktopView)findViewById(2131231106));
      return;
      addView(this.mHandle);
      addView(this.mContent);
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    try
    {
      super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
      label11: initLayout();
      return;
    }
    catch (Exception localException)
    {
      break label11;
    }
  }

  protected void onPanelClosed()
  {
    this.mScrollY = (-this.mContentHeight);
    this.mAnimatingY = (-this.mContentHeight);
  }

  protected void onPanelOpened()
  {
    this.mScrollY = 0;
    this.mAnimatingY = 0;
  }

  protected void onScrollEndAnimation()
  {
    boolean bool1 = true;
    if (this.mScrolling)
    {
      if (((this.mAnimatingY != -this.mContentHeight) || (this.mScrollY != 0)) && ((this.mAnimatingY != 0) || (this.mScrollY != -this.mContentHeight)))
        break label105;
      new StringBuilder("mAnimatingY == -mContentHeight && mScrollY == 0: ").append(this.mScrolling).toString();
      onEndAnimation(bool1);
    }
    while (true)
    {
      this.mScrolling = false;
      new StringBuilder("onScrollEndAnimation: ").append(this.mScrolling).toString();
      this.mFireScrolled = false;
      return;
      label105: if (((this.mAnimatingY != 0) || (this.mScrollY != 0)) && ((this.mAnimatingY != -this.mContentHeight) || (this.mScrollY != -this.mContentHeight)))
        break;
      new StringBuilder("mAnimatingY == 0 && mScrollY == 0: ").append(this.mScrolling).toString();
      onEndAnimation(false);
    }
    int i = (int)(0.5D * -this.mContentHeight);
    if (this.mScrollY >= i);
    boolean bool3;
    int k;
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      if (!bool2)
        break label253;
      int m = 0 - this.mScrollY;
      if (isOpen())
        bool1 = false;
      bool3 = bool1;
      k = m;
      this.mAnimatingY = this.mScrollY;
      this.mAnimationRunner.setInterPlolator(this.mInterpolator, k, bool3);
      break;
    }
    label253: int j = -this.mContentHeight - this.mScrollY;
    if (isOpen());
    while (true)
    {
      bool3 = bool1;
      k = j;
      break;
      bool1 = false;
    }
  }

  protected void onStartAnimation()
  {
    if (this.mAnimating);
    while (true)
    {
      return;
      this.mAnimating = true;
      if (!isOpen())
        this.mAnimationRunner.setInterPlolator(this.mInterpolator, this.mContentHeight, true);
      else
        this.mAnimationRunner.setInterPlolator(this.mInterpolator, -this.mContentHeight, true);
    }
  }

  public void resetLayout()
  {
    this.mInitLayout = false;
    initLayout();
  }

  public void setInterpolator(Interpolator paramInterpolator)
  {
    this.mInterpolator = paramInterpolator;
  }

  public void setOnPanelListener(OnPanelListener paramOnPanelListener)
  {
    this.mOnPanelListener = paramOnPanelListener;
  }

  public void setOpen(boolean paramBoolean1, boolean paramBoolean2)
  {
    if ((paramBoolean1 ^ isOpen()))
    {
      if (!paramBoolean2)
        break label22;
      onStartAnimation();
      callBackBefore();
    }
    while (true)
    {
      return;
      label22: callBackAfter();
    }
  }

  class AnimationRunner
    implements Runnable
  {
    private int mDis;
    private Interpolator mInterpolator;
    private boolean mNeedChangedState;
    private long mStartTime;

    private AnimationRunner()
    {
    }

    public void run()
    {
      float f = 1.0F * (float)(System.currentTimeMillis() - this.mStartTime) / 300.0F;
      DesktopPanel.this.mHandler.removeCallbacks(this);
      if (f > 1.0F)
      {
        DesktopPanel localDesktopPanel = DesktopPanel.this;
        localDesktopPanel.mAnimatingY += this.mDis;
        DesktopPanel.this.scrollTo(0, DesktopPanel.this.mAnimatingY);
        DesktopPanel.this.mScrolling = false;
        new StringBuilder("run: ").append(DesktopPanel.this.mScrolling).toString();
        DesktopPanel.this.onEndAnimation(this.mNeedChangedState);
      }
      while (true)
      {
        return;
        DesktopPanel.this.mHandler.postDelayed(this, 30L);
        int i = DesktopPanel.this.mAnimatingY + (int)(this.mInterpolator.getInterpolation(f) * this.mDis);
        DesktopPanel.this.scrollTo(0, i);
      }
    }

    public void setInterPlolator(Interpolator paramInterpolator, int paramInt, boolean paramBoolean)
    {
      this.mDis = paramInt;
      this.mInterpolator = paramInterpolator;
      this.mStartTime = System.currentTimeMillis();
      this.mNeedChangedState = paramBoolean;
      DesktopPanel.this.mAnimating = true;
      DesktopPanel.this.mHandler.postDelayed(this, 30L);
    }
  }

  public static abstract interface OnPanelListener
  {
    public abstract void onBeforePanelClosed(DesktopPanel paramDesktopPanel);

    public abstract void onBeforePanelOpened(DesktopPanel paramDesktopPanel);

    public abstract void onPanelClosed(DesktopPanel paramDesktopPanel);

    public abstract void onPanelOpened(DesktopPanel paramDesktopPanel);
  }

  class PanelOnGestureListener
    implements GestureDetector.OnGestureListener
  {
    PanelOnGestureListener()
    {
    }

    public boolean onDown(MotionEvent paramMotionEvent)
    {
      if ((DesktopPanel.this.mAnimating) || (DesktopPanel.this.mClickOrScroll));
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        new StringBuilder("onDown: ").append(DesktopPanel.this.mClickOrScroll).append(" action: ").append(paramMotionEvent.getAction()).toString();
        DesktopPanel.this.callBackBefore();
      }
    }

    public boolean onFling(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      return false;
    }

    public void onLongPress(MotionEvent paramMotionEvent)
    {
    }

    public boolean onScroll(MotionEvent paramMotionEvent1, MotionEvent paramMotionEvent2, float paramFloat1, float paramFloat2)
    {
      boolean bool = true;
      DesktopPanel.access$302(DesktopPanel.this, bool);
      if ((DesktopPanel.this.mAnimating) || ((DesktopPanel.this.mScrollY == 0) && (paramFloat2 >= 0.0F)) || ((DesktopPanel.this.mScrollY == -DesktopPanel.this.mContentHeight) && (paramFloat2 <= 0.0F)))
      {
        bool = false;
        return bool;
      }
      if (DesktopPanel.this.mClickOrScroll)
      {
        DesktopPanel.access$202(DesktopPanel.this, false);
        DesktopPanel.this.mTopDesktopView.sendUpTouchEvent(false, 0, 0);
        onDown(paramMotionEvent1);
      }
      DesktopPanel localDesktopPanel = DesktopPanel.this;
      localDesktopPanel.mScrollY = ((int)(localDesktopPanel.mScrollY + (paramMotionEvent1.getY() - paramMotionEvent2.getY())));
      if (DesktopPanel.this.mScrollY > 0)
        DesktopPanel.this.mScrollY = 0;
      while (true)
      {
        DesktopPanel.this.mScrolling = bool;
        DesktopPanel.this.scrollTo(0, DesktopPanel.this.mScrollY);
        break;
        if (DesktopPanel.this.mScrollY < -DesktopPanel.this.mContentHeight)
          DesktopPanel.this.mScrollY = (-DesktopPanel.this.mContentHeight);
      }
    }

    public void onShowPress(MotionEvent paramMotionEvent)
    {
    }

    public boolean onSingleTapUp(MotionEvent paramMotionEvent)
    {
      if ((DesktopPanel.this.mAnimating) || (DesktopPanel.this.mClickOrScroll));
      for (boolean bool = false; ; bool = true)
      {
        return bool;
        DesktopPanel.this.onStartAnimation();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopPanel
 * JD-Core Version:    0.6.2
 */