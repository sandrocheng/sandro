package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

public abstract interface IPackageDataObserver extends IInterface
{
  public abstract void onRemoveCompleted(String paramString, boolean paramBoolean)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements IPackageDataObserver
  {
    private static final String DESCRIPTOR = "android.content.pm.IPackageDataObserver";
    static final int TRANSACTION_onRemoveCompleted = 1;

    public Stub()
    {
      attachInterface(this, "android.content.pm.IPackageDataObserver");
    }

    public static IPackageDataObserver asInterface(IBinder paramIBinder)
    {
      Object localObject;
      if (paramIBinder == null)
        localObject = null;
      while (true)
      {
        return localObject;
        IInterface localIInterface = paramIBinder.queryLocalInterface("android.content.pm.IPackageDataObserver");
        if ((localIInterface != null) && ((localIInterface instanceof IPackageDataObserver)))
          localObject = (IPackageDataObserver)localIInterface;
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
          paramParcel2.writeString("android.content.pm.IPackageDataObserver");
        }
      case 1:
      }
      paramParcel1.enforceInterface("android.content.pm.IPackageDataObserver");
      String str = paramParcel1.readString();
      if (paramParcel1.readInt() != 0);
      for (boolean bool2 = bool1; ; bool2 = false)
      {
        onRemoveCompleted(str, bool2);
        break;
      }
    }

    private static class Proxy
      implements IPackageDataObserver
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
        return "android.content.pm.IPackageDataObserver";
      }

      public void onRemoveCompleted(String paramString, boolean paramBoolean)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel = Parcel.obtain();
        try
        {
          localParcel.writeInterfaceToken("android.content.pm.IPackageDataObserver");
          localParcel.writeString(paramString);
          if (paramBoolean)
          {
            localParcel.writeInt(i);
            this.mRemote.transact(1, localParcel, null, 1);
            return;
          }
          i = 0;
        }
        finally
        {
          localParcel.recycle();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     android.content.pm.IPackageDataObserver
 * JD-Core Version:    0.6.2
 */