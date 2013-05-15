package com.avast.android.mobilesecurity.app.manager.a;

import android.content.pm.PackageStats;

class c extends android.a.a.b
{
  c(b paramb, d paramd)
  {
  }

  public void a(PackageStats paramPackageStats, boolean paramBoolean)
  {
    this.a.a = (paramPackageStats.codeSize + paramPackageStats.cacheSize + paramPackageStats.dataSize);
    synchronized (this.a)
    {
      this.a.notifyAll();
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.manager.a.c
 * JD-Core Version:    0.6.2
 */