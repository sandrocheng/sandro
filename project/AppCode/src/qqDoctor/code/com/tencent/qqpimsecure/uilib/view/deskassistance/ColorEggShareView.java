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
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;
import com.tencent.tmsecure.common.TMSApplication;
import kg;

public class ColorEggShareView extends LinearLayout
  implements View.OnKeyListener
{
  private static ColorEggShareView mInstance;
  private CheckBoxView mCheckBox;
  private Context mContext;

  public ColorEggShareView(Context paramContext, int paramInt, long paramLong, String paramString1, String paramString2)
  {
    super(paramContext);
    this.mContext = paramContext;
    initView(paramContext, paramInt, paramLong, paramString1, paramString2);
  }

  private void initView(Context paramContext, int paramInt, long paramLong, String paramString1, String paramString2)
  {
    LinearLayout localLinearLayout = (LinearLayout)LayoutInflater.from(paramContext).inflate(2130903126, null);
    addView(localLinearLayout);
    setFocusable(true);
    setFocusableInTouchMode(true);
    ((TextView)findViewById(2131230900)).setText(paramString2);
    ButtonView localButtonView1 = (ButtonView)localLinearLayout.findViewById(2131230756);
    ButtonView localButtonView2 = (ButtonView)localLinearLayout.findViewById(2131230757);
    this.mCheckBox = ((CheckBoxView)localLinearLayout.findViewById(2131230752));
    localButtonView1.setOnClickListener(new ColorEggShareView.1(this, paramString1, paramContext));
    localButtonView2.setOnClickListener(new ColorEggShareView.2(this, paramContext));
    setOnKeyListener(this);
  }

  public static void showDialog(int paramInt, long paramLong, String paramString1, String paramString2)
  {
    mInstance = new ColorEggShareView(TMSApplication.getApplicaionContext(), paramInt, paramLong, paramString1, paramString2);
    ((WindowManager)TMSApplication.getApplicaionContext().getSystemService("window")).addView(mInstance, kg.f);
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.deskassistance.ColorEggShareView
 * JD-Core Version:    0.6.2
 */