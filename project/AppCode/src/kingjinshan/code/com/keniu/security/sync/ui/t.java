package com.keniu.security.sync.ui;

import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import com.keniu.security.sync.k;

final class t
  implements CompoundButton.OnCheckedChangeListener
{
  t(SyncBackupActivity paramSyncBackupActivity)
  {
  }

  public final void onCheckedChanged(CompoundButton paramCompoundButton, boolean paramBoolean)
  {
    if (paramBoolean)
      if (!SyncBackupActivity.c(this.a).b("no_more_backup_tip"))
        SyncBackupActivity.c(this.a).a("no_more_backup_tip", Boolean.valueOf(true));
    while (true)
    {
      return;
      if (SyncBackupActivity.c(this.a).b("no_more_backup_tip"))
        SyncBackupActivity.c(this.a).a("no_more_backup_tip");
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.t
 * JD-Core Version:    0.6.2
 */