import com.tencent.tmsecure.module.optimize.ICpuHelper;

public final class bxd
  implements ICpuHelper
{
  private ICpuHelper a;

  public bxd(ICpuHelper paramICpuHelper)
  {
    this.a = paramICpuHelper;
  }

  public final int getAvailableCpus()
  {
    return 1;
  }

  public final int getCpuInfoMaxFreq()
  {
    return this.a.getCpuInfoMaxFreq();
  }

  public final int getCpuInfoMinFreq()
  {
    return this.a.getCpuInfoMinFreq();
  }

  public final int getKernelMax()
  {
    return this.a.getKernelMax();
  }

  public final String[] getOnlineCpus()
  {
    return this.a.getOnlineCpus();
  }

  public final int[] getScalingAvaliableFrequencies()
  {
    return this.a.getScalingAvaliableFrequencies();
  }

  public final String[] getScalingAvaliableGovernors()
  {
    return this.a.getScalingAvaliableGovernors();
  }

  public final int getScalingCurFreq()
  {
    return this.a.getScalingCurFreq();
  }

  public final String getScalingGovernor()
  {
    return this.a.getScalingGovernor();
  }

  public final int getScalingMaxFreq()
  {
    return this.a.getScalingMaxFreq();
  }

  public final int getScalingMinFreq()
  {
    return this.a.getScalingMinFreq();
  }

  public final void setScalingFreq(int paramInt)
    throws IllegalArgumentException
  {
  }

  public final void setScalingGovernor(String paramString)
    throws IllegalArgumentException
  {
  }

  public final void setScalingMaxFreq(int paramInt)
    throws IllegalArgumentException
  {
  }

  public final void setScalingMinFreq(int paramInt)
    throws IllegalArgumentException
  {
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bxd
 * JD-Core Version:    0.6.2
 */