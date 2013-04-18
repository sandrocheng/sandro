package com.keniu.security.sync.ui;

import android.os.Handler;
import android.os.Message;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.sync.l;

final class v extends Handler
{
  v(SyncBackupActivity paramSyncBackupActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case 1:
    case 14:
    case 9:
    case 10001:
    case -15:
    case 123:
    case 7:
    case 21:
    }
    while (true)
    {
      return;
      SyncBackupActivity localSyncBackupActivity2 = this.a;
      int[] arrayOfInt2 = this.a.a;
      int j = ((Integer)paramMessage.obj).intValue();
      arrayOfInt2[0] = j;
      SyncBackupActivity.a(localSyncBackupActivity2, j);
      if ((SyncBackupActivity.b(this.a)[1] != 0) && (SyncBackupActivity.g(this.a) > 0))
      {
        SyncBackupActivity.a(this.a, SyncBackupActivity.h(this.a));
      }
      else
      {
        SyncBackupActivity.b(this.a, SyncBackupActivity.h(this.a));
        continue;
        SyncBackupActivity localSyncBackupActivity1 = this.a;
        int[] arrayOfInt1 = this.a.a;
        int i = ((Integer)paramMessage.obj).intValue();
        arrayOfInt1[1] = i;
        SyncBackupActivity.b(localSyncBackupActivity1, i);
        SyncBackupActivity.b(this.a, SyncBackupActivity.h(this.a));
        continue;
        this.a.a = ((int[])paramMessage.obj);
        this.a.b();
        this.a.a();
        continue;
        l.a(this.a, 2131429525, 2131429472);
        continue;
        l.a(this.a, 2131429572);
        continue;
        l.a(this.a, 2131429525, 2131429525);
        continue;
        a.a(this.a, "synco", "11", "");
        l.a(this.a, 2131429567);
        continue;
        SyncBackupActivity.a(this.a, String.valueOf(paramMessage.obj));
        continue;
        this.a.a[2] = ((Integer)paramMessage.obj).intValue();
        this.a.a();
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.v
 * JD-Core Version:    0.6.2
 */