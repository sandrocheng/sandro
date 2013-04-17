import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.ArrayList;

public abstract class bzt extends Binder
  implements bzs
{
  public bzt()
  {
    attachInterface(this, "com.tencent.tmsecurelite.ISecureService");
  }

  public boolean a(int paramInt)
    throws RemoteException
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
      while (true)
      {
        return i;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
        ArrayList localArrayList4 = a();
        paramParcel2.writeNoException();
        bzo.a(localArrayList4, paramParcel2);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
        boolean bool12 = b();
        paramParcel2.writeNoException();
        int i6 = 0;
        if (bool12);
        while (true)
        {
          paramParcel2.writeInt(i6);
          break;
          i6 = i;
        }
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
        int i5 = paramParcel1.readInt();
        boolean bool11 = false;
        if (i5 == 0)
          bool11 = i;
        ArrayList localArrayList3 = a(bool11);
        paramParcel2.writeNoException();
        bzo.a(localArrayList3, paramParcel2);
        continue;
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
        String str = paramParcel1.readString();
        boolean bool9;
        int i4;
        if (paramParcel1.readInt() == 0)
        {
          bool9 = i;
          boolean bool10 = a(str, bool9);
          paramParcel2.writeNoException();
          i4 = 0;
          if (!bool10)
            break label248;
        }
        while (true)
        {
          paramParcel2.writeInt(i4);
          break;
          bool9 = false;
          break label211;
          i4 = i;
        }
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
        ArrayList localArrayList2 = paramParcel1.createStringArrayList();
        boolean bool7;
        int i3;
        if (paramParcel1.readInt() == 0)
        {
          bool7 = i;
          boolean bool8 = a(localArrayList2, bool7);
          paramParcel2.writeNoException();
          i3 = 0;
          if (!bool8)
            break label315;
        }
        while (true)
        {
          paramParcel2.writeInt(i3);
          break;
          bool7 = false;
          break label278;
          i3 = i;
        }
        paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
        int i2 = paramParcel1.readInt();
        boolean bool6 = false;
        if (i2 == 0)
          bool6 = i;
        ArrayList localArrayList1 = b(bool6);
        paramParcel2.writeNoException();
        bzo.a(localArrayList1, paramParcel2);
      }
    case 7:
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
      boolean bool5 = a(paramParcel1.readString());
      paramParcel2.writeNoException();
      int i1 = 0;
      if (bool5);
      while (true)
      {
        paramParcel2.writeInt(i1);
        break;
        i1 = i;
      }
    case 8:
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
      boolean bool4 = a(paramParcel1.createStringArrayList());
      paramParcel2.writeNoException();
      int n = 0;
      if (bool4);
      while (true)
      {
        paramParcel2.writeInt(n);
        break;
        n = i;
      }
    case 9:
      paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
      boolean bool3 = a(paramParcel1.readInt());
      paramParcel2.writeNoException();
      int m = 0;
      if (bool3);
      while (true)
      {
        paramParcel2.writeInt(m);
        break;
        m = i;
      }
    case 10:
      label211: label248: paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
      label278: label315: boolean bool2 = c();
      paramParcel2.writeNoException();
      int k = 0;
      if (bool2);
      while (true)
      {
        paramParcel2.writeInt(k);
        break;
        k = i;
      }
    case 11:
    }
    paramParcel1.enforceInterface("com.tencent.tmsecurelite.ISecureService");
    boolean bool1 = d();
    paramParcel2.writeNoException();
    int j = 0;
    if (bool1);
    while (true)
    {
      paramParcel2.writeInt(j);
      break;
      j = i;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzt
 * JD-Core Version:    0.6.2
 */