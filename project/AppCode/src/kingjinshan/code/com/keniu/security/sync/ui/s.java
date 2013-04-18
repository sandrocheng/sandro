package com.keniu.security.sync.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;

final class s
  implements View.OnClickListener
{
  s(SyncBackupActivity paramSyncBackupActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (r.a(SyncBackupActivity.b(this.a)))
      l.a(this.a, 2131429543);
    while (true)
    {
      return;
      if ((SyncBackupActivity.c(this.a).b("session_id")) || (SyncBackupActivity.d(this.a) == 1))
      {
        a.a(this.a, "synco", "7", "0");
        SyncBackupActivity.e(this.a);
      }
      else
      {
        a.a(this.a, "synco", "7", "1");
        this.a.startActivityForResult(new Intent(this.a, LoginAct.class), 15);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.s
 * JD-Core Version:    0.6.2
 */