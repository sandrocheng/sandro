package com.avast.android.mobilesecurity.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.avast.android.generic.d.e;

class q
  implements CompoundButton.OnCheckedChangeListener
{
  q(SmsCallButtons paramSmsCallButtons)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    this.a.performClick();
    if (this.a.e() == null);
    while (true)
    {
      return;
      this.a.e().a(SmsCallButtons.d(this.a) + "Call", paramBoolean);
      if (SmsCallButtons.b(this.a) != null)
        SmsCallButtons.b(this.a).a(SmsCallButtons.e(this.a), paramBoolean);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.q
 * JD-Core Version:    0.6.2
 */