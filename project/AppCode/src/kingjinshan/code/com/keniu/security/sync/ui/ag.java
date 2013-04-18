package com.keniu.security.sync.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.keniu.security.sync.c.c;

final class ag
  implements DialogInterface.OnClickListener
{
  ag(af paramaf)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    c localc = new c(this.a.a.a, this.a.a, SyncRecordsAct.d(this.a.a), SyncRecordsAct.e(this.a.a));
    String[] arrayOfString = new String[1];
    arrayOfString[0] = SyncRecordsAct.b(this.a.a);
    localc.execute(arrayOfString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ag
 * JD-Core Version:    0.6.2
 */