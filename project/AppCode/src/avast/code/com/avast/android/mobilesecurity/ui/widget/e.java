package com.avast.android.mobilesecurity.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;

class e
  implements CompoundButton.OnCheckedChangeListener
{
  e(ConnectionTypeButtons paramConnectionTypeButtons)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    synchronized (ConnectionTypeButtons.a(this.a))
    {
      if ((this.a.e() != null) && (!ConnectionTypeButtons.a(this.a).booleanValue()))
        this.a.e().a(ConnectionTypeButtons.f(this.a) + "Mobile", paramBoolean);
      if (ConnectionTypeButtons.c(this.a) != null)
        ConnectionTypeButtons.c(this.a).a(this.a, ConnectionTypeButtons.g(this.a).isChecked(), paramBoolean, ConnectionTypeButtons.e(this.a).isChecked());
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.e
 * JD-Core Version:    0.6.2
 */