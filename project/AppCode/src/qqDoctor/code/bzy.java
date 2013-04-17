import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;

public abstract class bzy extends Binder
  implements bzv
{
  public bzy()
  {
    attachInterface(this, "com.tencent.tmsecurelite.IVirusScan");
  }

  public boolean a(int paramInt)
  {
    int i = 1;
    if (i >= paramInt);
    while (true)
    {
      return i;
      i = 0;
    }
  }

  public IBinder asBinder()
  {
    return this;
  }

  protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
    throws RemoteException
  {
    switch (paramInt1)
    {
    default:
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
    }
    while (true)
    {
      return true;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      bzu localbzu5 = bzx.a(paramParcel1.readStrongBinder());
      int i1 = paramParcel1.readByte();
      boolean bool6 = false;
      if (i1 == 1)
        bool6 = true;
      a(localbzu5, bool6);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      bzu localbzu4 = bzx.a(paramParcel1.readStrongBinder());
      int n = paramParcel1.readByte();
      boolean bool5 = false;
      if (n == 1)
        bool5 = true;
      b(localbzu4, bool5);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      bzu localbzu3 = bzx.a(paramParcel1.readStrongBinder());
      int m = paramParcel1.readByte();
      boolean bool4 = false;
      if (m == 1)
        bool4 = true;
      c(localbzu3, bool4);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      ArrayList localArrayList2 = new ArrayList();
      paramParcel1.readStringList(localArrayList2);
      bzu localbzu2 = bzx.a(paramParcel1.readStrongBinder());
      int k = paramParcel1.readByte();
      boolean bool3 = false;
      if (k == 1)
        bool3 = true;
      a(localArrayList2, localbzu2, bool3);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      ArrayList localArrayList1 = new ArrayList();
      paramParcel1.readStringList(localArrayList1);
      bzu localbzu1 = bzx.a(paramParcel1.readStrongBinder());
      int j = paramParcel1.readByte();
      boolean bool2 = false;
      if (j == 1)
        bool2 = true;
      b(localArrayList1, localbzu1, bool2);
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      a();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      b();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      c();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      d();
      paramParcel2.writeNoException();
      continue;
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.IVirusScan");
      boolean bool1 = a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int i = 0;
      if (bool1)
        i = 1;
      paramParcel2.writeByte((byte)i);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzy
 * JD-Core Version:    0.6.2
 */