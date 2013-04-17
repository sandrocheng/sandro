package com.tencent.tmsecure.module.optimize;

import android.content.pm.PackageManager.NameNotFoundException;
import com.tencent.tmsecure.common.ManagerCreator;

public final class Proguard
{
  public final void callAllMethods()
  {
    OptimizeManager localOptimizeManager = (OptimizeManager)ManagerCreator.getManager(OptimizeManager.class);
    localOptimizeManager.getAllRunningProcess(false);
    try
    {
      localOptimizeManager.closeProcess(new String());
      IAutoBootHelper localIAutoBootHelper = localOptimizeManager.getAutoBootHelper();
      localIAutoBootHelper.getAllAutoBootApps();
      localIAutoBootHelper.setAutoBootEnable(null, false);
      IMemoryHelper localIMemoryHelper = localOptimizeManager.getMemoryHelper();
      localIMemoryHelper.clearAllCacheData();
      localIMemoryHelper.getAllAppPackageStats(null);
      localIMemoryHelper.getAppPackageStats(null);
      localIMemoryHelper.getFreeMemery();
      localIMemoryHelper.getTotalMemery();
      ICpuHelper localICpuHelper = localOptimizeManager.getCpuHelper();
      localICpuHelper.getCpuInfoMaxFreq();
      localICpuHelper.getScalingAvaliableGovernors();
      localICpuHelper.getScalingAvaliableFrequencies();
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        localNameNotFoundException.printStackTrace();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.optimize.Proguard
 * JD-Core Version:    0.6.2
 */