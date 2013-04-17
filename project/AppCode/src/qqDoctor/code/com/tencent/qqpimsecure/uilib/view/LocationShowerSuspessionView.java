package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.os.Message;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import ft;
import gw;
import ho;
import kg;
import vc;

public class LocationShowerSuspessionView extends LinearLayout
  implements View.OnTouchListener
{
  private static final int MSG_CLOSE_TIPS = 0;
  private static final int MSG_FLASH_TIPS_ONE = 1;
  private static final int MSG_FLASH_TIPS_TWO = 2;
  private static final int MSG_PRE_CLOSE_CYCLE = 4;
  private static final int MSG_PRE_CLOSE_TIPS = 3;
  static int alpha = 100;
  public static int in = 1;
  public static int isinorout = 0;
  public static int out = 2;
  private View layout;
  public ho mConfigDao = ho.a();
  private Context mContext;
  private TextView mEavesdropView = null;
  private ImageView mFlashImage1 = null;
  private ImageView mFlashImage2 = null;
  private LinearLayout mFlashView = null;
  private Handler mHandler = new LocationShowerSuspessionView.1(this);
  private ImageView mImageView = null;
  public int mLeft;
  private int mScreenH;
  private int mScreenW;
  private float mScreenX;
  private float mScreenY;
  public int mTop;
  private float mTouchX;
  private float mTouchY;
  private TextView mTvShowerAbove = null;
  private TextView mTvShowerBelow = null;
  private WindowManager mWindowManager;

  public LocationShowerSuspessionView(Context paramContext, String paramString, boolean paramBoolean)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mWindowManager = ((WindowManager)paramContext.getSystemService("window"));
    this.layout = LayoutInflater.from(paramContext).inflate(2130903167, null);
    this.mTvShowerAbove = ((TextView)this.layout.findViewById(2131231070));
    this.mTvShowerBelow = ((TextView)this.layout.findViewById(2131231069));
    this.mEavesdropView = ((TextView)this.layout.findViewById(2131231071));
    this.mFlashView = ((LinearLayout)this.layout.findViewById(2131231072));
    this.mFlashImage1 = ((ImageView)this.layout.findViewById(2131231073));
    this.mFlashImage2 = ((ImageView)this.layout.findViewById(2131231074));
    addView(this.layout);
    setOnTouchListener(this);
    String str;
    if (paramString.length() > 0)
    {
      TextView localTextView1 = this.mTvShowerAbove;
      if (paramBoolean)
      {
        str = paramString + " IP";
        localTextView1.setText(str);
        TextView localTextView2 = this.mTvShowerBelow;
        if (paramBoolean)
          paramString = paramString + " IP";
        localTextView2.setText(paramString);
      }
    }
    else
    {
      if (!this.mConfigDao.p())
        break label380;
      this.mEavesdropView.setText(2131427427);
    }
    while (true)
    {
      initPos();
      Message localMessage1 = this.mHandler.obtainMessage(1);
      this.mHandler.sendMessageDelayed(localMessage1, 350L);
      Message localMessage2 = this.mHandler.obtainMessage(3);
      this.mHandler.sendMessageDelayed(localMessage2, 5001L);
      Message localMessage3 = this.mHandler.obtainMessage(4);
      this.mHandler.sendMessageDelayed(localMessage3, 10001L);
      return;
      str = paramString;
      break;
      label380: this.mEavesdropView.setText(2131427428);
    }
  }

  private void initPos()
  {
    int i = this.mConfigDao.Z();
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

  private void saveLocation()
  {
    int i = this.mLeft;
    int j = this.mTop;
    if (i < 0)
      i = 0;
    int k = 0;
    if (j < 0);
    while (true)
    {
      int m = ft.d(this.mContext);
      int n = this.layout.getWidth();
      if ((i <= m / 3) && (n + i >= (m << 1) / 3));
      for (int i1 = 65535; ; i1 = i)
      {
        int i2 = (i1 & 0xFFFF) + ((k & 0xFFFF) << 16);
        this.mConfigDao.m(i2);
        this.mTouchY = 0.0F;
        this.mTouchX = 0.0F;
        return;
      }
      k = j;
    }
  }

  private void showLocation(boolean paramBoolean)
  {
    if (!paramBoolean)
    {
      this.mLeft = ((int)(this.mScreenX - this.mTouchX));
      this.mTop = ((int)(this.mScreenY - this.mTouchY));
      if (this.mLeft == 65535)
      {
        kg.c.gravity = 49;
        kg.c.x = 0;
        kg.c.y = this.mTop;
        if (vc.e)
        {
          this.mWindowManager.updateViewLayout(this, kg.c);
          kg.c.gravity = 51;
        }
      }
    }
    while (true)
    {
      return;
      kg.c.x = this.mLeft;
      break;
      kg.c.x = 0;
      kg.c.y = 0;
      this.mLeft = kg.c.x;
      this.mTop = kg.c.y;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    if (this.mConfigDao.Z() == -1)
    {
      int i = 0xFFFF & gw.a - (paramInt3 - paramInt1);
      this.mConfigDao.m(i);
      initPos();
    }
  }

  public boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    int i = paramMotionEvent.getAction();
    this.mScreenX = paramMotionEvent.getRawX();
    this.mScreenY = paramMotionEvent.getRawY();
    switch (i)
    {
    default:
    case 0:
    case 2:
    case 1:
    }
    while (true)
    {
      return true;
      this.mTouchX = paramMotionEvent.getX();
      this.mTouchY = (paramMotionEvent.getY() + (int)(0.5F + 25.0F * this.mContext.getResources().getDisplayMetrics().density));
      showLocation(false);
      continue;
      showLocation(false);
      continue;
      saveLocation();
    }
  }

  public void removeAllMessages()
  {
    this.mHandler.removeMessages(0);
    this.mHandler.removeMessages(1);
    this.mHandler.removeMessages(2);
    this.mHandler.removeMessages(3);
    this.mHandler.removeMessages(4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.LocationShowerSuspessionView
 * JD-Core Version:    0.6.2
 */