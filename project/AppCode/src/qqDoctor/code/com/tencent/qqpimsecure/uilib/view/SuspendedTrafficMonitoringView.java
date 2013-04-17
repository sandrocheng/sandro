package com.tencent.qqpimsecure.uilib.view;

import a;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.Animation;
import android.view.animation.ScaleAnimation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.netsetting.NetSettingManager;
import com.tencent.tmsecure.module.network.INetworkChangeCallBack;
import com.tencent.tmsecure.module.network.INetworkMonitor;
import com.tencent.tmsecure.module.network.NetworkInfoEntity;
import com.tencent.tmsecure.module.network.NetworkManager;
import ft;
import ho;
import iu;
import kg;
import ve;

public class SuspendedTrafficMonitoringView extends LinearLayout
  implements View.OnClickListener, View.OnTouchListener
{
  private static final int MSG_COUNT_DOWN_FOR_TOUCH = 2;
  private static final int MSG_REFRESH_GPRS_INFO = 0;
  private static final int MSG_REFRESH_NO_NETWORK_INFO = 3;
  private static final int MSG_REFRESH_WIFI_INFO = 1;
  private final int FLOW_LEVEL_0 = 0;
  private final int FLOW_LEVEL_1 = 1;
  private final int FLOW_LEVEL_2 = 2;
  private long GPRSTotalafter = 0L;
  private long GPRSTotalbefore = -1L;
  private final int GPRS_LOGO = 1;
  long GPRSintervalDerifference = -1L;
  private final int NONE = 3;
  private final int QQPIM_LOGO = 2;
  private String TAG = "SuspendedTrafficMonitoringView";
  private long WIFITotalafter = 0L;
  private long WIFITotalbefore = -1L;
  private final int WIFI_LOGO = 0;
  long WIFIintervalDerifference = -1L;
  private int flowLevel = -1;
  private boolean isChangingLogo = false;
  boolean isMoved = false;
  private boolean isShow = false;
  private ImageView mCloseView;
  private ho mConfigDao;
  private Context mContext;
  private RelativeLayout mFlowWindowBar;
  private Handler mHandler = new SuspendedTrafficMonitoringView.4(this);
  private INetworkMonitor mINetworkMonitor;
  private INetworkMonitor mINetworkMonitorWifi;
  private RelativeLayout mLean;
  private int mLeft = -1;
  private ImageView mLogoView;
  private NetworkManager mNetworkManager;
  private long mPreTimeGPRS = System.currentTimeMillis();
  private long mPreTimeWIFI = System.currentTimeMillis();
  private int mPreTop;
  private SuspendTrafficeWindowProgressView mProgressBar;
  private float mScreenX;
  private float mScreenY;
  private int mShowingLogoType = 3;
  private TextView mTextView;
  private int mTop = -1;
  private int mTouchSlop;
  private float mTouchX;
  private float mTouchY;
  private WindowManager mWindowManager;
  private INetworkChangeCallBack mobileChangeCallBack = new SuspendedTrafficMonitoringView.1(this);
  private NetSettingManager netSetManager;
  private INetworkChangeCallBack wifiChangeCallBack = new SuspendedTrafficMonitoringView.2(this);

  public SuspendedTrafficMonitoringView(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
    this.mLean = ((RelativeLayout)LayoutInflater.from(this.mContext).inflate(2130903156, null));
    this.mProgressBar = ((SuspendTrafficeWindowProgressView)this.mLean.findViewById(2131230922));
    this.mFlowWindowBar = ((RelativeLayout)this.mLean.findViewById(2131230921));
    this.mTextView = ((TextView)this.mLean.findViewById(2131231025));
    this.mCloseView = ((ImageView)this.mLean.findViewById(2131231026));
    this.mCloseView.setVisibility(8);
    this.mLogoView = ((ImageView)this.mLean.findViewById(2131230924));
    this.mCloseView.setOnClickListener(new SuspendedTrafficMonitoringView.3(this));
    this.mConfigDao = ho.a();
    this.mScreenY = 0.0F;
    this.mScreenX = 0.0F;
    this.mTouchY = 0.0F;
    this.mTouchX = 0.0F;
    this.mNetworkManager = ((NetworkManager)ManagerCreator.getManager(NetworkManager.class));
    this.mINetworkMonitor = this.mNetworkManager.findMonitor("mobile");
    this.mINetworkMonitorWifi = this.mNetworkManager.findMonitor("wifi");
    if (this.netSetManager == null)
      this.netSetManager = ((NetSettingManager)ManagerCreator.getManager(NetSettingManager.class));
    this.mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
    setClickable(true);
    setEnabled(true);
    setFocusable(true);
    setFocusableInTouchMode(true);
    setOnClickListener(this);
    setOnTouchListener(this);
    initPos();
    this.mTextView.setText(a.b(new iu(QQPimApplication.a()).getUsedForMonth()));
    this.mProgressBar.setVisibility(0);
    NetworkInfoEntity localNetworkInfoEntity = new NetworkInfoEntity();
    localNetworkInfoEntity.mTotalForMonth = new iu(QQPimApplication.a()).getTotalForMonth();
    localNetworkInfoEntity.mUsedForMonth = new iu(QQPimApplication.a()).getUsedForMonth();
    fillGPRSPercent(localNetworkInfoEntity);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    addView(this.mLean, localLayoutParams);
  }

  private void changedLogo(ImageView paramImageView, int paramInt)
  {
    this.isChangingLogo = true;
    startOutAnimation(paramImageView, paramInt);
  }

  private void fillGPRSPercent(NetworkInfoEntity paramNetworkInfoEntity)
  {
    float f;
    int i;
    if (new iu(QQPimApplication.a()).getTotalForMonth() == 0L)
    {
      f = 0.0F;
      if (f != 0.0F)
        break label93;
      i = 0;
    }
    while (true)
    {
      label28: if (f < 0.9F)
      {
        if (this.flowLevel != 0)
          this.mProgressBar.setGreenLevel();
        this.flowLevel = 0;
      }
      while (true)
      {
        this.mProgressBar.setProgress(i);
        return;
        if (paramNetworkInfoEntity.mTotalForMonth == 0L)
        {
          f = 1.0F;
          break;
        }
        f = (float)paramNetworkInfoEntity.mUsedForMonth / (float)paramNetworkInfoEntity.mTotalForMonth;
        break;
        label93: if ((f < 0.02F) && (f > 0.0F))
        {
          i = 2;
          break label28;
        }
        if (f < 1.0F)
        {
          i = (int)(100.0F * f);
          break label28;
        }
        if (f < 1.0F)
          break label192;
        i = 100;
        break label28;
        if (f < 1.0F)
        {
          if (this.flowLevel != 1)
            this.mProgressBar.setYellowLevel();
          this.flowLevel = 1;
        }
        else
        {
          if (this.flowLevel != 2)
            this.mProgressBar.setRedLevel();
          this.flowLevel = 2;
        }
      }
      label192: i = 0;
    }
  }

  private void initPos()
  {
    int i = this.mConfigDao.aa();
    if (i == -1)
      showLocation(true);
    while (true)
    {
      return;
      this.mScreenX = (i & 0xFFFF);
      this.mScreenY = (0xFFFF & i >> 16);
      showLocation(false);
    }
  }

  private boolean saveLocation()
  {
    int i = this.mLeft;
    int j = this.mTop;
    if (i < 0)
      i = 0;
    if (j < 0)
      j = 0;
    int k = (i & 0xFFFF) + ((j & 0xFFFF) << 16);
    int m = this.mConfigDao.aa();
    this.mConfigDao.n(k);
    this.mTouchY = 0.0F;
    this.mTouchX = 0.0F;
    boolean bool = false;
    if (m == k);
    while (true)
    {
      return bool;
      bool = true;
    }
  }

  private void showLocation(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.mLeft = ((int)(this.mScreenX - this.mTouchX));
      this.mTop = ((int)(this.mScreenY - this.mTouchY));
      kg.b.x = this.mLeft;
      kg.b.y = this.mTop;
      if (ve.a)
        this.mWindowManager.updateViewLayout(this, kg.b);
    }
    while (true)
    {
      return;
      kg.b.x = (ft.d(this.mContext) / 2);
      kg.b.y = 44;
      this.mLeft = kg.b.x;
      this.mTop = kg.b.y;
    }
  }

  private void startInAnimation(ImageView paramImageView)
  {
    ScaleAnimation localScaleAnimation = new ScaleAnimation(1.0F, 1.0F, 0.0F, 1.0F, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setDuration(575L);
    localScaleAnimation.setAnimationListener(new SuspendedTrafficMonitoringView.6(this, paramImageView));
    paramImageView.startAnimation(localScaleAnimation);
  }

  private void startOutAnimation(ImageView paramImageView, int paramInt)
  {
    ScaleAnimation localScaleAnimation = new ScaleAnimation(1.0F, 1.0F, 1.0F, 0.0F, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setDuration(575L);
    localScaleAnimation.setAnimationListener(new SuspendedTrafficMonitoringView.5(this, paramImageView, paramInt));
    paramImageView.startAnimation(localScaleAnimation);
  }

  public void addCallBack()
  {
    this.mINetworkMonitor.addCallback(this.mobileChangeCallBack);
    this.mINetworkMonitorWifi.addCallback(this.wifiChangeCallBack);
  }

  public void onClick(View paramView)
  {
    this.mHandler.removeMessages(2);
    Message localMessage = this.mHandler.obtainMessage(2);
    localMessage.arg1 = 1;
    localMessage.sendToTarget();
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    this.mScreenX = paramMotionEvent.getRawX();
    this.mScreenY = paramMotionEvent.getRawY();
    Rect localRect = new Rect();
    getWindowVisibleDisplayFrame(localRect);
    int j = localRect.top;
    this.mScreenY -= j;
    switch (i)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      return this.isMoved;
      this.isMoved = false;
      setFocusable(false);
      this.mTouchX = paramMotionEvent.getX();
      this.mTouchY = paramMotionEvent.getY();
      showLocation(false);
      continue;
      int k = (int)Math.abs(paramMotionEvent.getX() - this.mTouchX);
      int m = (int)Math.abs(paramMotionEvent.getY() - this.mTouchY);
      if ((k > this.mTouchSlop) || (m > this.mTouchSlop) || (this.isMoved))
      {
        this.isMoved = true;
        showLocation(false);
        continue;
        saveLocation();
      }
    }
  }

  public void removeCallBack()
  {
    this.mINetworkMonitor.removeCallback(this.mobileChangeCallBack);
    this.mINetworkMonitorWifi.removeCallback(this.wifiChangeCallBack);
    this.mobileChangeCallBack = null;
    this.wifiChangeCallBack = null;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.SuspendedTrafficMonitoringView
 * JD-Core Version:    0.6.2
 */