package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.tmsecure.common.TMSApplication;
import kg;
import nd;

public class RemindResetStlyeDialog extends LinearLayout
  implements View.OnClickListener, View.OnKeyListener
{
  private static RemindResetStlyeDialog mInstance;
  private ButtonView mBtnEnterAndSet;
  private ButtonView mBtnNextTime;
  private Context mContext;
  private TextView mTvMessage;
  private TextView mTvTitle;

  public RemindResetStlyeDialog(Context paramContext)
  {
    super(paramContext);
    this.mContext = paramContext;
    initView();
  }

  public RemindResetStlyeDialog(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    initView();
  }

  private void initView()
  {
    addView((LinearLayout)LayoutInflater.from(this.mContext).inflate(2130903233, null));
    setFocusable(true);
    setFocusableInTouchMode(true);
    this.mTvTitle = ((TextView)findViewById(2131230754));
    this.mTvTitle.setText(2131430244);
    this.mTvMessage = ((TextView)findViewById(2131230900));
    this.mTvMessage.setText(this.mContext.getString(2131430252));
    this.mBtnEnterAndSet = ((ButtonView)findViewById(2131230756));
    this.mBtnEnterAndSet.setText(this.mContext.getString(2131430253));
    this.mBtnNextTime = ((ButtonView)findViewById(2131230757));
    this.mBtnNextTime.setText(this.mContext.getString(2131430254));
    this.mBtnEnterAndSet.setOnClickListener(this);
    this.mBtnNextTime.setOnClickListener(this);
    setOnKeyListener(this);
  }

  public static void showDialog()
  {
    mInstance = new RemindResetStlyeDialog(TMSApplication.getApplicaionContext());
    ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).addView(mInstance, kg.f);
  }

  public void onClick(View paramView)
  {
    WindowManager localWindowManager2;
    if (paramView == this.mBtnEnterAndSet)
      localWindowManager2 = (WindowManager)this.mContext.getSystemService("window");
    try
    {
      localWindowManager2.removeView(mInstance);
      mInstance = null;
      label36: DeskAssistanceWindow.getInstance(this.mContext).changeToMaxDesk();
      DeskAssistanceExpandedWindow localDeskAssistanceExpandedWindow = DeskAssistanceExpandedWindow.getInstance();
      if (localDeskAssistanceExpandedWindow != null)
        localDeskAssistanceExpandedWindow.openSettingView();
      nd.a().a(26409);
      while (true)
      {
        return;
        if (paramView == this.mBtnNextTime)
        {
          nd.a().a(26410);
          WindowManager localWindowManager1 = (WindowManager)this.mContext.getSystemService("window");
          try
          {
            localWindowManager1.removeView(mInstance);
            mInstance = null;
          }
          catch (Exception localException1)
          {
          }
        }
      }
    }
    catch (Exception localException2)
    {
      break label36;
    }
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    WindowManager localWindowManager;
    if (paramInt == 4)
      localWindowManager = (WindowManager)this.mContext.getSystemService("window");
    try
    {
      localWindowManager.removeView(mInstance);
      mInstance = null;
      label33: for (boolean bool = true; ; bool = false)
        return bool;
    }
    catch (Exception localException)
    {
      break label33;
    }
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (!paramBoolean)
      requestFocus();
    super.onWindowFocusChanged(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.RemindResetStlyeDialog
 * JD-Core Version:    0.6.2
 */