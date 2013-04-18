package com.keniu.security.software;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.util.List;

final class w
  implements DialogInterface.OnClickListener
{
  w(SoftwareManager2 paramSoftwareManager2, o paramo, List paramList)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    String str = this.a.a();
    ((ag)this.b.get(paramInt)).a(str);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.w
 * JD-Core Version:    0.6.2
 */