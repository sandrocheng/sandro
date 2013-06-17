package com.antivirus.wipe;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CheckBox;
import java.util.ArrayList;
import java.util.HashMap;

class w
  implements View.OnClickListener
{
  w(b paramb, CheckBox paramCheckBox, String paramString)
  {
  }

  public void onClick(View paramView)
  {
    if (this.a.isChecked())
    {
      b.d(this.c).remove(b.r(this.c).get(this.b));
      b.u(this.c);
      if (b.v(this.c) == -1 + b.n(this.c).size())
      {
        b.a(this.c, false);
        b.w(this.c).setChecked(false);
      }
      this.a.setChecked(false);
    }
    while (true)
    {
      b.l(this.c);
      return;
      b.d(this.c).add(b.r(this.c).get(this.b));
      this.a.setChecked(true);
      b.x(this.c);
      if (b.v(this.c) == b.n(this.c).size())
      {
        b.a(this.c, false);
        b.w(this.c).setChecked(true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.wipe.w
 * JD-Core Version:    0.6.2
 */