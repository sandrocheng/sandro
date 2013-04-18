package android.content.pm;

import android.content.ComponentName;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;

public abstract class a extends Binder
  implements IPackageManager
{
  static final int a = 1;
  static final int b = 2;
  static final int c = 3;
  static final int d = 4;
  static final int e = 5;
  private static final String f = "android.content.pm.IPackageManager";

  public a()
  {
    attachInterface(this, "android.content.pm.IPackageManager");
  }

  private static IPackageManager a(IBinder paramIBinder)
  {
    Object localObject;
    if (paramIBinder == null)
      localObject = null;
    while (true)
    {
      return localObject;
      IInterface localIInterface = paramIBinder.queryLocalInterface("android.content.pm.IPackageManager");
      if ((localIInterface != null) && ((localIInterface instanceof IPackageManager)))
        localObject = (IPackageManager)localIInterface;
      else
        localObject = new b(paramIBinder);
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
      bool2 = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1598968902:
    case 1:
    case 2:
    case 3:
    case 4:
      while (true)
      {
        return bool2;
        paramParcel2.writeString("android.content.pm.IPackageManager");
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("android.content.pm.IPackageManager");
        if (paramParcel1.readInt() != 0);
        for (ComponentName localComponentName2 = (ComponentName)ComponentName.CREATOR.createFromParcel(paramParcel1); ; localComponentName2 = null)
        {
          setComponentEnabledSetting(localComponentName2, paramParcel1.readInt(), paramParcel1.readInt());
          paramParcel2.writeNoException();
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("android.content.pm.IPackageManager");
        if (paramParcel1.readInt() != 0);
        for (ComponentName localComponentName1 = (ComponentName)ComponentName.CREATOR.createFromParcel(paramParcel1); ; localComponentName1 = null)
        {
          int j = getComponentEnabledSetting(localComponentName1);
          paramParcel2.writeNoException();
          paramParcel2.writeInt(j);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("android.content.pm.IPackageManager");
        setApplicationEnabledSetting(paramParcel1.readString(), paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("android.content.pm.IPackageManager");
        int i = getApplicationEnabledSetting(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i);
        bool2 = true;
      }
    case 5:
    }
    paramParcel1.enforceInterface("android.content.pm.IPackageManager");
    String str = paramParcel1.readString();
    if (paramParcel1.readInt() != 0);
    for (boolean bool1 = true; ; bool1 = false)
    {
      setPackageStoppedState(str, bool1);
      paramParcel2.writeNoException();
      bool2 = true;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.a
 * JD-Core Version:    0.6.2
 */