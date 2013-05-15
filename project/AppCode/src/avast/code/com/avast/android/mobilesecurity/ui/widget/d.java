package com.avast.android.mobilesecurity.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.ToggleButton;
import com.avast.android.generic.d.e;

class d
  implements CompoundButton.OnCheckedChangeListener
{
  d(ConnectionTypeButtons paramConnectionTypeButtons)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    synchronized (ConnectionTypeButtons.a(this.a))
    {
      if ((this.a.e() != null) && (!ConnectionTypeButtons.a(this.a).booleanValue()))
        this.a.e().a(ConnectionTypeButtons.b(this.a) + "Wifi", paramBoolean);
      if (ConnectionTypeButtons.c(this.a) != null)
        ConnectionTypeButtons.c(this.a).a(this.a, paramBoolean, ConnectionTypeButtons.d(this.a).isChecked(), ConnectionTypeButtons.e(this.a).isChecked());
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.widget.d
 * JD-Core Version:    0.6.2
 */