import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;

public abstract class bzq extends Binder
  implements bzr
{
  public bzq()
  {
    attachInterface(this, "com.tencent.tmsecurelite.IDisturbIntercept");
  }

  public IBinder asBinder()
  {
    return this;
  }

  protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    int i = 1;
    switch (paramInt1)
    {
    default:
      i = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 10:
    case 11:
    case 12:
    case 13:
      while (true)
      {
        return i;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        ArrayList localArrayList2 = a(paramParcel1.readInt());
        paramParcel2.writeNoException();
        bzo.a(localArrayList2, paramParcel2);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        boolean bool4 = a(paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        int i10 = 0;
        if (bool4)
          i10 = i;
        paramParcel2.writeInt(i10);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        int i7 = paramParcel1.readInt();
        int i8 = paramParcel1.readInt();
        int i9 = paramParcel1.readInt();
        boolean bool3 = false;
        if (i9 == i)
          bool3 = i;
        a(i7, i8, bool3);
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        int i4 = paramParcel1.readInt();
        int i5 = paramParcel1.readInt();
        int i6 = paramParcel1.readInt();
        boolean bool2 = false;
        if (i6 == i)
          bool2 = i;
        b(i4, i5, bool2);
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        b(paramParcel1.readInt());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        ArrayList localArrayList1 = c(paramParcel1.readInt());
        paramParcel2.writeNoException();
        bzo.a(localArrayList1, paramParcel2);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        boolean bool1 = a(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        int i3 = 0;
        if (bool1)
          i3 = i;
        paramParcel2.writeInt(i3);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        b(paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        int i2 = a();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i2);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        int i1 = b();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i1);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        c(paramParcel1.readInt(), paramParcel1.readInt());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        int n = c();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(n);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
        d(paramParcel1.readInt());
        paramParcel2.writeNoException();
      }
    case 14:
    }
    paramParcel1.enforceInterface("com.tencent.tmsecurelite.IDisturbIntercept");
    if (i >= paramParcel1.readInt());
    int k;
    for (int j = i; ; k = 0)
    {
      paramParcel2.writeNoException();
      int m = 0;
      if (j != 0)
        m = i;
      paramParcel2.writeInt(m);
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzq
 * JD-Core Version:    0.6.2
 */