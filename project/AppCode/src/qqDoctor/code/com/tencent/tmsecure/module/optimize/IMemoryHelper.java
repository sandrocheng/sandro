package com.tencent.tmsecure.module.optimize;

import android.content.pm.PackageStats;
import android.os.Debug.MemoryInfo;
import java.util.ArrayList;
import java.util.List;

public abstract interface IMemoryHelper
{
  public abstract boolean clearAllCacheData();

  public abstract ArrayList<PackageStats> getAllAppPackageStats(List<String> paramList);

  public abstract PackageStats getAppPackageStats(String paramString);

  public abstract long getFreeMemery();

  public abstract MemoryInfo[] getRamSize(int[] paramArrayOfInt);

  public abstract MemoryInfo[] getRamSize(String[] paramArrayOfString);

  public abstract long getTotalMemery();

  public static final class MemoryInfo
  {
    public Debug.MemoryInfo mInfo;
    public int mPid;
    public String mPkg;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.optimize.IMemoryHelper
 * JD-Core Version:    0.6.2
 */