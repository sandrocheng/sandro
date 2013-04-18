package com.ijinshan.cleaner;

import android.content.pm.PackageStats;
import android.content.pm.e;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.ijinshan.cleaner.a.a;

final class m extends e
{
  private a c = null;
  private boolean d = false;

  m(CacheCleanerActivity paramCacheCleanerActivity, a parama, boolean paramBoolean)
  {
    this.c = parama;
    this.d = paramBoolean;
  }

  public final void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
  {
    if (CacheCleanerActivity.n(this.b));
    while (true)
    {
      return;
      Message localMessage1 = CacheCleanerActivity.o(this.b).obtainMessage(1);
      Bundle localBundle = new Bundle();
      localBundle.putParcelable("PackageStats", paramPackageStats);
      localMessage1.setData(localBundle);
      localMessage1.obj = this.c;
      CacheCleanerActivity.o(this.b).sendMessage(localMessage1);
      if (this.d)
      {
        Message localMessage2 = CacheCleanerActivity.o(this.b).obtainMessage(3);
        CacheCleanerActivity.o(this.b).sendMessage(localMessage2);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.m
 * JD-Core Version:    0.6.2
 */