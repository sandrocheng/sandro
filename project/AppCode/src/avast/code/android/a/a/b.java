package android.a.a;

import android.content.pm.PackageStats;
import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class b extends Binder
  implements a
{
  public b()
  {
    attachInterface(this, "android.content.pm.IPackageStatsObserver");
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    boolean bool1 = true;
    switch (paramInt1)
    {
    default:
      bool1 = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
      while (true)
      {
        return bool1;
        paramParcel2.writeString("android.content.pm.IPackageStatsObserver");
      }
    case 1:
    }
    paramParcel1.enforceInterface("android.content.pm.IPackageStatsObserver");
    PackageStats localPackageStats;
    if (paramParcel1.readInt() != 0)
    {
      localPackageStats = (PackageStats)PackageStats.CREATOR.createFromParcel(paramParcel1);
      label82: if (paramParcel1.readInt() == 0)
        break label110;
    }
    label110: for (boolean bool2 = bool1; ; bool2 = false)
    {
      a(localPackageStats, bool2);
      break;
      localPackageStats = null;
      break label82;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.a.a.b
 * JD-Core Version:    0.6.2
 */