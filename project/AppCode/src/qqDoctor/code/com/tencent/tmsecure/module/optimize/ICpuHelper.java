package com.tencent.tmsecure.module.optimize;

public abstract interface ICpuHelper
{
  public abstract int getAvailableCpus();

  public abstract int getCpuInfoMaxFreq();

  public abstract int getCpuInfoMinFreq();

  public abstract int getKernelMax();

  public abstract String[] getOnlineCpus();

  public abstract int[] getScalingAvaliableFrequencies();

  public abstract String[] getScalingAvaliableGovernors();

  public abstract int getScalingCurFreq();

  public abstract String getScalingGovernor();

  public abstract int getScalingMaxFreq();

  public abstract int getScalingMinFreq();

  public abstract void setScalingFreq(int paramInt)
    throws IllegalArgumentException;

  public abstract void setScalingGovernor(String paramString)
    throws IllegalArgumentException;

  public abstract void setScalingMaxFreq(int paramInt)
    throws IllegalArgumentException;

  public abstract void setScalingMinFreq(int paramInt)
    throws IllegalArgumentException;
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.optimize.ICpuHelper
 * JD-Core Version:    0.6.2
 */