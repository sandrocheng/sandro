package com.keniu.security.sync.ui;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.keniu.security.sync.c.d;
import com.keniu.security.sync.j;
import com.keniu.security.sync.k;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;

final class af
  implements DialogInterface.OnClickListener
{
  af(SyncRecordsAct paramSyncRecordsAct)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    SyncRecordsAct localSyncRecordsAct = this.a;
    String str;
    if (SyncRecordsAct.b(this.a) != null)
    {
      str = SyncRecordsAct.b(this.a);
      SyncRecordsAct.a(localSyncRecordsAct, str);
      if (paramInt != 0)
        break label155;
      d locald = new d(new j(this.a, (byte)0), this.a, SyncRecordsAct.d(this.a), SyncRecordsAct.e(this.a));
      String[] arrayOfString = new String[1];
      arrayOfString[0] = SyncRecordsAct.b(this.a);
      locald.execute(arrayOfString);
    }
    while (true)
    {
      return;
      str = "login#" + SyncRecordsAct.c(this.a).c("user_name") + "#" + SyncRecordsAct.c(this.a).c("pass_word");
      break;
      label155: if (paramInt == 1)
      {
        aq localaq = new aq(this.a, (byte)0);
        localaq.a(2131427865);
        localaq.b(2131429585);
        localaq.a(2131427864, new ag(this));
        localaq.b(2131428398, null);
        localaq.c().show();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.af
 * JD-Core Version:    0.6.2
 */