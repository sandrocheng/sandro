package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.tencent.qqpimsecure.uilib.view.ButtonView;

public class ButtonBasePreferenceView extends PreferenceView
{
  private ButtonView mButton;

  public ButtonBasePreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
  }

  public View createActionBody()
  {
    return this.mLayoutInflater.inflate(2130903213, null, false);
  }

  public ButtonView getButton()
  {
    return this.mButton;
  }

  protected void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.mButton = ((ButtonView)paramView.findViewById(2131231257));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.ButtonBasePreferenceView
 * JD-Core Version:    0.6.2
 */