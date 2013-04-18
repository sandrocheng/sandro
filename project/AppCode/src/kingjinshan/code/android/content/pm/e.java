package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class e extends Binder
  implements IPackageStatsObserver
{
  static final int a = 1;
  private static final String b = "android.content.pm.IPackageStatsObserver";

  public e()
  {
    attachInterface(this, "android.content.pm.IPackageStatsObserver");
  }

  private static IPackageStatsObserver a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.content.pm.IPackageStatsObserver");
      if ((localIInterface != null) && ((localIInterface instanceof IPackageStatsObserver)))
        localObject = (IPackageStatsObserver)localIInterface;
      else
        localObject = new f(paramIBinder);
    }
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    boolean bool2;
    switch (paramInt1)
    {
    default:
    case 1598968902:
      for (bool2 = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2); ; bool2 = true)
      {
        return bool2;
        paramParcel2.writeString("android.content.pm.IPackageStatsObserver");
      }
    case 1:
    }
    paramParcel1.enforceInterface("android.content.pm.IPackageStatsObserver");
    PackageStats localPackageStats;
    if (paramParcel1.readInt() != 0)
    {
      localPackageStats = (PackageStats)PackageStats.CREATOR.createFromParcel(paramParcel1);
      label81: if (paramParcel1.readInt() == 0)
        break label111;
    }
    label111: for (boolean bool1 = true; ; bool1 = false)
    {
      onGetStatsCompleted(localPackageStats, bool1);
      bool2 = true;
      break;
      localPackageStats = null;
      break label81;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.e
 * JD-Core Version:    0.6.2
 */