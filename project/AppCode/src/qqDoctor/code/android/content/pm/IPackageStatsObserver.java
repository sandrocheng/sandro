package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;

public abstract interface IPackageStatsObserver extends IInterface
{
  public abstract void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IPackageStatsObserver
  {
    private static final String DESCRIPTOR = "android.content.pm.IPackageStatsObserver";
    static final int TRANSACTION_onGetStatsCompleted = 1;

    public Stub()
    {
      attachInterface(this, "android.content.pm.IPackageStatsObserver");
    }

    public static IPackageStatsObserver asInterface(IBinder paramIBinder)
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
          localObject = new Proxy(paramIBinder);
      }
    }

    public IBinder asBinder()
    {
      return this;
    }

    public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
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
        onGetStatsCompleted(localPackageStats, bool2);
        break;
        localPackageStats = null;
        break label82;
      }
    }

    private static class Proxy
      implements IPackageStatsObserver
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public String getInterfaceDescriptor()
      {
        return "android.content.pm.IPackageStatsObserver";
      }

      public void onGetStatsCompleted(PackageStats paramPackageStats, boolean paramBoolean)
        throws RemoteException
      {
        int i = 1;
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
              break label85;
              localParcel.writeInt(i);
              this.mRemote.transact(1, localParcel, null, 1);
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
          label85: 
          while (!paramBoolean)
          {
            i = 0;
            break;
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.content.pm.IPackageStatsObserver
 * JD-Core Version:    0.6.2
 */