package com.keniu.security.sync.ui;

import android.os.Handler;
import android.os.Message;
import android.widget.ListView;
import java.util.List;

final class ah extends Handler
{
  ah(SyncRecordsAct paramSyncRecordsAct)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
    case 0:
    case -1:
    case 7:
    }
    while (true)
    {
      return;
      SyncRecordsAct.f(this.a);
      this.a.a(19);
      SyncRecordsAct.a(this.a).remove(SyncRecordsAct.a(this.a).size() - SyncRecordsAct.e(this.a) - 1);
      SyncRecordsAct.h(this.a).setAdapter(SyncRecordsAct.g(this.a));
      continue;
      this.a.a(20);
      continue;
      SyncRecordsAct.a(this.a, String.valueOf(paramMessage.obj));
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.ui.ah
 * JD-Core Version:    0.6.2
 */