package com.tencent.qqpimsecure.uilib.view.deskassistance;

import abv;
import abv.b;
import android.content.Context;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.tmsecure.common.TMSApplication;
import kg;
import zo;

public class ColorEggGetPrizeConfirmView extends LinearLayout
  implements View.OnKeyListener
{
  private static ColorEggGetPrizeConfirmView mInstance;
  private static MinDeskAssistantWindow.onConfirmGetPrizeListener mListener;
  private Context mContext;
  private abv.b mCurrentAppCallBack = new ColorEggGetPrizeConfirmView.1(this);
  private boolean mIsOnDeskNow = false;
  LinearLayout mMainLayout;
  private zo mProcessServer;

  public ColorEggGetPrizeConfirmView(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext);
    this.mContext = paramContext;
    this.mProcessServer = zo.a();
    initView(paramContext, paramString1, paramString2);
    registerCurrentApp();
  }

  private void deregisterCurrentApp()
  {
    abv.a().b(this.mCurrentAppCallBack);
  }

  private void initView(Context paramContext, String paramString1, String paramString2)
  {
    this.mMainLayout = ((LinearLayout)LayoutInflater.from(paramContext).inflate(2130903160, null));
    this.mMainLayout.setVisibility(8);
    addView(this.mMainLayout);
    setFocusable(true);
    setFocusableInTouchMode(true);
    ButtonView localButtonView1 = (ButtonView)this.mMainLayout.findViewById(2131230756);
    ButtonView localButtonView2 = (ButtonView)this.mMainLayout.findViewById(2131230757);
    localButtonView1.setOnClickListener(new ColorEggGetPrizeConfirmView.2(this, paramString1, paramContext));
    localButtonView2.setOnClickListener(new ColorEggGetPrizeConfirmView.3(this, paramString2));
    setOnKeyListener(this);
  }

  private void registerCurrentApp()
  {
    abv.a().a(this.mCurrentAppCallBack);
  }

  public static void showDialog(String paramString1, String paramString2, MinDeskAssistantWindow.onConfirmGetPrizeListener paramonConfirmGetPrizeListener)
  {
    mInstance = new ColorEggGetPrizeConfirmView(TMSApplication.getApplicaionContext(), paramString1, paramString2);
    mListener = paramonConfirmGetPrizeListener;
    ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).addView(mInstance, kg.e);
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggGetPrizeConfirmView
 * JD-Core Version:    0.6.2
 */