package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Message;
import android.os.Vibrator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.service.ColorEggManager;
import com.tencent.qqpimsecure.uilib.service.OnSuspendedViewTouch;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import ho;
import ho.a;
import vh;

public class MinDeskAssistantWindow extends OnSuspendedViewTouch
{
  public static final int ANIMATION_MOVING = 0;
  public static final int BEGIN_COLOR_EGG = 1;
  public static final int BEGIN_UFO = 4;
  public static final int CHANGE_COLOR_EGG_BG = 8;
  public static final int COLOR_EGG_ANIM_FINISH = 17;
  public static final int COLOR_EGG_NOTHING = 0;
  public static final int COLOR_EGG_SHOW_LEFT_SATELITE = 1;
  public static final int COLOR_EGG_SHOW_UFO = 2;
  public static final int FADE_UFO = 6;
  public static final int FINISH_COLOR_EGG = 2;
  public static final int FINISH_UFO = 5;
  public static final int RESET_ALL = 16;
  public static final int RESET_COLOR_EGG_BG = 9;
  public static final int SET_ALL_GONE = 15;
  public static final int SHOW_ACTIVITY_INTRO_DIALOG = 13;
  public static final int SHOW_LOTTERY_DIALOG = 14;
  public static final int SHOW_WEIBO_SHARE_DIALOG = 12;
  private static onConfirmGetPrizeListener mConfirmListener;
  public static long mFireRocketTime;
  public static boolean mIsFireRocketAnimation;
  public static boolean mIsFireRocketToast;
  private final int RESET_MOON_COLOR_EGG_BG = 11;
  private final int ROCKET_FINISH = 3;
  private final int SET_ALL_COLOR_EGG_GONE = 7;
  private final int SET_MOON_COLOR_EGG_BG = 10;
  private Rect deskRect;
  private boolean isConfirming;
  private boolean isFlying = false;
  private boolean isUping = false;
  private ColorEggManager mColorEggManager;
  private LinearLayout mColorEggView;
  private ho mConfigDao;
  private Context mContext;
  private boolean mHasAddToWindow;
  private boolean mIsReadyToShow;
  private WindowManager.LayoutParams mLayoutParams;
  private OnRocketMoveListener mListener;
  private View mMainLayout;
  private TextView mRamText;
  private boolean mReachRamWarning = false;
  private ImageView mRocketBG;
  private FrameLayout mRocketLayout;
  private boolean mRocketRunning = false;
  private Drawable mSataliteDrawable;
  private ImageView mUFO;
  private Drawable mUfoDrawable;
  private Vibrate mVibreate;
  private Handler mhandler = new MinDeskAssistantWindow.1(this);
  private AnimationDrawable rocketAnimation;
  private int rocketDelay = 0;
  private ImageView rocketImg;

  public MinDeskAssistantWindow(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mConfigDao = ho.a();
    this.isConfirming = false;
    LayoutInflater localLayoutInflater = LayoutInflater.from(this.mContext);
    this.mMainLayout = localLayoutInflater.inflate(2130903265, null);
    this.mRamText = ((TextView)this.mMainLayout.findViewById(2131231441));
    addView(this.mMainLayout);
    this.mRocketLayout = ((FrameLayout)localLayoutInflater.inflate(2130903235, null));
    addView(this.mRocketLayout);
    this.mRocketLayout.setVisibility(8);
    this.rocketImg = ((ImageView)this.mRocketLayout.findViewById(2131231283));
    this.rocketAnimation = ((AnimationDrawable)this.rocketImg.getBackground());
    this.mRocketBG = ((ImageView)this.mRocketLayout.findViewById(2131231283));
    this.mColorEggView = ((LinearLayout)localLayoutInflater.inflate(2130903125, null));
    addView(this.mColorEggView);
    this.mColorEggView.setVisibility(8);
    this.mSataliteDrawable = this.mColorEggView.getBackground();
    this.mUFO = new ImageView(this.mContext);
    this.mUFO.setBackgroundResource(2130837514);
    addView(this.mUFO);
    this.mUFO.setVisibility(8);
    this.mUfoDrawable = this.mUFO.getBackground();
    this.mColorEggManager = new ColorEggManager(this.mWindowManager, this.mhandler, this.mColorEggView);
  }

  private void intiParams()
  {
    if (this.mLayoutParams == null)
    {
      this.mLayoutParams = new WindowManager.LayoutParams();
      this.mLayoutParams.gravity = 51;
      this.mLayoutParams.format = 1;
      WindowManager.LayoutParams localLayoutParams = this.mLayoutParams;
      localLayoutParams.flags = (0x8 | localLayoutParams.flags);
      this.mLayoutParams.type = 2003;
      this.mLayoutParams.width = -2;
      this.mLayoutParams.height = -2;
      this.mLayoutParams.alpha = 1.0F;
    }
  }

  private boolean isReachRamWarningStage()
  {
    return this.mReachRamWarning;
  }

  private boolean isRocketStyle()
  {
    if (this.mConfigDao.dA() == ho.a.b);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void rocketVisible(boolean paramBoolean)
  {
    if (paramBoolean)
      if (!this.mRocketLayout.isShown())
      {
        this.mRocketBG.setBackgroundResource(2130837755);
        this.mMainLayout.setVisibility(8);
        this.mRocketLayout.setVisibility(0);
        this.mRocketLayout.startLayoutAnimation();
      }
    while (true)
    {
      return;
      if (this.mRocketLayout.isShown())
      {
        this.mMainLayout.setVisibility(0);
        this.mRocketLayout.setVisibility(8);
      }
    }
  }

  private void setRocketRunning(boolean paramBoolean)
  {
    try
    {
      this.mRocketRunning = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void updateRamWindowStat(int paramInt)
  {
    if (this.mMoving)
    {
      this.mRamText.setVisibility(4);
      this.mMainLayout.setBackgroundResource(2130837658);
      this.mMainLayout.setPadding(0, 0, 0, 0);
      return;
    }
    if (paramInt == 1)
    {
      this.mMainLayout.setBackgroundResource(2130837607);
      this.mMainLayout.setPadding(0, 0, PhoneInfoUtil.dip2px(this.mContext, 38.0F), 0);
    }
    while (true)
    {
      this.mRamText.setVisibility(0);
      break;
      this.mMainLayout.setBackgroundResource(2130837608);
      this.mMainLayout.setPadding(PhoneInfoUtil.dip2px(this.mContext, 38.0F), 0, 0, 0);
    }
  }

  private void updateRocketMovingStyle()
  {
    this.mRamText.setVisibility(4);
    this.mMainLayout.setBackgroundResource(2130837658);
    this.mMainLayout.setPadding(0, 0, 0, 0);
  }

  private void updateRocketStage(int paramInt)
  {
    if (this.mMoving)
    {
      this.mRamText.setVisibility(4);
      this.mMainLayout.setBackgroundResource(2130837658);
      this.mMainLayout.setPadding(0, 0, 0, 0);
    }
    while (true)
    {
      return;
      this.mRamText.setText("");
      this.mRamText.setVisibility(4);
      if (isReachRamWarningStage())
        switch (paramInt)
        {
        default:
          break;
        case 1:
          this.mMainLayout.setBackgroundResource(2130837657);
          this.mMainLayout.setPadding(0, 0, 0, 0);
          break;
        case 2:
          this.mMainLayout.setBackgroundResource(2130837661);
          this.mMainLayout.setPadding(0, 0, 0, 0);
          break;
        }
      else
        switch (paramInt)
        {
        default:
          break;
        case 1:
          this.mMainLayout.setBackgroundResource(2130837656);
          this.mMainLayout.setPadding(0, 0, 0, 0);
          break;
        case 2:
          this.mMainLayout.setBackgroundResource(2130837660);
          this.mMainLayout.setPadding(0, 0, 0, 0);
        }
    }
  }

  protected void ActionDown()
  {
    super.ActionDown();
    if (this.mListener != null)
      this.mListener.onStandUp();
  }

  protected void ActionMove()
  {
    super.ActionMove();
    if (this.mListener != null)
      this.mListener.onMove();
  }

  protected boolean ActionUp()
  {
    super.ActionUp();
    if (this.mListener != null);
    for (boolean bool = this.mListener.onPutDown(); ; bool = false)
      return bool;
  }

  public void changeViewSide(int paramInt)
  {
    if (this.mMoving)
    {
      this.mRamText.setVisibility(4);
      this.mMainLayout.setBackgroundResource(2130837658);
      this.mMainLayout.setPadding(0, 0, 0, 0);
    }
    while (true)
    {
      return;
      if (!isRocketStyle())
        updateRamWindowStat(paramInt);
      else
        updateRocketStage(paramInt);
    }
  }

  public void dealWithInter()
  {
    dealWithInterrupt();
    setColorEggGone();
  }

  protected int getAnimationYOffset()
  {
    if (this.mMoving);
    for (int i = 80; ; i = 0)
      return i;
  }

  public int getFactWidth()
  {
    return this.mMainLayout.getBackground().getIntrinsicWidth();
  }

  public Handler getMinDeskAssiHandler()
  {
    return this.mhandler;
  }

  public WindowManager.LayoutParams getMyParams(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mLayoutParams.x = -1;
      this.mLayoutParams.y = -1;
    }
    return this.mLayoutParams;
  }

  public int getRocketDelay()
  {
    return this.rocketDelay;
  }

  public Vibrate getVibrate()
  {
    if (this.mVibreate == null)
      this.mVibreate = new Vibrate(this.mContext);
    return this.mVibreate;
  }

  public WindowManager.LayoutParams getWindowLayoutParams(int paramInt1, int paramInt2)
  {
    intiParams();
    if (paramInt1 != -1)
    {
      this.mLayoutParams.x = paramInt1;
      this.mLayoutParams.y = paramInt2;
      if ((!this.mMoving) && (!this.mDoingAnim))
      {
        if (this.mLayoutParams.x > 0)
          break label147;
        this.mViewSideWithScreen = 1;
        this.mSideMoveTo = 1;
        label59: changeViewSide(this.mViewSideWithScreen);
      }
      if (!this.mMoving)
        break label160;
      this.mRamText.setVisibility(4);
      this.mMainLayout.setBackgroundResource(2130837658);
      this.mMainLayout.setPadding(0, 0, 0, 0);
    }
    while (true)
    {
      this.mLayoutParams.alpha = 1.0F;
      return this.mLayoutParams;
      this.mLayoutParams.x = this.mConfigDao.cy();
      this.mLayoutParams.y = this.mConfigDao.cB();
      break;
      label147: this.mViewSideWithScreen = 2;
      this.mSideMoveTo = 2;
      break label59;
      label160: isRocketRunning();
    }
  }

  public boolean hasAddToWindow()
  {
    try
    {
      boolean bool = this.mHasAddToWindow;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void initView()
  {
    intiParams();
    this.mMainLayout.setVisibility(0);
    this.mRocketLayout.setVisibility(8);
    setRamUsageText(vh.g());
  }

  public boolean isFlying()
  {
    try
    {
      boolean bool = this.isFlying;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isInWhirlPool(Rect paramRect)
  {
    if (this.deskRect == null)
      this.deskRect = new Rect();
    getDrawingRect(this.deskRect);
    Rect localRect1 = this.deskRect;
    localRect1.left += this.mLayoutParams.x;
    Rect localRect2 = this.deskRect;
    localRect2.right += this.mLayoutParams.x;
    Rect localRect3 = this.deskRect;
    localRect3.top += this.mLayoutParams.y;
    Rect localRect4 = this.deskRect;
    localRect4.bottom += this.mLayoutParams.y;
    boolean bool = paramRect.intersect(this.deskRect);
    rocketVisible(bool);
    return bool;
  }

  public boolean isReadyToShow()
  {
    return this.mIsReadyToShow;
  }

  public boolean isRocketRunning()
  {
    try
    {
      boolean bool = this.mRocketRunning;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public boolean isUping()
  {
    return this.isUping;
  }

  public void ondestroy()
  {
    if (this.rocketAnimation.isRunning())
      this.rocketAnimation.stop();
  }

  public void rocketAlive(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      if (this.mVibreate == null)
        this.mVibreate = new Vibrate(this.mContext);
      this.mVibreate.playVibrate(-1);
      this.rocketAnimation.start();
    }
    while (true)
    {
      return;
      if (this.mListener != null)
        this.mListener.onAnimationDone();
    }
  }

  public void saveLocation(int paramInt1, int paramInt2)
  {
    this.mConfigDao.B(paramInt1);
    this.mConfigDao.D(paramInt2);
    changeViewSide(this.mViewSideWithScreen);
    if (this.mListener != null)
      this.mListener.onAnimationDone();
  }

  public void setColorEggGone()
  {
    Message localMessage = this.mhandler.obtainMessage();
    localMessage.what = 7;
    localMessage.sendToTarget();
  }

  public void setFlying(boolean paramBoolean)
  {
    try
    {
      this.isFlying = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setHasAddToWindow(boolean paramBoolean)
  {
    try
    {
      this.mHasAddToWindow = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public void setIsReadyToShow(boolean paramBoolean)
  {
    this.mIsReadyToShow = paramBoolean;
  }

  public void setRamUsageText(int paramInt)
  {
    boolean bool = vh.a(paramInt);
    if (bool != this.mReachRamWarning)
    {
      this.mReachRamWarning = bool;
      changeViewSide(this.mViewSideWithScreen);
    }
    if (!this.mRamText.isEnabled());
    while (true)
    {
      return;
      this.mRamText.setText(paramInt + "%");
      if (bool)
        this.mRamText.setTextColor(this.mContext.getResources().getColor(2131296268));
      else
        this.mRamText.setTextColor(this.mContext.getResources().getColor(2131296257));
    }
  }

  public void setRocketDelay(int paramInt)
  {
    this.rocketDelay = paramInt;
  }

  public void setRocketMoveListener(OnRocketMoveListener paramOnRocketMoveListener)
  {
    this.mListener = paramOnRocketMoveListener;
  }

  public void setUp()
  {
    mFireRocketTime = System.currentTimeMillis();
    mIsFireRocketToast = true;
    mIsFireRocketAnimation = true;
    setRocketRunning(true);
    if (this.mVibreate == null)
      this.mVibreate = new Vibrate(this.mContext);
    this.mVibreate.playVibrate(-1);
    rocketAlive(true);
    Rect localRect = new Rect();
    getWindowVisibleDisplayFrame(localRect);
    int i = (int)(0.8D * localRect.bottom);
    int j = (int)(0.5D * localRect.right - 0.5D * getWidth());
    new Thread(new MinDeskAssistantWindow.2(this, i, -getHeight() << 1, j)).start();
  }

  public void startColorEggAnimation(int paramInt, long paramLong, boolean paramBoolean)
  {
    this.mColorEggManager.startColorEggAnimation(paramInt, paramLong, paramBoolean);
  }

  public class Vibrate
  {
    private Handler mStophandler = new MinDeskAssistantWindow.Vibrate.1(this);
    long[] pattern = { 0L, 30L, 0L, 10L };
    Vibrator vibrator;

    public Vibrate(Context arg2)
    {
    }

    public void Stop()
    {
      if (this.vibrator != null);
      synchronized (this.vibrator)
      {
        this.vibrator.cancel();
        this.vibrator = null;
        return;
      }
    }

    public void playVibrate(int paramInt)
    {
      Stop();
      this.vibrator = ((Vibrator)MinDeskAssistantWindow.this.mContext.getSystemService("vibrator"));
      synchronized (this.vibrator)
      {
        this.vibrator.vibrate(this.pattern, paramInt);
        this.mStophandler.sendEmptyMessageDelayed(0, 1000L);
        return;
      }
    }
  }

  public static abstract interface onConfirmGetPrizeListener
  {
    public abstract void onConfirmFinish();

    public abstract void onConfirmStart();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.MinDeskAssistantWindow
 * JD-Core Version:    0.6.2
 */