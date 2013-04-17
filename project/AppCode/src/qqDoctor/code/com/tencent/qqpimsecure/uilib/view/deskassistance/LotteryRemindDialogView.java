package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.tmsecure.common.TMSApplication;
import kg;
import lx;

public class LotteryRemindDialogView extends LinearLayout
{
  private static LotteryRemindDialogView mInstance;
  private static MinDeskAssistantWindow.onConfirmGetPrizeListener mListener;
  private static TextView mTextView;
  private lx mEntity = null;
  private int mKillCount;
  private long mRam;

  private LotteryRemindDialogView(Context paramContext, lx paramlx, int paramInt, long paramLong)
  {
    super(paramContext);
    this.mEntity = paramlx;
    this.mKillCount = paramInt;
    this.mRam = paramLong;
    initView(paramContext);
  }

  private void initView(Context paramContext)
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramContext).inflate(2130903233, null);
    mTextView = (TextView)localLinearLayout.findViewById(2131230900);
    addView(localLinearLayout);
    ButtonView localButtonView1 = (ButtonView)localLinearLayout.findViewById(2131230756);
    ButtonView localButtonView2 = (ButtonView)localLinearLayout.findViewById(2131230757);
    localButtonView1.setOnClickListener(new LotteryRemindDialogView.1(this, paramContext));
    localButtonView2.setOnClickListener(new LotteryRemindDialogView.2(this, paramContext));
  }

  public static void setTextMessage(String paramString)
  {
    mTextView.setText(paramString);
  }

  public static void showDialog(lx paramlx, int paramInt, long paramLong, MinDeskAssistantWindow.onConfirmGetPrizeListener paramonConfirmGetPrizeListener)
  {
    mInstance = new LotteryRemindDialogView(TMSApplication.getApplicaionContext(), paramlx, paramInt, paramLong);
    mListener = paramonConfirmGetPrizeListener;
    paramonConfirmGetPrizeListener.onConfirmStart();
    String str = paramlx.g;
    mTextView.setText(str);
    ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).addView(mInstance, kg.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.LotteryRemindDialogView
 * JD-Core Version:    0.6.2
 */