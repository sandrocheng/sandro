package com.tencent.tmsecure.module.applist;

import QQPIM.SoftListType;
import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    ((AppListManager)ManagerCreator.getManager(AppListManager.class)).contains(null, SoftListType.BLACKLIST_ROM);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.applist.Proguard
 * JD-Core Version:    0.6.2
 */