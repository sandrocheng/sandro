package com.keniu.security.main.a;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import java.io.File;

final class e
  implements DialogInterface.OnClickListener
{
  e(d paramd, Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (!new File(d.b).exists())
      d.a(this.b, this.a);
    while (true)
    {
      return;
      d.c(this.a);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.main.a.e
 * JD-Core Version:    0.6.2
 */