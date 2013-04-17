package com.tencent.tmsecure.module.optimize;

public abstract interface IAdvancedGovernorConfig
{
  public abstract int getDownThreshold();

  public abstract int getPowersaveBias();

  public abstract long getSamplingRate();

  public abstract long getSamplingRateMax();

  public abstract long getSamplingRateMin();

  public abstract int getUpThreshold();

  public abstract int ignoreNiceLoad();

  public abstract boolean setDownThreshold(int paramInt);

  public abstract void setIgnoreNiceLoad(int paramInt);

  public abstract boolean setPowersaveBias(int paramInt);

  public abstract boolean setSamplingRate(long paramLong);

  public abstract boolean setUpThreshold();
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.optimize.IAdvancedGovernorConfig
 * JD-Core Version:    0.6.2
 */