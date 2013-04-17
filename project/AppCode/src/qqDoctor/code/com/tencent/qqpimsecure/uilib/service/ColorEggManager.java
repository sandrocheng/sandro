package com.tencent.qqpimsecure.uilib.service;

import a;
import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.view.Display;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.service.QQPimApplication;
import com.tencent.qqpimsecure.uilib.view.deskassistance.MinDeskAssistantWindow;
import ha;
import hd;
import ho;
import java.util.Random;
import lx;
import ma;
import qt;

public class ColorEggManager
{
  private long mCheckSuccessTime;
  private qt mColorEggConfigManager = qt.a(this.mContext);
  private LinearLayout mColorEggView;
  private Context mContext = QQPimApplication.a();
  private boolean mIsPassCheck;
  private WindowManager mWindowManager;
  private Handler mWindow_Handler;

  public ColorEggManager(WindowManager paramWindowManager, Handler paramHandler, LinearLayout paramLinearLayout)
  {
    this.mWindowManager = paramWindowManager;
    this.mWindow_Handler = paramHandler;
    this.mColorEggView = paramLinearLayout;
  }

  private void showCurveColorEgg()
  {
    double d1 = 50.0D;
    try
    {
      int i = this.mWindowManager.getDefaultDisplay().getWidth();
      int j = i - this.mColorEggView.getWidth();
      Message localMessage1 = this.mWindow_Handler.obtainMessage();
      localMessage1.what = 1;
      localMessage1.arg1 = 0;
      localMessage1.arg2 = 0;
      localMessage1.sendToTarget();
      d2 = 0.5D;
      double d3 = i / Math.sin(Math.toRadians(50.0D));
      double d4 = d3 * Math.cos(Math.toRadians(50.0D));
      break label260;
      int k = (int)(i - d3 * Math.sin(Math.toRadians(d1)));
      int m = (int)(d3 * Math.cos(Math.toRadians(d1)) - d4);
      Message localMessage2 = this.mWindow_Handler.obtainMessage();
      localMessage2.what = 0;
      localMessage2.arg1 = k;
      localMessage2.arg2 = m;
      localMessage2.sendToTarget();
      if (k >= j)
      {
        Message localMessage3 = this.mWindow_Handler.obtainMessage();
        localMessage3.what = 2;
        localMessage3.arg1 = k;
        localMessage3.arg2 = m;
        localMessage3.sendToTarget();
        try
        {
          Thread.sleep(500L);
          return;
        }
        catch (InterruptedException localInterruptedException3)
        {
          while (true)
            localInterruptedException3.printStackTrace();
        }
      }
    }
    catch (Exception localException)
    {
      while (true)
      {
        double d2;
        try
        {
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException1)
        {
          localInterruptedException1.printStackTrace();
        }
        continue;
        try
        {
          Thread.sleep(30L);
        }
        catch (InterruptedException localInterruptedException2)
        {
          localInterruptedException2.printStackTrace();
        }
        label260: d1 -= d2;
        if (d1 < 33.333333333333336D)
          d2 = 3.3D;
      }
    }
  }

  private void showLotteryColorEgg(lx paramlx)
  {
    if (paramlx.d != null)
    {
      Message localMessage1 = this.mWindow_Handler.obtainMessage();
      localMessage1.what = 8;
      localMessage1.obj = paramlx.d;
      localMessage1.sendToTarget();
      switch (paramlx.f)
      {
      default:
      case 2:
      case 1:
      case 3:
      }
    }
    while (true)
    {
      Message localMessage2 = this.mWindow_Handler.obtainMessage();
      localMessage2.what = 9;
      localMessage2.sendToTarget();
      return;
      showStraightColorEgg();
      continue;
      showCurveColorEgg();
      continue;
      showTransverseColorEgg();
    }
  }

  private String showNormalColorEgg(int paramInt, long paramLong, boolean paramBoolean)
  {
    ma localma = this.mColorEggConfigManager.a(paramInt % 10);
    String str;
    if ((localma == null) || (paramInt == 0))
      if ((paramInt % 10 == 0) && (paramInt != 0))
      {
        showStraightColorEgg();
        str = null;
      }
    while (true)
    {
      while (true)
      {
        return str;
        if (paramInt % 10 == 5)
        {
          showCurveColorEgg();
          break;
        }
        try
        {
          Thread.sleep(200L);
        }
        catch (InterruptedException localInterruptedException)
        {
          localInterruptedException.printStackTrace();
        }
      }
      break;
      if ((!paramBoolean) || (localma.d == null) || (paramInt % 10 != Integer.valueOf(localma.b).intValue()))
        break;
      Message localMessage1 = this.mWindow_Handler.obtainMessage();
      localMessage1.what = 8;
      localMessage1.obj = localma.d;
      localMessage1.sendToTarget();
      switch (localma.f)
      {
      default:
      case 2:
      case 1:
      case 3:
      }
      while (true)
      {
        Message localMessage2 = this.mWindow_Handler.obtainMessage();
        localMessage2.what = 9;
        localMessage2.sendToTarget();
        if ((!localma.h) || (!ho.a().dt()))
          break label298;
        ColorEggDialogInfoHolder localColorEggDialogInfoHolder = new ColorEggDialogInfoHolder();
        localColorEggDialogInfoHolder.killCount = paramInt;
        localColorEggDialogInfoHolder.ram = paramLong;
        localColorEggDialogInfoHolder.entity = localma;
        Message localMessage3 = this.mWindow_Handler.obtainMessage();
        localMessage3.what = 12;
        localMessage3.obj = localColorEggDialogInfoHolder;
        localMessage3.sendToTarget();
        str = localma.g;
        break;
        showStraightColorEgg();
        continue;
        showCurveColorEgg();
        continue;
        showTransverseColorEgg();
      }
      label298: str = localma.g;
    }
  }

  private void showStraightColorEgg()
  {
    int i = 0;
    int n;
    int i3;
    try
    {
      int j = this.mWindowManager.getDefaultDisplay().getHeight();
      int k = this.mWindowManager.getDefaultDisplay().getWidth();
      int m = (int)(0.9D * j);
      n = (int)(0.1F * (k * new Random().nextInt(10)));
      int i1 = (int)(0.2D * j);
      int i2 = (int)(0.65F * m);
      Message localMessage1 = this.mWindow_Handler.obtainMessage();
      localMessage1.what = 4;
      localMessage1.arg1 = n;
      localMessage1.arg2 = 0;
      localMessage1.sendToTarget();
      i3 = 0;
      while (i3 <= i2)
      {
        if ((i == 0) && (i3 >= i1))
        {
          i = 1;
          Message localMessage4 = this.mWindow_Handler.obtainMessage();
          localMessage4.what = 6;
          localMessage4.arg1 = ((int)(30.0F * ((i2 - i1) / 10.0F)));
          localMessage4.sendToTarget();
        }
        Message localMessage3 = this.mWindow_Handler.obtainMessage();
        localMessage3.what = 0;
        localMessage3.arg1 = n;
        localMessage3.arg2 = i3;
        localMessage3.sendToTarget();
        i3 += 10;
        try
        {
          Thread.sleep(30L);
        }
        catch (InterruptedException localInterruptedException2)
        {
          localInterruptedException2.printStackTrace();
        }
      }
    }
    catch (Exception localException)
    {
    }
    try
    {
      Thread.sleep(200L);
      while (true)
      {
        return;
        Message localMessage2 = this.mWindow_Handler.obtainMessage();
        localMessage2.what = 5;
        localMessage2.arg1 = n;
        localMessage2.arg2 = i3;
        localMessage2.sendToTarget();
      }
    }
    catch (InterruptedException localInterruptedException1)
    {
      while (true)
        localInterruptedException1.printStackTrace();
    }
  }

  private void showToast(int paramInt, long paramLong, String paramString, boolean paramBoolean)
  {
    if (MinDeskAssistantWindow.mIsFireRocketToast)
    {
      System.currentTimeMillis();
      new hd();
      MinDeskAssistantWindow.mIsFireRocketToast = false;
    }
    String str1 = "0";
    String str2 = "M";
    if (paramLong != 0L)
    {
      String str7 = a.b(paramLong);
      int i = str7.indexOf(".");
      if (i != -1)
      {
        str1 = str7.substring(0, i);
        str2 = str7.substring(-1 + str7.length());
      }
    }
    if (paramString != null)
    {
      Context localContext4 = this.mContext;
      String str6 = paramString + this.mContext.getString(2131429674);
      Object[] arrayOfObject4 = new Object[2];
      arrayOfObject4[0] = Integer.valueOf(paramInt);
      arrayOfObject4[1] = (str1 + str2);
      ha.b(localContext4, String.format(str6, arrayOfObject4));
    }
    while (true)
    {
      return;
      if ((paramInt % 10 == 0) && (paramInt != 0) && (paramBoolean != true))
      {
        Context localContext3 = this.mContext;
        String str5 = this.mContext.getString(2131429684);
        Object[] arrayOfObject3 = new Object[2];
        arrayOfObject3[0] = Integer.valueOf(paramInt);
        arrayOfObject3[1] = (str1 + str2);
        ha.b(localContext3, String.format(str5, arrayOfObject3));
      }
      else if ((paramInt % 10 == 5) && (paramBoolean != true))
      {
        Context localContext2 = this.mContext;
        String str4 = this.mContext.getString(2131429683);
        Object[] arrayOfObject2 = new Object[2];
        arrayOfObject2[0] = Integer.valueOf(paramInt);
        arrayOfObject2[1] = (str1 + str2);
        ha.b(localContext2, String.format(str4, arrayOfObject2));
      }
      else if (paramInt == 0)
      {
        ha.b(this.mContext, this.mContext.getString(2131429688));
      }
      else
      {
        Context localContext1 = this.mContext;
        String str3 = this.mContext.getString(2131429681);
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = Integer.valueOf(paramInt);
        arrayOfObject1[1] = (str1 + str2);
        ha.b(localContext1, String.format(str3, arrayOfObject1));
      }
    }
  }

  private void showTransverseColorEgg()
  {
    int i = 0;
    int n;
    int i3;
    try
    {
      int j = this.mWindowManager.getDefaultDisplay().getHeight();
      int k = this.mWindowManager.getDefaultDisplay().getWidth();
      int m = (int)(0.9D * j);
      n = (int)(0.1F * (j / 3 * new Random().nextInt(10)));
      int i1 = (int)(0.1D * k);
      int i2 = (int)(0.65F * m);
      Message localMessage1 = this.mWindow_Handler.obtainMessage();
      localMessage1.what = 4;
      localMessage1.arg1 = 0;
      localMessage1.arg2 = n;
      localMessage1.sendToTarget();
      i3 = 0;
      while (i3 <= i2)
      {
        if ((i == 0) && (i3 >= i1))
        {
          i = 1;
          Message localMessage4 = this.mWindow_Handler.obtainMessage();
          localMessage4.what = 6;
          localMessage4.arg1 = ((int)(30.0F * ((i2 - i1) / 10.0F)));
          localMessage4.sendToTarget();
        }
        Message localMessage3 = this.mWindow_Handler.obtainMessage();
        localMessage3.what = 0;
        localMessage3.arg1 = i3;
        localMessage3.arg2 = n;
        localMessage3.sendToTarget();
        i3 += 10;
        try
        {
          Thread.sleep(30L);
        }
        catch (InterruptedException localInterruptedException2)
        {
          localInterruptedException2.printStackTrace();
        }
      }
    }
    catch (Exception localException)
    {
    }
    try
    {
      Thread.sleep(200L);
      while (true)
      {
        return;
        Message localMessage2 = this.mWindow_Handler.obtainMessage();
        localMessage2.what = 5;
        localMessage2.arg1 = n;
        localMessage2.arg2 = i3;
        localMessage2.sendToTarget();
      }
    }
    catch (InterruptedException localInterruptedException1)
    {
      while (true)
        localInterruptedException1.printStackTrace();
    }
  }

  public boolean isPassCheck()
  {
    return this.mIsPassCheck;
  }

  public void setPassCheck(boolean paramBoolean)
  {
    this.mIsPassCheck = paramBoolean;
  }

  public void startCheckLottery()
  {
    new Thread(new ColorEggManager.1(this)).start();
  }

  public void startColorEggAnimation(int paramInt, long paramLong, boolean paramBoolean)
  {
    new Thread(new ColorEggManager.2(this, paramBoolean, paramInt, paramLong)).start();
  }

  public class ColorEggDialogInfoHolder
  {
    public Object entity;
    public int killCount;
    public long ram;

    public ColorEggDialogInfoHolder()
    {
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.service.ColorEggManager
 * JD-Core Version:    0.6.2
 */