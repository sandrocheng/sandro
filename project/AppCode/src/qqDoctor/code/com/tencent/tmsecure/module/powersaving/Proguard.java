package com.tencent.tmsecure.module.powersaving;

import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    PowerSavingManager localPowerSavingManager = (PowerSavingManager)ManagerCreator.getManager(PowerSavingManager.class);
    localPowerSavingManager.setPowerSavingConfig(null, false);
    IBatteryInfoHelper localIBatteryInfoHelper = localPowerSavingManager.getBatteryInfoHelper();
    localIBatteryInfoHelper.getMaxPowerUseHours();
    localIBatteryInfoHelper.getCallRemainHours();
    localIBatteryInfoHelper.getContinueRemainHours();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.powersaving.Proguard
 * JD-Core Version:    0.6.2
 */