package com.tencent.tmsecure.module.urlcheck;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    UrlCheckManager localUrlCheckManager = (UrlCheckManager)ManagerCreator.getManager(UrlCheckManager.class);
    localUrlCheckManager.checkUrl(null);
    localUrlCheckManager.checkUrlEx(null);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.urlcheck.Proguard
 * JD-Core Version:    0.6.2
 */