package com.avast.android.generic.ui.widget;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.avast.android.generic.d.e;

class b
  implements CompoundButton.OnCheckedChangeListener
{
  b(CheckBoxRow paramCheckBoxRow)
  {
  }

  public void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (CheckBoxRow.b(this.a));
    while (true)
    {
      return;
      if ((this.a.e() != null) && (!CheckBoxRow.c(this.a)))
        this.a.e().a(this.a.g, paramBoolean);
      if (CheckBoxRow.d(this.a) != null)
        CheckBoxRow.d(this.a).a(this.a, paramBoolean);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.b
 * JD-Core Version:    0.6.2
 */