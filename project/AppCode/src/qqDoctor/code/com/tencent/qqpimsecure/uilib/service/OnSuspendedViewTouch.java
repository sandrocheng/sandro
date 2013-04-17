package com.tencent.qqpimsecure.uilib.service;

import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.widget.LinearLayout;
import ft;

public abstract class OnSuspendedViewTouch extends LinearLayout
  implements View.OnTouchListener
{
  protected static final int SIDE_LEFT = 1;
  protected static final int SIDE_RIGHT = 2;
  private final int MSG_ANIMATION_FINISH = 2;
  private final int MSG_ANIMATION_INTER = 3;
  private final int MSG_ANIMATION_NEXT_FRAME = 1;
  protected boolean isDragging = false;
  protected boolean isLongclicked = false;
  protected boolean isRocketUp = false;
  protected Animation mAnim = null;
  private int mAnimDistance;
  private Handler mAnimHandler = new OnSuspendedViewTouch.1(this);
  private boolean mAnimStop;
  protected boolean mDoingAnim;
  protected int mLeft;
  protected int mLenghtOutOfScreen;
  protected boolean mMoving = false;
  private int mScreenWidth;
  private float mScreenX;
  private float mScreenY;
  protected int mSelfWidth;
  protected int mSideMoveTo;
  protected int mTop;
  private int mTouchSlop;
  private float mTouchX;
  private float mTouchY;
  protected int mViewSideWithScreen;
  protected WindowManager mWindowManager;

  public OnSuspendedViewTouch(Context paramContext)
  {
    super(paramContext);
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
    this.mScreenWidth = ft.d(paramContext);
    this.mSelfWidth = getWidth();
    this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    setClickable(true);
    setEnabled(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    if (isWholeViewOnTouchable())
      setOnTouchListener(this);
  }

  private void doAnimation()
  {
    int i = 0;
    if (this.mAnimStop)
      return;
    this.mLeft += this.mAnimDistance;
    if (this.mLeft + getSuggestedMinimumWidth() >= this.mWindowManager.getDefaultDisplay().getWidth())
      this.mLeft = (this.mWindowManager.getDefaultDisplay().getWidth() - getSuggestedMinimumWidth());
    while (true)
      try
      {
        this.mWindowManager.updateViewLayout(this, getWindowLayoutParams(this.mLeft, this.mTop));
        if (i != 0)
        {
          this.mAnimHandler.sendEmptyMessage(1);
          break;
          if (this.mLeft > 0 - this.mLenghtOutOfScreen)
            continue;
          this.mLeft = (0 - this.mLenghtOutOfScreen);
          i = 0;
          continue;
        }
        this.mAnimHandler.sendEmptyMessage(2);
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        continue;
        i = 1;
      }
  }

  private void setAnimDistance()
  {
    if (this.mSideMoveTo == 1);
    for (this.mAnimDistance = -20; ; this.mAnimDistance = 20)
      return;
  }

  private void updateLocation(View paramView)
  {
    this.mLeft = ((int)(this.mScreenX - this.mTouchX));
    if (isAllowVerticalMove())
      this.mTop = ((int)(this.mScreenY - this.mTouchY));
    int i = this.mTop - getAnimationYOffset();
    try
    {
      this.mWindowManager.updateViewLayout(this, getWindowLayoutParams(this.mLeft, i));
      label64: return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label64;
    }
  }

  public void ActionDown()
  {
  }

  public void ActionMove()
  {
  }

  public boolean ActionUp()
  {
    return false;
  }

  public abstract void changeViewSide(int paramInt);

  public void dealWithInterrupt()
  {
    this.mAnimHandler.sendEmptyMessage(3);
  }

  protected int getAnimationYOffset()
  {
    return 0;
  }

  public abstract WindowManager.LayoutParams getWindowLayoutParams(int paramInt1, int paramInt2);

  public boolean isAllowVerticalMove()
  {
    return true;
  }

  public boolean isDragging()
  {
    return this.isDragging;
  }

  public boolean isWholeViewOnTouchable()
  {
    return true;
  }

  protected void moveToScreen(int paramInt)
  {
    this.mSideMoveTo = paramInt;
    if (this.mSideMoveTo == 1);
    for (this.mAnimDistance = -20; ; this.mAnimDistance = 20)
    {
      this.mViewSideWithScreen = this.mSideMoveTo;
      this.mDoingAnim = true;
      this.mAnimStop = false;
      this.mAnimHandler.sendEmptyMessage(1);
      return;
    }
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = 1;
    if ((this.mDoingAnim) || (this.isRocketUp))
      return i;
    this.mScreenWidth = this.mWindowManager.getDefaultDisplay().getWidth();
    int j = paramMotionEvent.getAction();
    this.mScreenX = paramMotionEvent.getRawX();
    this.mScreenY = paramMotionEvent.getRawY();
    Rect localRect = new Rect();
    getWindowVisibleDisplayFrame(localRect);
    int k = localRect.top;
    this.mScreenY -= k;
    switch (j)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      i = this.mMoving;
      break;
      this.isDragging = i;
      ActionDown();
      this.isLongclicked = false;
      this.mTouchX = paramMotionEvent.getX();
      this.mTouchY = paramMotionEvent.getY();
      updateLocation(paramView);
      this.mMoving = false;
      this.isRocketUp = false;
      continue;
      int m = (int)Math.abs(paramMotionEvent.getX() - this.mTouchX);
      int n = (int)Math.abs(paramMotionEvent.getY() - this.mTouchY);
      if ((m > this.mTouchSlop) || (n > this.mTouchSlop) || (this.mMoving))
      {
        this.mMoving = i;
        updateLocation(paramView);
        ActionMove();
        if (this.mViewSideWithScreen == i)
        {
          if ((this.mLeft >= this.mScreenWidth / 3) && (this.mSideMoveTo == i))
          {
            this.mSideMoveTo = 2;
            changeViewSide(this.mSideMoveTo);
          }
          else if ((this.mLeft < this.mScreenWidth / 3) && (this.mSideMoveTo == 2))
          {
            this.mSideMoveTo = i;
            changeViewSide(this.mSideMoveTo);
          }
        }
        else if ((this.mLeft <= (this.mScreenWidth << 1) / 3) && (this.mSideMoveTo == 2))
        {
          this.mSideMoveTo = i;
          changeViewSide(this.mSideMoveTo);
        }
        else if ((this.mLeft >= (this.mScreenWidth << 1) / 3) && (this.mSideMoveTo == i))
        {
          this.mSideMoveTo = 2;
          changeViewSide(this.mSideMoveTo);
          continue;
          this.isDragging = false;
          this.isRocketUp = ActionUp();
          if (this.isRocketUp)
          {
            this.mMoving = false;
            break;
          }
          setAnimDistance();
          this.mViewSideWithScreen = this.mSideMoveTo;
          this.mDoingAnim = i;
          this.mAnimStop = false;
          this.mAnimHandler.sendEmptyMessage(i);
        }
      }
    }
  }

  public abstract void saveLocation(int paramInt1, int paramInt2);

  public void setRocketDone()
  {
    this.isRocketUp = false;
  }

  public void setSelfWidth(int paramInt)
  {
    this.mSelfWidth = paramInt;
  }

  public void stopAnimation()
  {
    this.mScreenWidth = this.mWindowManager.getDefaultDisplay().getWidth();
    this.mDoingAnim = false;
    this.mAnimStop = true;
    if (this.mLeft < this.mScreenWidth / 2);
    for (this.mLeft = 0; ; this.mLeft = (this.mScreenWidth - getWidth()))
      return;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.OnSuspendedViewTouch
 * JD-Core Version:    0.6.2
 */