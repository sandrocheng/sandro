package com.tencent.qqpimsecure.uilib.view.slide;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewConfiguration;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.Scroller;
import java.util.ArrayList;

public class SlideLayout extends FrameLayout
{
  private static final int INVALID_SCREEN = -1;
  private static final int MARGIN_SCROLL_DIVISOR = 3;
  private static final int SNAP_VELOCITY = 15;
  private static final int TOUCH_STATE_REST = 0;
  private static final int TOUCH_STATE_SCROLLING = 1;
  public int defualtScreen = 0;
  public boolean isAllowSlideView = true;
  private boolean isMarginScroll = false;
  private boolean isNormalScroll = false;
  private boolean isNotifySlideStart = false;
  public boolean mAllowLongPress;
  final Rect mClipBounds = new Rect();
  private int mCurrentScreenIndex = 0;
  final Rect mDrawerBounds = new Rect();
  int mDrawerContentHeight;
  int mDrawerContentWidth;
  private boolean mFirstLayout = true;
  private float mLastMotionX;
  private float mLastMotionY;
  private int mMaximumVelocity;
  private int mNextScreen = -1;
  private Scroller mScroller;
  private int mTouchSlop;
  private int mTouchState = 0;
  private VelocityTracker mVelocityTracker;
  private ArrayList<SlideCallBackInterface> slideCallBackInterfaceList;

  public SlideLayout(Context paramContext)
  {
    super(paramContext);
    initData();
  }

  private void initData()
  {
    this.mScroller = new Scroller(getContext());
    this.mCurrentScreenIndex = this.defualtScreen;
    ViewConfiguration localViewConfiguration = ViewConfiguration.get(getContext());
    this.mTouchSlop = localViewConfiguration.getScaledTouchSlop();
    this.mMaximumVelocity = localViewConfiguration.getScaledMinimumFlingVelocity();
    this.slideCallBackInterfaceList = new ArrayList();
  }

  private void notifySlideNextCanvas(int paramInt)
  {
    for (int i = 0; i < this.slideCallBackInterfaceList.size(); i++)
      ((SlideCallBackInterface)this.slideCallBackInterfaceList.get(i)).onNextCanvas(paramInt);
  }

  private void notifySlideStart()
  {
    if (this.isNotifySlideStart);
    while (true)
    {
      return;
      for (int i = 0; i < this.slideCallBackInterfaceList.size(); i++)
        ((SlideCallBackInterface)this.slideCallBackInterfaceList.get(i)).onSlideStart();
      this.isNotifySlideStart = true;
    }
  }

  private void notifySlideStop()
  {
    for (int i = 0; i < this.slideCallBackInterfaceList.size(); i++)
      ((SlideCallBackInterface)this.slideCallBackInterfaceList.get(i)).onSlideStop();
    this.isNotifySlideStart = false;
  }

  private void snapToDestination()
  {
    int i = getWidth();
    snapToScreen((getScrollX() + i / 2) / i);
  }

  public void addFocusables(ArrayList<View> paramArrayList, int paramInt1, int paramInt2)
  {
    getChildAt(this.mCurrentScreenIndex).addFocusables(paramArrayList, paramInt1);
    if (paramInt1 == 17)
      if (this.mCurrentScreenIndex > 0)
        getChildAt(-1 + this.mCurrentScreenIndex).addFocusables(paramArrayList, paramInt1);
    while (true)
    {
      return;
      if ((paramInt1 == 66) && (this.mCurrentScreenIndex < -1 + getChildCount()))
        getChildAt(1 + this.mCurrentScreenIndex).addFocusables(paramArrayList, paramInt1);
    }
  }

  public void addSlideCallBackInterface(SlideCallBackInterface paramSlideCallBackInterface)
  {
    this.slideCallBackInterfaceList.add(paramSlideCallBackInterface);
  }

  public void addView(SlideViewGroup paramSlideViewGroup, FrameLayout.LayoutParams paramLayoutParams)
  {
    addView(paramSlideViewGroup, -1, paramLayoutParams);
  }

  public void computeScroll()
  {
    if (!this.isAllowSlideView);
    while (true)
    {
      return;
      if (this.mScroller.computeScrollOffset())
      {
        scrollTo(this.mScroller.getCurrX(), this.mScroller.getCurrY());
        postInvalidate();
      }
      else if (this.mNextScreen != -1)
      {
        this.mCurrentScreenIndex = Math.max(0, Math.min(this.mNextScreen, -1 + getChildCount()));
        this.mNextScreen = -1;
        notifySlideNextCanvas(this.mCurrentScreenIndex);
      }
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    int i = 0;
    if (getChildCount() <= 0);
    while (true)
    {
      return;
      if ((this.mTouchState != 1) && (this.mNextScreen == -1));
      for (int j = 1; ; j = 0)
      {
        if (j == 0)
          break label58;
        drawChild(paramCanvas, getChildAt(this.mCurrentScreenIndex), getDrawingTime());
        break;
      }
      label58: long l = getDrawingTime();
      if ((this.mNextScreen >= 0) && (this.mNextScreen < getChildCount()) && (Math.abs(this.mCurrentScreenIndex - this.mNextScreen) == 1))
      {
        drawChild(paramCanvas, getChildAt(this.mCurrentScreenIndex), l);
        drawChild(paramCanvas, getChildAt(this.mNextScreen), l);
      }
      else
      {
        int k = getChildCount();
        while (i < k)
        {
          drawChild(paramCanvas, getChildAt(i), l);
          i++;
        }
      }
    }
  }

  public boolean dispatchUnhandledMove(View paramView, int paramInt)
  {
    boolean bool = true;
    if (paramInt == 17)
    {
      if (getCurrentScreen() <= 0)
        break label59;
      snapToScreen(-1 + getCurrentScreen());
    }
    while (true)
    {
      return bool;
      if ((paramInt == 66) && (getCurrentScreen() < -1 + getChildCount()))
        snapToScreen(1 + getCurrentScreen());
      else
        label59: bool = super.dispatchUnhandledMove(paramView, paramInt);
    }
  }

  public int getCurrentScreen()
  {
    return this.mCurrentScreenIndex;
  }

  boolean isDefaultScreenShowing()
  {
    if (this.mCurrentScreenIndex == this.defualtScreen);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  void moveToDefaultScreen()
  {
    snapToScreen(this.defualtScreen);
    getChildAt(this.defualtScreen).requestFocus();
  }

  public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
  {
    boolean bool1 = this.isAllowSlideView;
    boolean bool2 = false;
    if (!bool1);
    int i;
    while (true)
    {
      return bool2;
      i = paramMotionEvent.getAction();
      if ((i != 2) || (this.mTouchState == 0))
        break;
      bool2 = true;
    }
    float f1 = paramMotionEvent.getX();
    float f2 = paramMotionEvent.getY();
    switch (i)
    {
    default:
    case 2:
    case 0:
    case 1:
    case 3:
    }
    while (true)
    {
      int j = this.mTouchState;
      bool2 = false;
      if (j == 0)
        break;
      bool2 = true;
      break;
      int m = (int)Math.abs(f1 - this.mLastMotionX);
      int n = (int)Math.abs(f2 - this.mLastMotionY);
      int i1 = this.mTouchSlop;
      int i2;
      if (m > i1)
      {
        i2 = 1;
        label140: if (n <= i1)
          break label202;
      }
      label202: for (int i3 = 1; (i2 != 0) || (i3 != 0); i3 = 0)
      {
        if (i2 != 0)
          this.mTouchState = 1;
        if (!this.mAllowLongPress)
          break;
        this.mAllowLongPress = false;
        getChildAt(this.mCurrentScreenIndex).cancelLongPress();
        break;
        i2 = 0;
        break label140;
      }
      this.mLastMotionX = f1;
      this.mLastMotionY = f2;
      this.mAllowLongPress = true;
      if (this.mScroller.isFinished());
      for (int k = 0; ; k = 1)
      {
        this.mTouchState = k;
        break;
      }
      this.mTouchState = 0;
      this.mAllowLongPress = false;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getChildCount();
    int j = 0;
    int k = 0;
    while (j < i)
    {
      View localView = getChildAt(j);
      if (localView.getVisibility() != 8)
      {
        int m = localView.getMeasuredWidth();
        localView.layout(k, 0, k + m, localView.getMeasuredHeight());
        k += m;
      }
      j++;
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getSize(paramInt2);
    int j = View.MeasureSpec.getSize(paramInt1);
    new StringBuilder().append(paramInt2).append(" onMeasure height ").append(i).append(" width ").append(j).toString();
    int k = getChildCount();
    for (int m = 0; m < k; m++)
      getChildAt(m).measure(paramInt1, paramInt2);
    if (this.mFirstLayout)
    {
      scrollTo(j * this.mCurrentScreenIndex, 0);
      this.mFirstLayout = false;
    }
  }

  protected boolean onRequestFocusInDescendants(int paramInt, Rect paramRect)
  {
    if (this.mNextScreen != -1);
    for (int i = this.mNextScreen; ; i = this.mCurrentScreenIndex)
    {
      getChildAt(i).requestFocus(paramInt, paramRect);
      return false;
    }
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.isAllowSlideView);
    int m;
    int n;
    while (true)
    {
      return true;
      if (this.mVelocityTracker == null)
        this.mVelocityTracker = VelocityTracker.obtain();
      this.mVelocityTracker.addMovement(paramMotionEvent);
      int i = paramMotionEvent.getAction();
      float f = paramMotionEvent.getX();
      switch (i)
      {
      default:
        break;
      case 0:
        if (!this.mScroller.isFinished())
          this.mScroller.abortAnimation();
        this.mLastMotionX = f;
        break;
      case 2:
        if (this.mTouchState == 1)
        {
          m = (int)(this.mLastMotionX - f);
          n = getChildCount();
          this.mLastMotionX = f;
          if ((this.isNormalScroll) || (((m >= 0) || (this.mCurrentScreenIndex != 0)) && ((m <= 0) || (this.mCurrentScreenIndex != n - 1))))
            break label184;
          this.isMarginScroll = true;
          scrollBy(m / 3, 0);
          notifySlideStart();
        }
        break;
      case 1:
      case 3:
      }
    }
    label184: int i1;
    if (m < 0)
    {
      if (getScrollX() <= 0)
        break label434;
      i1 = Math.max(-getScrollX(), m);
    }
    while (true)
    {
      label208: if (this.isMarginScroll)
        i1 /= 3;
      while (true)
      {
        scrollBy(i1, 0);
        break;
        if (m <= 0)
          break label434;
        int i2 = getChildAt(n - 1).getRight() - getScrollX() - getWidth();
        if (i2 <= 0)
          break label434;
        i1 = Math.min(i2, m);
        break label208;
        this.isNormalScroll = true;
      }
      int j;
      if (this.mTouchState == 1)
      {
        VelocityTracker localVelocityTracker = this.mVelocityTracker;
        localVelocityTracker.computeCurrentVelocity(this.mMaximumVelocity);
        j = (int)localVelocityTracker.getXVelocity();
        if ((j <= 15) || (this.mCurrentScreenIndex <= 0))
          break label376;
        snapToScreen(-1 + this.mCurrentScreenIndex);
      }
      while (true)
      {
        if (this.mVelocityTracker != null)
        {
          this.mVelocityTracker.recycle();
          this.mVelocityTracker = null;
        }
        this.isMarginScroll = false;
        this.isNormalScroll = false;
        this.mTouchState = 0;
        break;
        label376: if ((j < -15) && (this.mCurrentScreenIndex < -1 + getChildCount()))
        {
          snapToScreen(1 + this.mCurrentScreenIndex);
        }
        else
        {
          int k = getWidth();
          snapToScreen((getScrollX() + k / 2) / k);
        }
      }
      label434: i1 = 0;
    }
  }

  public boolean requestChildRectangleOnScreen(View paramView, Rect paramRect, boolean paramBoolean)
  {
    int i = indexOfChild(paramView);
    if ((i != this.mCurrentScreenIndex) || (!this.mScroller.isFinished()))
      snapToScreen(i);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void setCurrentScreen(int paramInt)
  {
    this.mCurrentScreenIndex = paramInt;
  }

  public void snapToScreen(int paramInt)
  {
    if (!this.mScroller.isFinished())
      return;
    int i = Math.max(0, Math.min(paramInt, -1 + getChildCount()));
    if (i != this.mCurrentScreenIndex);
    for (int j = 1; ; j = 0)
    {
      this.mNextScreen = i;
      View localView = getFocusedChild();
      if ((localView != null) && (j != 0) && (localView == getChildAt(this.mCurrentScreenIndex)))
        localView.clearFocus();
      int k = i * getWidth() - getScrollX();
      this.mScroller.startScroll(getScrollX(), 0, k, 0, Math.abs(k));
      invalidate();
      notifySlideStop();
      break;
    }
  }

  public void snapToScreen(int paramInt1, int paramInt2)
  {
    if (!this.mScroller.isFinished())
      return;
    int i = Math.max(0, Math.min(paramInt1, -1 + getChildCount()));
    if (i != this.mCurrentScreenIndex);
    for (int j = 1; ; j = 0)
    {
      this.mNextScreen = i;
      View localView = getFocusedChild();
      if ((localView != null) && (j != 0) && (localView == getChildAt(this.mCurrentScreenIndex)))
        localView.clearFocus();
      int k = i * getWidth() - getScrollX();
      this.mScroller.startScroll(getScrollX(), 0, k, 0, paramInt2);
      invalidate();
      notifySlideStop();
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.slide.SlideLayout
 * JD-Core Version:    0.6.2
 */