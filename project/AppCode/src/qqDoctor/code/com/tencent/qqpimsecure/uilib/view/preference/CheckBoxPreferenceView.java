package com.tencent.qqpimsecure.uilib.view.preference;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import com.tencent.qqpimsecure.uilib.view.CheckBoxView;

public class CheckBoxPreferenceView extends PreferenceView
{
  private CheckBoxView checkBox;
  private CheckBoxView checkBoxRadio;
  private CheckBoxView checkBoxSleek;
  private CheckBoxView checkBoxTick;
  private int checkboxType;
  private boolean isChecked;
  private boolean isOnCheckNoClick;

  public CheckBoxPreferenceView(Context paramContext, CharSequence paramCharSequence, int paramInt)
  {
    super(paramContext, paramCharSequence);
    this.checkboxType = paramInt;
    initCheckBoxStation();
  }

  private void initCheckBoxStation()
  {
    if (this.checkboxType == 0)
    {
      this.checkBoxSleek.setVisibility(0);
      this.checkBoxTick.setVisibility(8);
      this.checkBoxRadio.setVisibility(8);
      this.checkBox = this.checkBoxSleek;
    }
    while (true)
    {
      this.checkBoxSleek.setClickable(false);
      this.checkBoxTick.setClickable(false);
      this.checkBoxRadio.setClickable(false);
      this.checkBox.setClickable(false);
      return;
      if (this.checkboxType == 1)
      {
        this.checkBoxTick.setVisibility(0);
        this.checkBoxSleek.setVisibility(8);
        this.checkBoxRadio.setVisibility(8);
        this.checkBox = this.checkBoxTick;
      }
      else if (this.checkboxType == 2)
      {
        this.checkBoxRadio.setVisibility(0);
        this.checkBoxTick.setVisibility(8);
        this.checkBoxSleek.setVisibility(8);
        this.checkBox = this.checkBoxRadio;
      }
    }
  }

  public void clickCheckeBox()
  {
    this.checkBox.onClick(this.checkBox);
  }

  public void clickCheckeBox(CheckBoxView paramCheckBoxView)
  {
    paramCheckBoxView.onClick(paramCheckBoxView);
  }

  public View createActionBody()
  {
    return this.mLayoutInflater.inflate(2130903215, null, false);
  }

  public void doClickEvent()
  {
    super.doClickEvent();
    this.checkBox.onClick(this.checkBox);
  }

  public void doClickEvent(int paramInt1, int paramInt2)
  {
    if ((isEnabled()) && ((!this.isOnCheckNoClick) || (!isChecked())))
    {
      super.doClickEvent(paramInt1, paramInt2);
      if (this.isChecked)
        break label53;
    }
    label53: for (boolean bool = true; ; bool = false)
    {
      this.isChecked = bool;
      this.checkBox.onClick(this.checkBox);
      return;
    }
  }

  public void doClickEventNoAnimation(int paramInt1, int paramInt2)
  {
    if ((isEnabled()) && ((!this.isOnCheckNoClick) || (!isChecked())))
    {
      super.doClickEvent(paramInt1, paramInt2);
      if (this.isChecked)
        break label53;
    }
    label53: for (boolean bool = true; ; bool = false)
    {
      this.isChecked = bool;
      this.checkBox.setChecked(this.isChecked);
      return;
    }
  }

  public CheckBoxView getCheckBox()
  {
    return this.checkBox;
  }

  public boolean isChecked()
  {
    return this.isChecked;
  }

  public void onBindView(View paramView)
  {
    super.onBindView(paramView);
    this.checkBoxSleek = ((CheckBoxView)paramView.findViewById(2131231258));
    this.checkBoxTick = ((CheckBoxView)paramView.findViewById(2131231259));
    this.checkBoxRadio = ((CheckBoxView)paramView.findViewById(2131231260));
  }

  public void setCheckBoxClickListener(OnCheckBoxClickListener paramOnCheckBoxClickListener)
  {
    this.checkBox.setClickListener(new CheckBoxPreferenceView.1(this, paramOnCheckBoxClickListener));
  }

  public void setCheckBoxClickable(boolean paramBoolean)
  {
    this.checkBox.setFocusable(paramBoolean);
    this.checkBox.setClickable(paramBoolean);
  }

  public void setOnCheckedNoClick()
  {
    this.isOnCheckNoClick = true;
  }

  public static abstract interface OnCheckBoxClickListener
  {
    public abstract void onCheckBoxClick(BasePreferenceView paramBasePreferenceView);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.qqpimsecure.uilib.view.preference.CheckBoxPreferenceView
 * JD-Core Version:    0.6.2
 */