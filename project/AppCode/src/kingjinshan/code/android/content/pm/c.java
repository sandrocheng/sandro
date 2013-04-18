package android.content.pm;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class c extends Binder
  implements IPackageMoveObserver
{
  static final int a = 1;
  private static final String b = "android.content.pm.IPackageMoveObserver";

  public c()
  {
    attachInterface(this, "android.content.pm.IPackageMoveObserver");
  }

  private static IPackageMoveObserver a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.content.pm.IPackageMoveObserver");
      if ((localIInterface != null) && ((localIInterface instanceof IPackageMoveObserver)))
        localObject = (IPackageMoveObserver)localIInterface;
      else
        localObject = new d(paramIBinder);
    }
  }

  public IBinder asBinder()
  {
    return this;
  }

  public boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
  {
    boolean bool;
    switch (paramInt1)
    {
    default:
      bool = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
    case 1:
    }
    while (true)
    {
      return bool;
      paramParcel2.writeString("android.content.pm.IPackageMoveObserver");
      bool = true;
      continue;
      paramParcel1.enforceInterface("android.content.pm.IPackageMoveObserver");
      packageMoved(paramParcel1.readString(), paramParcel1.readInt());
      bool = true;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.c
 * JD-Core Version:    0.6.2
 */