package com.keniu.security.traffic;

import cn.com.wali.zft.ZftPluginCallBack;
import cn.com.wali.zft.ZftPluginCallBack.SyncStatus;
import java.io.PrintStream;

final class cr
  implements ZftPluginCallBack
{
  public final void Sync_End()
  {
    System.out.println("Sync_End");
  }

  public final void Sync_Status(ZftPluginCallBack.SyncStatus paramSyncStatus)
  {
  }

  public final void Sync_Timeout()
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.cr
 * JD-Core Version:    0.6.2
 */