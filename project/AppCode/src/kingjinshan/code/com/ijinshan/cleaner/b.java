package com.ijinshan.cleaner;

import android.content.pm.PackageStats;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import com.ijinshan.cleaner.a.a;

final class b extends Handler
{
  b(CacheCleanerActivity paramCacheCleanerActivity)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    case 2:
    default:
    case 1:
    case 3:
    }
    while (true)
    {
      return;
      PackageStats localPackageStats = (PackageStats)paramMessage.getData().getParcelable("PackageStats");
      if ((localPackageStats != null) && (localPackageStats.cacheSize > 0L))
      {
        a locala = (a)paramMessage.obj;
        locala.a(localPackageStats.cacheSize);
        Message localMessage2 = this.a.h.obtainMessage(4);
        localMessage2.arg1 = 5;
        localMessage2.obj = locala;
        this.a.h.sendMessage(localMessage2);
        continue;
        Message localMessage1 = this.a.h.obtainMessage(3);
        this.a.h.sendMessage(localMessage1);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.cleaner.b
 * JD-Core Version:    0.6.2
 */