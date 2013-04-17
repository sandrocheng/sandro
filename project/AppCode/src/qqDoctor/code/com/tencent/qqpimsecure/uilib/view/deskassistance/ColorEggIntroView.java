package com.tencent.qqpimsecure.uilib.view.deskassistance;

import android.content.Context;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnKeyListener;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.qqpimsecure.uilib.view.ButtonView;
import com.tencent.tmsecure.common.TMSApplication;
import kg;

public class ColorEggIntroView extends LinearLayout
  implements View.OnKeyListener
{
  private static ColorEggIntroView mInstance;

  public ColorEggIntroView(Context paramContext, String paramString1, String paramString2, int paramInt, long paramLong)
  {
    super(paramContext);
    initView(paramContext, paramString1, paramString2, paramInt, paramLong);
  }

  private void initView(Context paramContext, String paramString1, String paramString2, int paramInt, long paramLong)
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramContext).inflate(2130903117, null);
    addView(localLinearLayout);
    setFocusable(true);
    setFocusableInTouchMode(true);
    ((TextView)findViewById(2131230900)).setText(paramString2);
    ButtonView localButtonView1 = (ButtonView)localLinearLayout.findViewById(2131230901);
    ButtonView localButtonView2 = (ButtonView)localLinearLayout.findViewById(2131230902);
    if (paramString1 != null)
      localButtonView1.setOnClickListener(new ColorEggIntroView.1(this, paramString1, paramContext));
    localButtonView2.setOnClickListener(new ColorEggIntroView.2(this, paramContext));
    setOnKeyListener(this);
  }

  public static void showDialog(String paramString1, String paramString2, int paramInt, long paramLong)
  {
    mInstance = new ColorEggIntroView(TMSApplication.getApplicaionContext(), paramString1, paramString2, paramInt, paramLong);
    ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).addView(mInstance, kg.f);
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggIntroView
 * JD-Core Version:    0.6.2
 */