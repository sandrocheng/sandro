package com.avast.android.mobilesecurity.app.filter;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.avast.android.generic.ad;
import com.avast.android.mobilesecurity.t;

class v
  implements DialogInterface.OnClickListener
{
  v(LGWarningDialog paramLGWarningDialog, Context paramContext)
  {
  }

  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    t localt = (t)ad.a(this.a, t.class);
    localt.a(LGWarningDialog.a(), true);
    localt.b();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.filter.v
 * JD-Core Version:    0.6.2
 */