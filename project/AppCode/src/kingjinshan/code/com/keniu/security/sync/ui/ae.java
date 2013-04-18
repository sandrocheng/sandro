package com.keniu.security.sync.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import java.util.List;

final class ae
  implements AdapterView.OnItemClickListener
{
  ae(SyncRecordsAct paramSyncRecordsAct)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SyncRecordsAct.a(this.a, SyncRecordsAct.a(this.a).size() - paramInt - 1);
    this.a.showDialog(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ae
 * JD-Core Version:    0.6.2
 */