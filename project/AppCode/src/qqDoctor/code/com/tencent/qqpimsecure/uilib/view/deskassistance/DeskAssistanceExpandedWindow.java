package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.qqpimsecure.ui.activity.SplashActivity;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import ha;
import ho;
import nd;
import vh;
import vh.a;
import zo;
import zo.a;

public class DeskAssistanceExpandedWindow extends LinearLayout
  implements View.OnClickListener, View.OnKeyListener, View.OnTouchListener
{
  private static DeskAssistanceExpandedWindow mInstance;
  private settingCallback callback = new DeskAssistanceExpandedWindow.4(this);
  private ICloseCallback mCloseCallback;
  private Context mContext;
  private View mCurrentView;
  private DeskAssistanceWindow mDeskAssistanceWindow;
  private ExpandedOptimizeWindow mExpandedOptimizeWindow;
  private ExpandedSettingWindow mExpandedSettingWindow;
  private ExpandedTaskManagerWindow mExpandedTaskManagerWindow;
  private LinearLayout mFrameWindowBackGround;
  private boolean mHasAddToWindow = false;
  private WindowManager.LayoutParams mLayoutParams;
  private MFrameWindowObserver mMFrameWindowObserver = new DeskAssistanceExpandedWindow.3(this);
  private LinearLayout mMainView;
  private vh.a mMemchangeCallback = new DeskAssistanceExpandedWindow.2(this);
  private vh mMemoryLoaderService;
  private ImageButton mNormalLogoButton;
  private LinearLayout mNormalLogoLayout;
  private ImageButton mNormalSettingButton;
  private LinearLayout mNormalSettingLayout;
  private zo.a mRunningProcessListCallback = new DeskAssistanceExpandedWindow.1(this);
  private zo mRunningProcessServer;
  private int mScreenWidth = 0;
  private LinearLayout mSpace1;
  private LinearLayout mSpace2;
  private LinearLayout mSpace3;
  private LinearLayout mSpace4;
  private LinearLayout mSpace5;
  private TextView mTaskManagerTitle;

  private DeskAssistanceExpandedWindow(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  private DeskAssistanceExpandedWindow(Context paramContext, DeskAssistanceWindow paramDeskAssistanceWindow)
  {
    super(paramContext);
    this.mRunningProcessServer = zo.a();
    this.mMemoryLoaderService = vh.a();
    this.mScreenWidth = PhoneInfoUtil.getScreenWidth(paramContext);
    this.mContext = paramContext;
    this.mDeskAssistanceWindow = paramDeskAssistanceWindow;
    addView(LayoutInflater.from(this.mContext).inflate(2130903130, null));
    this.mFrameWindowBackGround = ((LinearLayout)findViewById(2131230934));
    this.mNormalLogoButton = ((ImageButton)findViewById(2131230941));
    this.mNormalSettingButton = ((ImageButton)findViewById(2131230946));
    this.mNormalLogoLayout = ((LinearLayout)findViewById(2131230939));
    this.mNormalSettingLayout = ((LinearLayout)findViewById(2131230944));
    this.mSpace1 = ((LinearLayout)findViewById(2131230935));
    this.mSpace2 = ((LinearLayout)findViewById(2131230938));
    this.mSpace3 = ((LinearLayout)findViewById(2131230940));
    this.mSpace4 = ((LinearLayout)findViewById(2131230943));
    this.mSpace5 = ((LinearLayout)findViewById(2131230945));
    this.mSpace1.setOnClickListener(this);
    this.mSpace2.setOnClickListener(this);
    this.mSpace3.setOnClickListener(this);
    this.mSpace4.setOnClickListener(this);
    this.mSpace5.setOnClickListener(this);
    setNormalMode();
    this.mMainView = ((LinearLayout)findViewById(2131230937));
    int i = PhoneInfoUtil.getScreenHeight(paramContext);
    if (i > this.mScreenWidth);
    for (int j = this.mScreenWidth; ; j = i)
    {
      LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.mFrameWindowBackGround.getLayoutParams();
      localLayoutParams.width = j;
      this.mFrameWindowBackGround.setLayoutParams(localLayoutParams);
      this.mNormalLogoButton.setOnClickListener(this);
      this.mTaskManagerTitle = ((TextView)findViewById(2131230936));
      this.mNormalSettingButton.setOnClickListener(this);
      setFocusable(true);
      setFocusableInTouchMode(true);
      setOnKeyListener(this);
      setOnTouchListener(this);
      initSlideViewList();
      this.mMFrameWindowObserver.changeToNormalFrameTitle();
      return;
    }
  }

  private void addToWindow(View paramView)
  {
    try
    {
      this.mMainView.removeView(this.mCurrentView);
      this.mMainView.addView(paramView);
      this.mCurrentView = paramView;
      label24: return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label24;
    }
  }

  public static DeskAssistanceExpandedWindow getInstance()
  {
    return mInstance;
  }

  public static DeskAssistanceExpandedWindow getInstance(Context paramContext, DeskAssistanceWindow paramDeskAssistanceWindow)
  {
    if (mInstance == null)
      mInstance = new DeskAssistanceExpandedWindow(paramContext, paramDeskAssistanceWindow);
    return mInstance;
  }

  private void initSlideViewList()
  {
    this.mExpandedOptimizeWindow = new ExpandedOptimizeWindow(this.mContext, this.mMFrameWindowObserver);
    this.mExpandedSettingWindow = new ExpandedSettingWindow(this.mContext, this.callback);
    this.mExpandedTaskManagerWindow = new ExpandedTaskManagerWindow(this.mContext, this.mMFrameWindowObserver);
  }

  private boolean isExpanedOptimizeWindowShowing()
  {
    if ((isShown()) && (isOptimizeWindowShowing()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private boolean isOptimizeWindowShowing()
  {
    return true;
  }

  private void setNormalMode()
  {
    this.mNormalLogoLayout.setVisibility(0);
    this.mNormalSettingLayout.setVisibility(0);
  }

  private void switchView(WindowType paramWindowType)
  {
    switch (5.$SwitchMap$com$tencent$qqpimsecure$uilib$view$deskassistance$DeskAssistanceExpandedWindow$WindowType[paramWindowType.ordinal()])
    {
    default:
    case 1:
    case 2:
    case 3:
    }
    while (true)
    {
      return;
      ExpandedOptimizeWindow localExpandedOptimizeWindow = this.mExpandedOptimizeWindow;
      try
      {
        this.mMainView.removeView(this.mCurrentView);
        this.mMainView.addView(localExpandedOptimizeWindow);
        this.mCurrentView = localExpandedOptimizeWindow;
        label69: this.mExpandedOptimizeWindow.notifyWindowShowing(true);
        this.mExpandedOptimizeWindow.updateRunningAppText();
        this.mNormalSettingButton.setImageResource(2130837662);
        continue;
        ExpandedSettingWindow localExpandedSettingWindow = this.mExpandedSettingWindow;
        try
        {
          this.mMainView.removeView(this.mCurrentView);
          this.mMainView.addView(localExpandedSettingWindow);
          this.mCurrentView = localExpandedSettingWindow;
          label129: this.mExpandedOptimizeWindow.notifyWindowShowing(false);
          this.mNormalSettingButton.setImageResource(2130837605);
          continue;
          ExpandedTaskManagerWindow localExpandedTaskManagerWindow = this.mExpandedTaskManagerWindow;
          try
          {
            this.mMainView.removeView(this.mCurrentView);
            this.mMainView.addView(localExpandedTaskManagerWindow);
            this.mCurrentView = localExpandedTaskManagerWindow;
            label179: this.mExpandedOptimizeWindow.notifyWindowShowing(false);
            this.mNormalSettingButton.setImageResource(2130837605);
          }
          catch (IllegalStateException localIllegalStateException1)
          {
            break label179;
          }
        }
        catch (IllegalStateException localIllegalStateException2)
        {
          break label129;
        }
      }
      catch (IllegalStateException localIllegalStateException3)
      {
        break label69;
      }
    }
  }

  public void checkAndShowDeskAssisSettingCloseTipMsg()
  {
    if (!ho.a().cv())
      ha.b(this.mContext, this.mContext.getString(2131428982));
  }

  public WindowManager.LayoutParams getWindowLayoutParams()
  {
    if (this.mLayoutParams == null)
    {
      this.mLayoutParams = new WindowManager.LayoutParams();
      this.mLayoutParams.gravity = 17;
      this.mLayoutParams.type = 2003;
      this.mLayoutParams.format = 1;
      this.mLayoutParams.width = -2;
      this.mLayoutParams.height = -2;
    }
    return this.mLayoutParams;
  }

  public boolean hasAddToWindow()
  {
    return this.mHasAddToWindow;
  }

  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131230941)
    {
      Intent localIntent = new Intent();
      localIntent.setClass(this.mContext, SplashActivity.class);
      localIntent.setFlags(268435456);
      this.mContext.startActivity(localIntent);
      if (this.mCloseCallback != null)
        this.mCloseCallback.onClose();
      checkAndShowDeskAssisSettingCloseTipMsg();
    }
    while (true)
    {
      return;
      if (paramView.getId() == 2131230946)
      {
        if (this.mCurrentView == this.mExpandedOptimizeWindow)
        {
          switchView(WindowType.ESettingWindow);
          nd.a().a(26267);
        }
        while (true)
        {
          nd.a().a(26364);
          break;
          switchView(WindowType.EOptimizeWindow);
          this.mMFrameWindowObserver.changeToNormalFrameTitle();
        }
      }
      if ((paramView.getId() == 2131230935) || (paramView.getId() == 2131230938) || (paramView.getId() == 2131230940) || (paramView.getId() == 2131230943) || (paramView.getId() == 2131230945))
        this.mDeskAssistanceWindow.removeAssistanceViewAndAddMinDeskView();
    }
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = true;
    if (paramInt == 3);
    while (true)
    {
      return bool;
      if (paramInt == 4)
        this.mDeskAssistanceWindow.removeAssistanceViewAndAddMinDeskView();
      else
        bool = false;
    }
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if ((paramMotionEvent.getAction() == 0) && (!new Rect(getLeft(), getTop(), getRight(), getBottom()).contains((int)paramMotionEvent.getX(), (int)paramMotionEvent.getY())))
      this.mDeskAssistanceWindow.removeAssistanceViewAndAddMinDeskView();
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public void openSettingView()
  {
    this.mNormalLogoLayout.setVisibility(0);
    this.mNormalSettingLayout.setVisibility(0);
    switchView(WindowType.ESettingWindow);
  }

  public void setCloseCallback(ICloseCallback paramICloseCallback)
  {
    this.mCloseCallback = paramICloseCallback;
  }

  public void setHasAddToWindow(boolean paramBoolean)
  {
    this.mHasAddToWindow = paramBoolean;
    if (!this.mHasAddToWindow)
    {
      this.mRunningProcessServer.b(this.mRunningProcessListCallback);
      this.mMemoryLoaderService.b(this.mMemchangeCallback);
    }
  }

  public void showWindow(WindowManager paramWindowManager, int paramInt1, int paramInt2, int paramInt3)
  {
    initSlideViewList();
    switchView(WindowType.EOptimizeWindow);
    this.mRunningProcessServer.a(this.mRunningProcessListCallback);
    this.mMemoryLoaderService.a(this.mMemchangeCallback);
    this.mMFrameWindowObserver.changeToNormalFrameTitle();
    zo localzo = zo.a();
    localzo.e();
    localzo.f();
    paramWindowManager.addView(this, getWindowLayoutParams());
    this.mHasAddToWindow = true;
    nd.a().a(26264);
  }

  public void updateOptimizeWindowRamUsage(int paramInt)
  {
    if ((!isExpanedOptimizeWindowShowing()) || (this.mExpandedOptimizeWindow == null));
    while (true)
    {
      return;
      this.mExpandedOptimizeWindow.updateOptimizeWindowRamUsage(paramInt);
    }
  }

  public void updateSettingViewStyle()
  {
    this.mNormalLogoLayout.setVisibility(0);
    this.mNormalSettingLayout.setVisibility(0);
  }

  public static abstract interface ICloseCallback
  {
    public abstract void onClose();
  }

  public static abstract interface MFrameWindowObserver
  {
    public abstract void changeToNormalFrameTitle();

    public abstract void onOptimizeFinish();

    public abstract void switchToTaskManagerView();
  }

  static enum WindowType
  {
    static
    {
      WindowType[] arrayOfWindowType = new WindowType[3];
      arrayOfWindowType[0] = EOptimizeWindow;
      arrayOfWindowType[1] = ESettingWindow;
      arrayOfWindowType[2] = ETaskManagerWindow;
    }
  }

  public static abstract interface settingCallback
  {
    public abstract void deskAssistanceOnOffCallback(boolean paramBoolean);

    public abstract void settingStyleCallback();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceExpandedWindow
 * JD-Core Version:    0.6.2
 */