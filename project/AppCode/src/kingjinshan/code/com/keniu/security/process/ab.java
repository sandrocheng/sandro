package com.keniu.security.process;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.keniu.security.d.e;

final class ab
  implements View.OnClickListener
{
  ab(z paramz, e parame)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBox localCheckBox = (CheckBox)paramView;
    if (!this.a.a());
    for (boolean bool = true; ; bool = false)
    {
      localCheckBox.setChecked(bool);
      this.a.a(localCheckBox.isChecked());
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.ab
 * JD-Core Version:    0.6.2
 */