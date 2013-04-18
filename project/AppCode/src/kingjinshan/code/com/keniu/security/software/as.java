package com.keniu.security.software;

import android.content.pm.PackageStats;
import android.content.pm.e;

final class as extends e
{
  as(ar paramar, o paramo)
  {
  }

  public final void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
  {
    this.b.a(paramPackageStats.codeSize + paramPackageStats.dataSize + paramPackageStats.cacheSize);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.software.as
 * JD-Core Version:    0.6.2
 */