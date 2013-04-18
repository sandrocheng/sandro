package com.ijinshan.bootmanager.activity;

import android.content.pm.PackageStats;
import android.content.pm.e;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.ijinshan.bootmanager.b.a;

final class p extends e
{
  p(o paramo, a parama)
  {
  }

  public final void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
  {
    Message localMessage = new Message();
    localMessage.what = 6;
    localMessage.obj = this.b;
    Bundle localBundle = new Bundle();
    localBundle.putLong("package_size", paramPackageStats.codeSize + paramPackageStats.dataSize + paramPackageStats.cacheSize);
    localMessage.setData(localBundle);
    o.a(this.c).sendMessage(localMessage);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.bootmanager.activity.p
 * JD-Core Version:    0.6.2
 */