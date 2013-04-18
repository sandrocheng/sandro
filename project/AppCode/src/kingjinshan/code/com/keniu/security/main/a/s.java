package com.keniu.security.main.a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.ijinshan.kinghelper.firewall.dd;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.main.MainActivity;

final class s
  implements DialogInterface.OnClickListener
{
  s(q paramq, Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    dd.k(true);
    a.a(this.a, true);
    MainActivity.b(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.s
 * JD-Core Version:    0.6.2
 */