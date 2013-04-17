package com.tencent.qqpimsecure.uilib.view.desktop;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.TranslateAnimation;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.ui.adapter.DesktopAdapter;

public class DesktopView extends GridView
{
  private int mAnimCount;
  private boolean mAnimPlaying = false;
  private Context mContext;
  private int mCurSelectedIndex = 99;
  private Handler mHandler = new Handler();
  private long mLastRuntime = 0L;
  private int mLastSelectedIndex = 99;
  private DesktopMovingView mLastSelectedView;
  private PositionListener mPositionListener;
  Animation.AnimationListener mPushAnimListener = new DesktopView.2(this);
  private long mTempIndex = 99L;
  private long mTimeCount = 0L;
  private boolean mTouchMode = false;

  public DesktopView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
  }

  public DesktopView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
  }

  public DesktopView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.mContext = paramContext;
  }

  private void move(int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramInt3 == this.mLastSelectedIndex);
    while (true)
    {
      return;
      if (!this.mAnimPlaying)
        if (this.mTempIndex != paramInt3)
        {
          this.mTempIndex = paramInt3;
          this.mLastRuntime = System.currentTimeMillis();
        }
        else
        {
          this.mTimeCount += System.currentTimeMillis() - this.mLastRuntime;
          if (this.mTimeCount < 500L)
          {
            this.mLastRuntime = System.currentTimeMillis();
          }
          else
          {
            this.mCurSelectedIndex = paramInt3;
            int i = this.mLastSelectedIndex - getFirstVisiblePosition();
            int j = paramInt3 - getFirstVisiblePosition();
            this.mAnimCount = Math.abs(paramInt3 - this.mLastSelectedIndex);
            if (i > j)
              for (int m = j; m < i; m++)
                startPushAnimation(getChildAt(m), getChildAt(m + 1));
            for (int k = i + 1; k <= j; k++)
              startPushAnimation(getChildAt(k), getChildAt(k - 1));
            this.mAnimPlaying = true;
            invalidate();
          }
        }
    }
  }

  private void startPushAnimation(View paramView1, View paramView2)
  {
    int i = paramView2.getLeft() - paramView1.getLeft();
    int j = paramView2.getTop() - paramView1.getTop();
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, i, 0.0F, j);
    localTranslateAnimation.setDuration(200L);
    localTranslateAnimation.setFillAfter(true);
    localTranslateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
    localTranslateAnimation.setAnimationListener(this.mPushAnimListener);
    paramView1.startAnimation(localTranslateAnimation);
  }

  public void clearAnimation()
  {
    int i = getChildCount();
    for (int j = 0; j < i; j++)
      getChildAt(j).clearAnimation();
  }

  public void clearFocusPosition()
  {
    ((DesktopAdapter)getAdapter()).setFocusPosition(-1);
  }

  public View createSelectedView(Drawable paramDrawable, String paramString, View paramView, int paramInt)
  {
    this.mLastSelectedView = ((DesktopMovingView)LayoutInflater.from(this.mContext).inflate(2130903102, null));
    ImageView localImageView = (ImageView)this.mLastSelectedView.findViewById(2131230855);
    Bitmap localBitmap = ((BitmapDrawable)paramDrawable).getBitmap();
    localImageView.setImageBitmap(Bitmap.createScaledBitmap(localBitmap, (int)(1.5D * localBitmap.getWidth()), (int)(1.5D * localBitmap.getHeight()), true));
    TextView localTextView = (TextView)this.mLastSelectedView.findViewById(2131230748);
    localTextView.setText(paramString);
    localTextView.setTextSize(12.0F);
    this.mLastSelectedView.setMinimumWidth(paramView.getWidth());
    this.mLastSelectedView.setMinimumHeight(paramView.getHeight());
    this.mLastSelectedView.setDesktopLayout((DesktopLayout)getParent());
    return this.mLastSelectedView;
  }

  public boolean dispatchTouchEvent(MotionEvent paramMotionEvent)
  {
    try
    {
      boolean bool2 = super.dispatchTouchEvent(paramMotionEvent);
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  public int getLastSelectedIndex()
  {
    return this.mLastSelectedIndex;
  }

  public DesktopMovingView getLastSelectedView()
  {
    return this.mLastSelectedView;
  }

  public PositionListener getPositionListener()
  {
    return this.mPositionListener;
  }

  public boolean isTouchMode()
  {
    return this.mTouchMode;
  }

  public boolean move(int paramInt1, int paramInt2)
  {
    boolean bool1 = this.mTouchMode;
    boolean bool2 = false;
    int i;
    if (bool1)
    {
      i = pointToPosition(paramInt1, paramInt2);
      bool2 = false;
      if (i != -1)
        break label32;
    }
    while (true)
    {
      return bool2;
      label32: move(paramInt1, paramInt2, i);
      bool2 = true;
    }
  }

  public void sendUpTouchEvent(boolean paramBoolean, int paramInt1, int paramInt2)
  {
    MotionEvent localMotionEvent = MotionEvent.obtain(SystemClock.uptimeMillis(), SystemClock.uptimeMillis(), 3, paramInt1, paramInt2, 0);
    this.mHandler.post(new DesktopView.1(this, localMotionEvent));
  }

  public void setLastSelectedView(DesktopMovingView paramDesktopMovingView)
  {
    this.mLastSelectedView = paramDesktopMovingView;
  }

  public void setPositionListener(PositionListener paramPositionListener)
  {
    this.mPositionListener = paramPositionListener;
  }

  public void setTouchOrder(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.mTouchMode = paramBoolean1;
    if (!this.mAnimPlaying)
    {
      this.mLastSelectedIndex = 99;
      this.mCurSelectedIndex = 99;
      DesktopAdapter localDesktopAdapter = (DesktopAdapter)getAdapter();
      localDesktopAdapter.setFocusPosition(-1);
      if (!paramBoolean2)
        localDesktopAdapter.notifyDataSetChanged();
    }
  }

  public void startDragMode(int paramInt)
  {
    this.mLastSelectedIndex = paramInt;
    this.mCurSelectedIndex = paramInt;
    this.mTouchMode = true;
  }

  public static abstract interface PositionListener
  {
    public abstract void positionChange(int paramInt1, int paramInt2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.desktop.DesktopView
 * JD-Core Version:    0.6.2
 */