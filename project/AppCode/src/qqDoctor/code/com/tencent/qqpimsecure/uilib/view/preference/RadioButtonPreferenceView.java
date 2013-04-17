package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;

public class RadioButtonPreferenceView extends PreferenceView
{
  CheckBox mRadioButton;

  public RadioButtonPreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
  }

  public View createActionBody()
  {
    return this.mLayoutInflater.inflate(2130903218, null, false);
  }

  public boolean getCheck()
  {
    return this.mRadioButton.isChecked();
  }

  public CheckBox getRadioButton()
  {
    return this.mRadioButton;
  }

  protected void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.mRadioButton = ((CheckBox)paramView.findViewById(2131230876));
  }

  public void setCheck(boolean paramBoolean)
  {
    this.mRadioButton.setChecked(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.RadioButtonPreferenceView
 * JD-Core Version:    0.6.2
 */