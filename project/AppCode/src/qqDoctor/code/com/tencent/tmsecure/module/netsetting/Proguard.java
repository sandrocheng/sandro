package com.tencent.tmsecure.module.netsetting;

import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.exception.OperationSecurityException;

public final class Proguard
{
  public final void callAllMethods()
  {
    NetSettingManager localNetSettingManager = (NetSettingManager)ManagerCreator.getManager(NetSettingManager.class);
    try
    {
      localNetSettingManager.getApnState();
      localNetSettingManager.getAPNType(null);
    }
    catch (OperationSecurityException localOperationSecurityException2)
    {
      try
      {
        localNetSettingManager.getCurUsedApn();
        localNetSettingManager.getMobileDataConnectivity();
        localNetSettingManager.setMobileDataConnectivity(false);
        localNetSettingManager.isMobileDataConnectivityActive();
        localNetSettingManager.isWifiActive();
      }
      catch (OperationSecurityException localOperationSecurityException2)
      {
        try
        {
          while (true)
          {
            localNetSettingManager.switchTo(0);
            return;
            localOperationSecurityException1 = localOperationSecurityException1;
            localOperationSecurityException1.printStackTrace();
          }
          localOperationSecurityException2 = localOperationSecurityException2;
          localOperationSecurityException2.printStackTrace();
        }
        catch (OperationSecurityException localOperationSecurityException3)
        {
          while (true)
            localOperationSecurityException3.printStackTrace();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.netsetting.Proguard
 * JD-Core Version:    0.6.2
 */