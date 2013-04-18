package com.keniu.security.main;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.jxphone.mosecurity.a.a;

final class p
  implements DialogInterface.OnClickListener
{
  p(MainActivity paramMainActivity)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    a.i(this.a, "menu_up");
    MainActivity.q(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.p
 * JD-Core Version:    0.6.2
 */