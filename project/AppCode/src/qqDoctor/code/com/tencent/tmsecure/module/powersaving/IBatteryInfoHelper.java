package com.tencent.tmsecure.module.powersaving;

public abstract interface IBatteryInfoHelper
{
  public abstract double getCallRemainHours();

  public abstract double getContinueRemainHours();

  public abstract double getMaxPowerUseHours();

  public abstract double getStayRemainHours();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.powersaving.IBatteryInfoHelper
 * JD-Core Version:    0.6.2
 */