package com.tencent.qqpimsecure.uilib.view.deskassistance;

import abv;
import abv.b;
import android.app.ActivityManager.RunningTaskInfo;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.telephony.PhoneStateListener;
import android.telephony.TelephonyManager;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import com.tencent.qqpimsecure.uilib.view.WhiteListSettingTipDialogView;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.network.NetworkManager;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import fs;
import ha;
import ho;
import nd;
import vh;
import vh.a;
import vh.b;
import zk;
import zk.b;
import zn;
import zo;

public class DeskAssistanceWindow
  implements View.OnClickListener
{
  public static final String SWITCH_DESK_ASSIS_WINDOW = "switch_desk_assis_window";
  public static int ZOOM_IN_SIDE_LEFT = 1;
  public static int ZOOM_IN_SIDE_RIGHT = 2;
  private static DeskAssistanceWindow mInstance;
  protected final int GRAVITY_HORIZONTAL = 1;
  protected final int GRAVITY_VERTICAL = 0;
  private final int MSG_GET_RAM_USAGE = 3;
  private final int MSG_INIT_DESK_VIEW = 0;
  private final int MSG_RESET_MIN_DESK_VIEW = 2;
  private final int MSG_SHOW_WHITE_LIST_DIALOG = 5;
  private ImageView mAlphaCanvas;
  private ho mConfigDao;
  private Context mContext;
  private abv.b mCurrentAppCallBack = new DeskAssistanceCurrentAppCallBack();
  private DeskAssistanceExpandedWindow mDeskAssistanceExpandedWindow;
  private DeskAssistantTipWindow mDeskAssistantTipWindow;
  protected int mGravity;
  private boolean mIsOnDeskNow = false;
  private boolean mIsOnQQSecure = false;
  private WindowManager.LayoutParams mLayoutParams;
  private vh.a mMemchangeCallback = new DeskAssistanceWindow.1(this);
  private vh mMemoryLoaderService;
  private MinDeskAssistantWindow mMinDeskAssistantWindow;
  private vh.b mOnGetMemoryDelayListener = new DeskAssistanceWindow.3(this);
  private boolean mOptomoizeStarted = false;
  private PhoneStateListener mPhoneStateListener = new DeskAssistanceWindow.5(this);
  private zo mProcessServer;
  private zk.b mRocketCleanerCallback = new DeskAssistanceWindow.2(this);
  private OnRocketMoveListener mRocketMoveListener;
  private zk mRunningProcessCleaner;
  private zo mRunningProcessServer;
  private BroadcastReceiver mScreenEventReceicer = new DeskAssistanceWindow.6(this);
  private SuspendWhirlPoolView.onSuspendWhirlPoolAnimListener mWhirlPoolListener;
  private SuspendWhirlPoolView mWhirlPoolView;
  private WindowManager mWindowManager;
  private Window_Handler mWindow_Handler = null;
  private Handler mhandler = new DeskAssistanceWindow.4(this);

  private DeskAssistanceWindow(Context paramContext)
  {
    this.mContext = paramContext;
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
    this.mProcessServer = zo.a();
    this.mConfigDao = ho.a();
    this.mRunningProcessServer = zo.a();
    this.mMemoryLoaderService = vh.a();
    this.mRunningProcessCleaner = new zk(this.mContext, this.mRocketCleanerCallback);
    this.mGravity = getCurrentGravity();
    ((TelephonyManager)paramContext.getSystemService("phone")).listen(this.mPhoneStateListener, 32);
    if (this.mConfigDao.cv())
      registerCurrentApp();
    IntentFilter localIntentFilter = new IntentFilter("android.intent.action.SCREEN_ON");
    this.mContext.registerReceiver(this.mScreenEventReceicer, localIntentFilter);
  }

  private void addMinDeskView()
  {
    if (this.mMinDeskAssistantWindow.isUping());
    while (true)
    {
      return;
      if ((this.mMinDeskAssistantWindow.hasAddToWindow()) || (this.mOptomoizeStarted) || (isExpandedWindowShowing()))
        continue;
      this.mMinDeskAssistantWindow.initView();
      WindowManager.LayoutParams localLayoutParams = this.mMinDeskAssistantWindow.getWindowLayoutParams(-1, -1);
      if (localLayoutParams.x > 0)
        localLayoutParams.x = (this.mWindowManager.getDefaultDisplay().getWidth() - this.mMinDeskAssistantWindow.getFactWidth());
      try
      {
        if (!this.mMinDeskAssistantWindow.isShown())
        {
          this.mMemoryLoaderService.d();
          this.mWindowManager.addView(this.mMinDeskAssistantWindow, localLayoutParams);
          this.mMemoryLoaderService.a(this.mMemchangeCallback);
          this.mMemoryLoaderService.a(this.mOnGetMemoryDelayListener);
        }
        while (true)
        {
          label136: this.mMinDeskAssistantWindow.setHasAddToWindow(true);
          if (this.mWhirlPoolListener != null)
            this.mWhirlPoolListener.onAnimationDone();
          if (this.mRocketMoveListener == null)
            break;
          this.mRocketMoveListener.onAnimationDone();
          break;
          this.mWindowManager.updateViewLayout(this.mMinDeskAssistantWindow, localLayoutParams);
        }
      }
      catch (Exception localException)
      {
        break label136;
      }
    }
  }

  private void closeUseRocketTipMsg()
  {
    if ((this.mDeskAssistantTipWindow != null) && (this.mDeskAssistantTipWindow.isShown()))
      this.mWindowManager.removeView(this.mDeskAssistantTipWindow);
  }

  private void deregisterCurrentApp()
  {
    abv.a().b(this.mCurrentAppCallBack);
  }

  private void doNotInDeskAction()
  {
    if ((this.mRocketMoveListener != null) && (this.mMinDeskAssistantWindow.isRocketRunning()))
      this.mRocketMoveListener.onAnimationDone();
    if (this.mWhirlPoolView != null)
      this.mWhirlPoolView.stopAnimation();
    if (this.mMinDeskAssistantWindow != null)
    {
      removeMinDeskView();
      this.mMinDeskAssistantWindow.dealWithInter();
      this.mMinDeskAssistantWindow.setRocketDone();
    }
  }

  private void doPhoneRingAction()
  {
    if (this.mWhirlPoolView != null)
      this.mWhirlPoolView.stopAnimation();
    if (this.mMinDeskAssistantWindow != null)
    {
      removeMinDeskView();
      this.mMinDeskAssistantWindow.dealWithInter();
    }
  }

  private void doResumeAction()
  {
    if (this.mRocketMoveListener != null)
      this.mRocketMoveListener.onAnimationDone();
    if (this.mWhirlPoolView != null)
      this.mWhirlPoolView.stopAnimation();
    if (this.mMinDeskAssistantWindow != null)
    {
      removeMinDeskView();
      this.mMinDeskAssistantWindow.dealWithInter();
      Message localMessage = this.mhandler.obtainMessage(0);
      this.mhandler.removeMessages(0);
      localMessage.sendToTarget();
      this.mMinDeskAssistantWindow.setRocketDone();
    }
  }

  private int getCurrentGravity()
  {
    if (this.mWindowManager.getDefaultDisplay().getHeight() < this.mWindowManager.getDefaultDisplay().getWidth());
    for (int i = 1; ; i = 0)
      return i;
  }

  public static DeskAssistanceWindow getInstance(Context paramContext)
  {
    if (mInstance == null)
      mInstance = new DeskAssistanceWindow(paramContext);
    return mInstance;
  }

  private Rect getWhirlPoolViewRect()
  {
    Rect localRect;
    if (this.mWhirlPoolView == null)
      localRect = null;
    while (true)
    {
      return localRect;
      localRect = new Rect();
      this.mWhirlPoolView.getDrawingRect(localRect);
      WindowManager.LayoutParams localLayoutParams = this.mWhirlPoolView.getParamXY();
      localRect.left += localLayoutParams.x;
      localRect.right += localLayoutParams.x;
      localRect.top += localLayoutParams.y;
      localRect.bottom += localLayoutParams.y;
    }
  }

  private void initWhilePoolview()
  {
    if (this.mWhirlPoolView == null)
    {
      this.mWhirlPoolListener = new DeskAssistanceWindow.7(this);
      this.mWhirlPoolView = new SuspendWhirlPoolView(this.mContext, this.mWhirlPoolListener);
      this.mWindowManager.addView(this.mWhirlPoolView, this.mWhirlPoolView.getParams());
    }
  }

  private boolean isExpandedWindowShowing()
  {
    if ((this.mDeskAssistanceExpandedWindow != null) && (this.mDeskAssistanceExpandedWindow.hasAddToWindow()));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  private void removeMinDeskView()
  {
    if (this.mMinDeskAssistantWindow.isUping());
    while (true)
    {
      return;
      if ((this.mMinDeskAssistantWindow.hasAddToWindow()) && (!this.mMinDeskAssistantWindow.isRocketRunning()))
        this.mMinDeskAssistantWindow.setHasAddToWindow(false);
      try
      {
        this.mMinDeskAssistantWindow.stopAnimation();
        this.mWindowManager.removeView(this.mMinDeskAssistantWindow);
        this.mMinDeskAssistantWindow.ondestroy();
      }
      catch (Exception localException1)
      {
        try
        {
          Thread.sleep(this.mMinDeskAssistantWindow.getRocketDelay());
          this.mMemoryLoaderService.b(this.mMemchangeCallback);
          this.mMemoryLoaderService.i();
          this.mMemoryLoaderService.d();
          this.mMinDeskAssistantWindow.setRocketDelay(0);
          if (this.mWhirlPoolListener != null)
            this.mWhirlPoolListener.onAnimationDone();
          if (this.mRocketMoveListener != null)
            this.mRocketMoveListener.onAnimationDone();
          if ((this.mDeskAssistantTipWindow != null) && (this.mDeskAssistantTipWindow.isShown()))
            this.mWindowManager.removeView(this.mDeskAssistantTipWindow);
          this.mMinDeskAssistantWindow.getVibrate().Stop();
          continue;
          localException1 = localException1;
          this.mMinDeskAssistantWindow.setHasAddToWindow(true);
        }
        catch (Exception localException2)
        {
          while (true)
            localException2.printStackTrace();
        }
      }
    }
  }

  private void showUseRocketTipMsg()
  {
    if ((this.mDeskAssistantTipWindow != null) && (this.mDeskAssistantTipWindow.isShown()));
    while (true)
    {
      return;
      if (this.mConfigDao.de() != true)
      {
        if (this.mDeskAssistantTipWindow == null)
          this.mDeskAssistantTipWindow = new DeskAssistantTipWindow(this.mContext);
        if (!this.mDeskAssistantTipWindow.isShown())
        {
          this.mDeskAssistantTipWindow.initView();
          int i = PhoneInfoUtil.getScreenWidth(this.mContext);
          int j = getWhirlPoolViewRect().top;
          int k = i / 2;
          this.mWindowManager.addView(this.mDeskAssistantTipWindow, this.mDeskAssistantTipWindow.getWindowLayoutParams(k, j));
        }
      }
    }
  }

  private void startClean()
  {
    this.mProcessServer.e();
    new Thread(new zn(this.mRunningProcessCleaner)).start();
  }

  private void startVibreate()
  {
    this.mMinDeskAssistantWindow.getVibrate().playVibrate(-1);
  }

  private void stopVibreate()
  {
    this.mMinDeskAssistantWindow.getVibrate().Stop();
  }

  public void changeToMaxDesk()
  {
    this.mMinDeskAssistantWindow.stopAnimation();
    try
    {
      removeMinDeskView();
      label11: if (this.mMinDeskAssistantWindow.getWindowLayoutParams(-1, -1).x > PhoneInfoUtil.getScreenWidth(this.mContext) / 2);
      for (int i = ZOOM_IN_SIDE_RIGHT; ; i = ZOOM_IN_SIDE_LEFT)
      {
        WindowManager.LayoutParams localLayoutParams = this.mMinDeskAssistantWindow.getWindowLayoutParams(-1, -1);
        showAssistanceView(i, localLayoutParams.x, localLayoutParams.y - this.mMinDeskAssistantWindow.getHeight() / 2);
        return;
      }
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label11;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label11;
    }
  }

  public void checkAndShowDeskAssisSettingCloseTipMsg()
  {
    if (!ho.a().cv())
      ha.b(this.mContext, this.mContext.getString(2131428982));
  }

  public void closeSuspendedWindow()
  {
    removeAssistanceView();
    removeMinDeskView();
    if (this.mWindow_Handler != null)
    {
      this.mWindow_Handler.removeMessages(3);
      this.mWindow_Handler = null;
    }
    abv.a().b(this.mCurrentAppCallBack);
  }

  public WindowManager.LayoutParams getWindowLayoutParams(int paramInt1, int paramInt2)
  {
    if (this.mLayoutParams == null)
    {
      this.mLayoutParams = new WindowManager.LayoutParams();
      this.mLayoutParams.gravity = 51;
      this.mLayoutParams.type = 2003;
      this.mLayoutParams.format = 1;
      WindowManager.LayoutParams localLayoutParams = this.mLayoutParams;
      localLayoutParams.flags = (0x408 | localLayoutParams.flags);
      this.mLayoutParams.width = -1;
      this.mLayoutParams.height = -1;
    }
    if (paramInt1 != -1)
    {
      this.mLayoutParams.x = paramInt1;
      this.mLayoutParams.y = paramInt2;
    }
    return this.mLayoutParams;
  }

  public void onClick(View paramView)
  {
    if ((paramView != this.mMinDeskAssistantWindow) || (!this.mRunningProcessServer.k()));
    while (true)
    {
      return;
      changeToMaxDesk();
    }
  }

  public void registerCurrentApp()
  {
    abv.a().a(this.mCurrentAppCallBack);
  }

  public void removeAssistanceView()
  {
    if (this.mDeskAssistanceExpandedWindow.hasAddToWindow())
      this.mDeskAssistanceExpandedWindow.setHasAddToWindow(false);
    try
    {
      if (this.mDeskAssistanceExpandedWindow.isShown())
        this.mWindowManager.removeView(this.mDeskAssistanceExpandedWindow);
      if (this.mAlphaCanvas.isShown())
        this.mWindowManager.removeView(this.mAlphaCanvas);
      checkAndShowDeskAssisSettingCloseTipMsg();
      if (!this.mConfigDao.cv())
      {
        abv.a().b(this.mCurrentAppCallBack);
        this.mIsOnDeskNow = false;
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      while (true)
        this.mDeskAssistanceExpandedWindow.setHasAddToWindow(true);
    }
    catch (IllegalStateException localIllegalStateException)
    {
      while (true)
        this.mDeskAssistanceExpandedWindow.setHasAddToWindow(true);
    }
  }

  public void removeAssistanceViewAndAddMinDeskView()
  {
    removeAssistanceView();
    if (this.mConfigDao.cv())
      addMinDeskView();
  }

  public void showAssistanceView(int paramInt1, int paramInt2, int paramInt3)
  {
    if (this.mDeskAssistanceExpandedWindow == null)
    {
      this.mDeskAssistanceExpandedWindow = DeskAssistanceExpandedWindow.getInstance(this.mContext, this);
      this.mAlphaCanvas = ((ImageView)LayoutInflater.from(this.mContext).inflate(2130903138, null));
    }
    try
    {
      this.mWindowManager.addView(this.mAlphaCanvas, getWindowLayoutParams(-1, -1));
      this.mDeskAssistanceExpandedWindow.showWindow(this.mWindowManager, paramInt1, paramInt2, paramInt3);
      label73: if (this.mWhirlPoolListener != null)
        this.mWhirlPoolListener.onAnimationDone();
      if (this.mRocketMoveListener != null)
        this.mRocketMoveListener.onAnimationDone();
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      break label73;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      break label73;
    }
  }

  public void showSuspendedWindow()
  {
    ((NetworkManager)ManagerCreator.getManager(NetworkManager.class)).setInterval(fs.c);
    if (this.mMinDeskAssistantWindow == null)
    {
      this.mMinDeskAssistantWindow = new MinDeskAssistantWindow(this.mContext);
      this.mRocketMoveListener = new DeskAssistanceWindow.8(this);
      this.mMinDeskAssistantWindow.setRocketMoveListener(this.mRocketMoveListener);
      this.mMinDeskAssistantWindow.setOnClickListener(this);
    }
    if (this.mProcessServer.k())
      addMinDeskView();
    if (this.mWindow_Handler == null)
      this.mWindow_Handler = new Window_Handler(null);
    this.mDeskAssistanceExpandedWindow = DeskAssistanceExpandedWindow.getInstance(this.mContext, this);
    this.mDeskAssistanceExpandedWindow.setCloseCallback(new DeskAssistanceWindow.9(this));
    this.mAlphaCanvas = ((ImageView)LayoutInflater.from(this.mContext).inflate(2130903138, null));
    this.mWindow_Handler.sendEmptyMessage(3);
    registerCurrentApp();
  }

  class DeskAssistanceCurrentAppCallBack
    implements abv.b
  {
    private int mCycleCount = 0;

    public DeskAssistanceCurrentAppCallBack()
    {
    }

    public void currentApp(ActivityManager.RunningTaskInfo paramRunningTaskInfo)
    {
      if (this.mCycleCount > 1)
        this.mCycleCount = 0;
      while (true)
      {
        return;
        this.mCycleCount = (1 + this.mCycleCount);
        if ((DeskAssistanceWindow.this.mWindow_Handler != null) && (DeskAssistanceWindow.this.mProcessServer != null))
        {
          DeskAssistanceWindow.access$1902(DeskAssistanceWindow.this, DeskAssistanceWindow.this.mProcessServer.a(paramRunningTaskInfo.topActivity));
          if (!DeskAssistanceWindow.this.mIsOnDeskNow)
          {
            DeskAssistanceWindow localDeskAssistanceWindow = DeskAssistanceWindow.this;
            DeskAssistanceWindow.access$2002(localDeskAssistanceWindow, zo.l());
          }
          DeskAssistanceWindow.this.mWindow_Handler.sendEmptyMessage(3);
        }
      }
    }
  }

  class Window_Handler extends Handler
  {
    private Window_Handler()
    {
    }

    public void handleMessage(Message paramMessage)
    {
      switch (paramMessage.what)
      {
      case 4:
      default:
      case 3:
      case 5:
      }
      while (true)
      {
        return;
        if (!DeskAssistanceWindow.this.mConfigDao.cv())
        {
          DeskAssistanceWindow.this.removeMinDeskView();
          if (((DeskAssistanceWindow.this.mDeskAssistanceExpandedWindow != null) && (!DeskAssistanceWindow.this.mDeskAssistanceExpandedWindow.hasAddToWindow())) || (!DeskAssistanceWindow.this.mIsOnDeskNow))
            DeskAssistanceWindow.this.removeAssistanceView();
        }
        else if (!DeskAssistanceWindow.this.mConfigDao.W())
        {
          if (DeskAssistanceWindow.this.mMinDeskAssistantWindow.hasAddToWindow())
          {
            DeskAssistanceWindow.this.mMinDeskAssistantWindow.stopAnimation();
            DeskAssistanceWindow.this.removeMinDeskView();
          }
        }
        else if (!DeskAssistanceWindow.this.mIsOnDeskNow)
        {
          if (!DeskAssistanceWindow.this.mIsOnQQSecure)
          {
            DeskAssistanceWindow.this.mRunningProcessServer.c();
            DeskAssistanceWindow.this.mMemoryLoaderService.c();
            if (DeskAssistanceWindow.this.mConfigDao.dC() != -1L)
              nd.a().g();
          }
          DeskAssistanceWindow.this.doNotInDeskAction();
          DeskAssistanceWindow.this.removeAssistanceView();
        }
        else
        {
          int i = DeskAssistanceWindow.this.getCurrentGravity();
          if (DeskAssistanceWindow.this.mGravity != i)
          {
            DeskAssistanceWindow.this.mGravity = i;
            WindowManager.LayoutParams localLayoutParams = DeskAssistanceWindow.this.mMinDeskAssistantWindow.getWindowLayoutParams(-1, -1);
            if (localLayoutParams.x > 0)
              localLayoutParams.x = (DeskAssistanceWindow.this.mWindowManager.getDefaultDisplay().getWidth() - DeskAssistanceWindow.this.mMinDeskAssistantWindow.getWidth());
            DeskAssistanceWindow.this.mMinDeskAssistantWindow.saveLocation(localLayoutParams.x, localLayoutParams.y);
            if ((DeskAssistanceWindow.this.mMinDeskAssistantWindow != null) && (DeskAssistanceWindow.this.mMinDeskAssistantWindow.isShown()))
              DeskAssistanceWindow.this.mWindowManager.updateViewLayout(DeskAssistanceWindow.this.mMinDeskAssistantWindow, localLayoutParams);
          }
          if (!DeskAssistanceWindow.this.mMinDeskAssistantWindow.hasAddToWindow())
            DeskAssistanceWindow.this.addMinDeskView();
          if (DeskAssistanceWindow.this.mMinDeskAssistantWindow.getVisibility() != 0)
          {
            DeskAssistanceWindow.this.mMinDeskAssistantWindow.setVisibility(0);
            continue;
            WhiteListSettingTipDialogView.showDialog();
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.DeskAssistanceWindow
 * JD-Core Version:    0.6.2
 */