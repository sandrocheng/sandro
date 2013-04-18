package com.keniu.security.software;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import com.keniu.security.d.a;
import java.util.List;

final class l
  implements View.OnClickListener
{
  l(k paramk)
  {
  }

  public final void onClick(View paramView)
  {
    CheckBox localCheckBox = (CheckBox)paramView;
    ((a)this.a.a.get(((Integer)localCheckBox.getTag()).intValue())).b(localCheckBox.isChecked());
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.l
 * JD-Core Version:    0.6.2
 */