package com.keniu.security.sync.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.keniu.security.sync.k;

final class ap
  implements AdapterView.OnItemClickListener
{
  ap(SyncRestoreHistoryAct paramSyncRestoreHistoryAct)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SyncRestoreHistoryAct.a(this.a, paramInt);
    if (SyncRestoreHistoryAct.a(this.a).b("session_id"))
      this.a.a();
    while (true)
    {
      return;
      this.a.startActivityForResult(new Intent(this.a, LoginAct.class), 15);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ap
 * JD-Core Version:    0.6.2
 */