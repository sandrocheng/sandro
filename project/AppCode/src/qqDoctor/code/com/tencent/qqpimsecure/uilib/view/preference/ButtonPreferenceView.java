package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;

public class ButtonPreferenceView extends PreferenceView
{
  private Button mButton;

  public ButtonPreferenceView(Context paramContext, CharSequence paramCharSequence)
  {
    super(paramContext, paramCharSequence);
  }

  public View createActionBody()
  {
    return this.mLayoutInflater.inflate(2130903214, null, false);
  }

  protected void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.mButton = ((Button)paramView.findViewById(2131231257));
  }

  public void setButtonStyle(Drawable paramDrawable)
  {
    this.mButton.setBackgroundDrawable(paramDrawable);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.ButtonPreferenceView
 * JD-Core Version:    0.6.2
 */