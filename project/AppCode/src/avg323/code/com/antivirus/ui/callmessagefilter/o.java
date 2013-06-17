package com.antivirus.ui.callmessagefilter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;

class o extends q
{
  private View c;

  o(j paramj, View paramView, CheckBox[] paramArrayOfCheckBox)
  {
    super(paramj, "call_message_blocker_rejected_with_sms", paramArrayOfCheckBox);
    this.c = paramView;
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    super.onCheckedChanged(paramCompoundButton, paramBoolean);
    View localView = this.c;
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.ui.callmessagefilter.o
 * JD-Core Version:    0.6.2
 */