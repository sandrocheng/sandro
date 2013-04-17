package com.tencent.tccsync;

import bl;
import ca;
import java.util.concurrent.atomic.AtomicInteger;

public class TccRemoteSyncMapPreCount
{
  static
  {
    bl.f().a(bl.b());
  }

  public native int getLocalChangeCount(ITccSyncDbAdapter paramITccSyncDbAdapter, String paramString, AtomicInteger paramAtomicInteger1, AtomicInteger paramAtomicInteger2, AtomicInteger paramAtomicInteger3);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tccsync.TccRemoteSyncMapPreCount
 * JD-Core Version:    0.6.2
 */