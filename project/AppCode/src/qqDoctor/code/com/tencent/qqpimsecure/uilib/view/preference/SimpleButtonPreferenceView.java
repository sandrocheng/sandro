package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

public class SimpleButtonPreferenceView extends BasePreferenceView
{
  ButtonView mButton;

  public SimpleButtonPreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
  }

  protected View createMainView()
  {
    View localView = LayoutInflater.from(getContext()).inflate(2130903192, null);
    LinearLayout localLinearLayout = (LinearLayout)localView.findViewById(2131231061);
    this.mButton = new ButtonView(getContext(), 2);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    localLayoutParams.weight = 1.0F;
    localLinearLayout.addView(this.mButton, localLayoutParams);
    return localView;
  }

  public void doClickEvent(int paramInt1, int paramInt2)
  {
  }

  public void doClickEvent(String paramString1, String paramString2)
  {
  }

  public ButtonView getButton()
  {
    return this.mButton;
  }

  protected void onBindView(View paramView)
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.SimpleButtonPreferenceView
 * JD-Core Version:    0.6.2
 */