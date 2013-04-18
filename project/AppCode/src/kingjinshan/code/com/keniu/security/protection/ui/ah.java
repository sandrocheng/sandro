package com.keniu.security.protection.ui;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;

final class ah
  implements DialogInterface.OnClickListener
{
  ah(Context paramContext)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    if (ag.c(this.a) == null)
      this.a.startActivity(new Intent(this.a, PreventTheftGuideActivity.class));
    while (true)
    {
      return;
      this.a.startActivity(new Intent(this.a, PreventTheftGuideECActivity.class));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.protection.ui.ah
 * JD-Core Version:    0.6.2
 */