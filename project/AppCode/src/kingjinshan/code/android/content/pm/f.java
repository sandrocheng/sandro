package android.content.pm;

import android.os.IBinder;
import android.os.Parcel;

final class f
  implements IPackageStatsObserver
{
  private IBinder a;

  f(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  private static String a()
  {
    return "android.content.pm.IPackageStatsObserver";
  }

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
  {
    Parcel localParcel = Parcel.obtain();
    while (true)
    {
      try
      {
        localParcel.writeInterfaceToken("android.content.pm.IPackageStatsObserver");
        if (paramPackageStats != null)
        {
          localParcel.writeInt(1);
          paramPackageStats.writeToParcel(localParcel, 0);
          break label76;
          localParcel.writeInt(i);
          this.a.transact(1, localParcel, null, 1);
        }
        else
        {
          localParcel.writeInt(0);
        }
      }
      finally
      {
        localParcel.recycle();
      }
      label76: 
      while (!paramBoolean)
      {
        i = 0;
        break;
      }
      int i = 1;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.f
 * JD-Core Version:    0.6.2
 */