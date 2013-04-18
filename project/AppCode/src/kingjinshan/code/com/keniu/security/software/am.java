package com.keniu.security.software;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

final class am
  implements View.OnClickListener
{
  am(ak paramak)
  {
  }

  public final void onClick(View paramView)
  {
    SoftwareManager2.a(this.a.b.c, new ai(this.a.b.c));
    if (SoftwareManager2.E(this.a.b.c) == 0)
      SoftwareManager2.c(this.a.b.c, 1);
    while (true)
    {
      SoftwareManager2.C(this.a.b.c).dismiss();
      SoftwareManager2.a(this.a.b.c, null);
      return;
      SoftwareManager2.c(this.a.b.c, 0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.am
 * JD-Core Version:    0.6.2
 */