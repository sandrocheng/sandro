package com.avast.android.mobilesecurity.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.avast.android.generic.d.e;

class p
  implements CompoundButton.OnCheckedChangeListener
{
  p(SmsCallButtons paramSmsCallButtons)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.a.performClick();
    if (this.a.e() != null)
      this.a.e().a(SmsCallButtons.a(this.a) + "SMS", paramBoolean);
    if (SmsCallButtons.b(this.a) != null)
      SmsCallButtons.b(this.a).a(SmsCallButtons.c(this.a), paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.p
 * JD-Core Version:    0.6.2
 */