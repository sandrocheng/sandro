package android.content.pm;

import android.os.IInterface;

public abstract interface IPackageStatsObserver extends IInterface
{
  public abstract void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean);
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.IPackageStatsObserver
 * JD-Core Version:    0.6.2
 */