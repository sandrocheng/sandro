package com.keniu.security.sync.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.sync.k;
import com.keniu.security.sync.l;
import com.keniu.security.sync.r;

final class am
  implements View.OnClickListener
{
  am(SyncRestoreActivity paramSyncRestoreActivity)
  {
  }

  public final void onClick(View paramView)
  {
    if (r.a(SyncRestoreActivity.b(this.a)))
      l.a(this.a, 2131429544);
    while (true)
    {
      return;
      if ((SyncRestoreActivity.c(this.a).b("session_id")) || (SyncRestoreActivity.d(this.a) == 1))
      {
        a.a(this.a, "synco", "8", "0");
        SyncRestoreActivity.e(this.a);
      }
      else
      {
        a.a(this.a, "synco", "8", "1");
        this.a.startActivityForResult(new Intent(this.a, LoginAct.class), 15);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.am
 * JD-Core Version:    0.6.2
 */