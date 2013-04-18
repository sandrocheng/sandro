package android.content.pm;

import android.os.IBinder;
import android.os.Parcel;

final class d
  implements IPackageMoveObserver
{
  private IBinder a;

  d(IBinder paramIBinder)
  {
    this.a = paramIBinder;
  }

  private static String a()
  {
    return "android.content.pm.IPackageMoveObserver";
  }

  public final IBinder asBinder()
  {
    return this.a;
  }

  public final void packageMoved(String paramString, int paramInt)
  {
    Parcel localParcel = Parcel.obtain();
    try
    {
      localParcel.writeInterfaceToken("android.content.pm.IPackageMoveObserver");
      localParcel.writeString(paramString);
      localParcel.writeInt(paramInt);
      this.a.transact(1, localParcel, null, 1);
      return;
    }
    finally
    {
      localParcel.recycle();
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     android.content.pm.d
 * JD-Core Version:    0.6.2
 */