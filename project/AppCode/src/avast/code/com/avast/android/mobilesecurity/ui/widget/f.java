package com.avast.android.mobilesecurity.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;
import com.avast.android.generic.d.e;

class f
  implements CompoundButton.OnCheckedChangeListener
{
  f(ConnectionTypeButtons paramConnectionTypeButtons)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    synchronized (ConnectionTypeButtons.a(this.a))
    {
      if ((this.a.e() != null) && (!ConnectionTypeButtons.a(this.a).booleanValue()))
        this.a.e().a(ConnectionTypeButtons.h(this.a) + "Roaming", paramBoolean);
      if (ConnectionTypeButtons.c(this.a) != null)
        ConnectionTypeButtons.c(this.a).a(this.a, ConnectionTypeButtons.g(this.a).isChecked(), ConnectionTypeButtons.d(this.a).isChecked(), paramBoolean);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.f
 * JD-Core Version:    0.6.2
 */