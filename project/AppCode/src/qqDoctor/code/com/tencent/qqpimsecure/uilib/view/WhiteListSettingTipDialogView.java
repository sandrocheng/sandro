package com.tencent.qqpimsecure.uilib.view;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.WindowManager;
import android.widget.LinearLayout;
import com.tencent.tmsecure.common.TMSApplication;
import ho;
import kg;

public class WhiteListSettingTipDialogView extends LinearLayout
{
  private static WhiteListSettingTipDialogView mInstance;

  private WhiteListSettingTipDialogView(Context paramContext)
  {
    super(paramContext);
    initView(paramContext);
  }

  private void initView(Context paramContext)
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramContext).inflate(2130903278, null);
    addView(localLinearLayout);
    ButtonView localButtonView1 = (ButtonView)localLinearLayout.findViewById(2131230756);
    ButtonView localButtonView2 = (ButtonView)localLinearLayout.findViewById(2131230757);
    localButtonView1.setOnClickListener(new WhiteListSettingTipDialogView.1(this, paramContext));
    localButtonView2.setOnClickListener(new WhiteListSettingTipDialogView.2(this, paramContext));
  }

  public static void showDialog()
  {
    mInstance = new WhiteListSettingTipDialogView(TMSApplication.getApplicaionContext());
    ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).addView(mInstance, kg.e);
    ho.a().cK();
  }

  public void onWindowFocusChanged(boolean paramBoolean)
  {
    if (!paramBoolean)
      requestFocus();
    super.onWindowFocusChanged(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.WhiteListSettingTipDialogView
 * JD-Core Version:    0.6.2
 */