package com.avast.android.generic.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.avast.android.generic.d.e;

class aa
  implements CompoundButton.OnCheckedChangeListener
{
  aa(SwitchRow paramSwitchRow)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (SwitchRow.b(this.a));
    while (true)
    {
      return;
      if ((this.a.e() != null) && (!SwitchRow.c(this.a)))
        this.a.e().a(this.a.g, paramBoolean);
      if (SwitchRow.d(this.a) != null)
        SwitchRow.d(this.a).a(this.a, paramBoolean);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.aa
 * JD-Core Version:    0.6.2
 */