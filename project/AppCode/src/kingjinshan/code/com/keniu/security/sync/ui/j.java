package com.keniu.security.sync.ui;

import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;

final class j
  implements CompoundButton.OnCheckedChangeListener
{
  j(RegisterAct paramRegisterAct)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    RegisterAct.a(this.a).setEnabled(paramBoolean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.j
 * JD-Core Version:    0.6.2
 */