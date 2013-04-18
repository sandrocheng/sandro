package com.keniu.security.sync.ui;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class ab
  implements AdapterView.OnItemClickListener
{
  ab(SyncLocalAct paramSyncLocalAct)
  {
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SyncLocalAct.a(this.a, paramInt);
    SyncLocalAct localSyncLocalAct = this.a;
    if (SyncLocalAct.a(this.a) == 0);
    for (Object localObject = SyncBackupActivity.class; ; localObject = SyncRestoreActivity.class)
    {
      Intent localIntent = new Intent(localSyncLocalAct, (Class)localObject);
      localIntent.putExtra("backup_type", 1);
      this.a.startActivity(localIntent);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ab
 * JD-Core Version:    0.6.2
 */