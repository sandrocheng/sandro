package com.keniu.security.process;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.jxphone.mosecurity.b.c;
import com.keniu.security.d.e;

final class p
  implements View.OnClickListener
{
  p(o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBox localCheckBox = (CheckBox)paramView;
    int i = ((Integer)localCheckBox.getTag()).intValue();
    e locale = this.a.b(i);
    locale.a(localCheckBox.isChecked());
    ProcessManagerActivity.i(this.a.c).a(locale.b());
    ProcessManagerActivity.i(this.a.c).a(locale);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.process.p
 * JD-Core Version:    0.6.2
 */