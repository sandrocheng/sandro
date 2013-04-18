package com.keniu.security.software;

import android.view.View;
import android.view.View.OnClickListener;
import android.widget.PopupWindow;

final class ao
  implements View.OnClickListener
{
  ao(ak paramak)
  {
  }

  public final void onClick(View paramView)
  {
    SoftwareManager2.a(this.a.b.c, new ah(this.a.b.c));
    if (SoftwareManager2.G(this.a.b.c) == 0)
      SoftwareManager2.e(this.a.b.c, 1);
    while (true)
    {
      SoftwareManager2.C(this.a.b.c).dismiss();
      SoftwareManager2.a(this.a.b.c, null);
      return;
      SoftwareManager2.e(this.a.b.c, 0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.ao
 * JD-Core Version:    0.6.2
 */