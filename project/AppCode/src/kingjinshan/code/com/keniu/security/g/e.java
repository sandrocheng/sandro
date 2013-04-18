package com.keniu.security.g;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.keniu.security.f.t;
import com.keniu.security.util.ap;

final class e
  implements DialogInterface.OnClickListener
{
  e(a parama, t paramt)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if ((a.h(this.b) != null) && (a.h(this.b).isShowing()))
      a.h(this.b).dismiss();
    new i(this.b).a(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.g.e
 * JD-Core Version:    0.6.2
 */