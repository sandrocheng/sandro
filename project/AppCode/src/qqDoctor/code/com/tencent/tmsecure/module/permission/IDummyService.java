package com.tencent.tmsecure.module.permission;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import btm;
import bxk;

public abstract interface IDummyService extends IInterface
{
  public abstract void addPermissionTableItem(PermissionTableItem paramPermissionTableItem)
    throws RemoteException;

  public abstract int pingDummyService(int paramInt, String paramString);

  public abstract void removePermissionTableItem(PermissionTableItem paramPermissionTableItem)
    throws RemoteException;

  public abstract void setDummyServiceCallback(IDummyServiceCallback paramIDummyServiceCallback)
    throws RemoteException;

  public abstract void setEnable(boolean paramBoolean)
    throws RemoteException;

  public abstract void setPermissionTable(PermissionControlConfig paramPermissionControlConfig)
    throws RemoteException;

  public abstract void updatePermissionTable(int paramInt1, int paramInt2, int paramInt3)
    throws RemoteException;

  public abstract void updatePermissionTable(PermissionTableItem paramPermissionTableItem)
    throws RemoteException;

  public static class Proxy
    implements IDummyService
  {
    private String a;
    private IBinder b;

    private Proxy(IBinder paramIBinder)
      throws RemoteException
    {
      this.b = paramIBinder;
      this.a = this.b.getInterfaceDescriptor();
    }

    public static IDummyService asInterface(IBinder paramIBinder)
    {
      try
      {
        localProxy = new Proxy(paramIBinder);
        return localProxy;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
        {
          localRemoteException.printStackTrace();
          Proxy localProxy = null;
        }
      }
    }

    public void addPermissionTableItem(PermissionTableItem paramPermissionTableItem)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        paramPermissionTableItem.writeToParcel(localParcel1, 0);
        this.b.transact(7, localParcel1, localParcel2, 1);
        localParcel2.readException();
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }

    public IBinder asBinder()
    {
      return this.b;
    }

    public int pingDummyService(int paramInt, String paramString)
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      int i = -1;
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        localParcel1.writeInt(paramInt);
        localParcel1.writeString(paramString);
        this.b.transact(6, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int j = localParcel2.readInt();
        i = j;
        return i;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }

    public void removePermissionTableItem(PermissionTableItem paramPermissionTableItem)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        paramPermissionTableItem.writeToParcel(localParcel1, 0);
        this.b.transact(8, localParcel1, localParcel2, 1);
        localParcel2.readException();
        return;
      }
      catch (Exception localException)
      {
        while (true)
        {
          localException.printStackTrace();
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }

    public void setDummyServiceCallback(IDummyServiceCallback paramIDummyServiceCallback)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        if (paramIDummyServiceCallback != null)
        {
          localIBinder = paramIDummyServiceCallback.asBinder();
          localParcel1.writeStrongBinder(localIBinder);
          this.b.transact(1, localParcel1, localParcel2, 1);
          localParcel2.readException();
          return;
        }
        IBinder localIBinder = null;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }

    public void setEnable(boolean paramBoolean)
      throws RemoteException
    {
      int i = 1;
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        if (paramBoolean)
        {
          localParcel1.writeInt(i);
          this.b.transact(2, localParcel1, localParcel2, 1);
          localParcel2.readException();
          return;
        }
        i = 0;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }

    public void setPermissionTable(PermissionControlConfig paramPermissionControlConfig)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        if (paramPermissionControlConfig != null)
        {
          localParcel1.writeInt(1);
          paramPermissionControlConfig.writeToParcel(localParcel1, 0);
        }
        while (true)
        {
          this.b.transact(3, localParcel1, localParcel2, 1);
          localParcel2.readException();
          return;
          localParcel1.writeInt(0);
        }
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }

    public void updatePermissionTable(int paramInt1, int paramInt2, int paramInt3)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        localParcel1.writeInt(paramInt1);
        localParcel1.writeInt(paramInt2);
        localParcel1.writeInt(paramInt3);
        this.b.transact(4, localParcel1, localParcel2, 1);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }

    public void updatePermissionTable(PermissionTableItem paramPermissionTableItem)
      throws RemoteException
    {
      Parcel localParcel1 = Parcel.obtain();
      Parcel localParcel2 = Parcel.obtain();
      try
      {
        localParcel1.writeInt(20100404);
        localParcel1.writeInterfaceToken(this.a);
        paramPermissionTableItem.writeToParcel(localParcel1, 0);
        this.b.transact(5, localParcel1, localParcel2, 1);
        localParcel2.readException();
        return;
      }
      finally
      {
        localParcel2.recycle();
        localParcel1.recycle();
      }
    }
  }

  public static abstract class Stub extends Binder
    implements IDummyService
  {
    private String a;
    private String b;
    private PermissionControlConfig c;
    private IDummyServiceCallback d;
    private IBinder e;
    private Stub f;
    private boolean g;

    public Stub()
    {
      this(null);
    }

    public Stub(Stub paramStub)
    {
      this.f = paramStub;
      String str = getServiceName();
      IBinder localIBinder = btm.c(str);
      if (localIBinder == null)
      {
        localIBinder = btm.d(str);
        btm.a(str, localIBinder);
      }
      this.e = localIBinder;
      try
      {
        this.b = this.e.getInterfaceDescriptor();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        while (true)
          localRemoteException.printStackTrace();
      }
    }

    public final void addPermissionTableItem(PermissionTableItem paramPermissionTableItem)
      throws RemoteException
    {
      if (this.c != null)
        this.c.addItem(paramPermissionTableItem);
    }

    public IBinder asBinder()
    {
      return this;
    }

    protected boolean execTransactForOwn(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      int i = 1;
      paramParcel1.enforceInterface(this.b);
      while (true)
      {
        int i1;
        try
        {
          String str;
          if (this.a == null)
          {
            int i2 = Binder.getCallingUid();
            String[] arrayOfString = bxk.a().getPackageManager().getPackagesForUid(i2);
            if ((arrayOfString == null) || (arrayOfString.length <= 0))
              continue;
            str = arrayOfString[0];
            this.a = str;
            bxk.b();
          }
          switch (paramInt1)
          {
          default:
            return i;
            str = null;
          case 2:
          case 3:
          case 1:
          case 4:
          case 5:
          case 6:
          case 7:
          case 8:
          }
        }
        finally
        {
        }
        boolean bool = false;
        if (i1 == i)
          bool = i;
        this.g = bool;
        paramParcel2.writeNoException();
        continue;
        if (paramParcel1.readInt() != 0);
        for (PermissionControlConfig localPermissionControlConfig = PermissionControlConfig.createFromParcel(paramParcel1); ; localPermissionControlConfig = null)
        {
          this.c = localPermissionControlConfig;
          paramParcel2.writeNoException();
          break;
        }
        this.d = IDummyServiceCallback.Stub.asInterface(paramParcel1.readStrongBinder());
        paramParcel2.writeNoException();
        continue;
        int k = paramParcel1.readInt();
        int m = paramParcel1.readInt();
        int n = paramParcel1.readInt();
        if (this.c != null)
          this.c.update(k, m, n);
        paramParcel2.writeNoException();
        continue;
        PermissionTableItem localPermissionTableItem3 = PermissionTableItem.createFromParcel(paramParcel1);
        if (this.c != null)
          this.c.update(localPermissionTableItem3);
        paramParcel2.writeNoException();
        continue;
        int j = pingDummyService(paramParcel1.readInt(), paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(j);
        continue;
        PermissionTableItem localPermissionTableItem2 = PermissionTableItem.createFromParcel(paramParcel1);
        if (this.c != null)
          this.c.addItem(localPermissionTableItem2);
        paramParcel2.writeNoException();
        continue;
        PermissionTableItem localPermissionTableItem1 = PermissionTableItem.createFromParcel(paramParcel1);
        if (this.c != null)
          this.c.removeItem(localPermissionTableItem1);
        paramParcel2.writeNoException();
      }
    }

    public final IBinder getInnerBinder()
    {
      return this.e;
    }

    public String getInterfaceDescriptor()
    {
      return this.b;
    }

    protected abstract PermissionRequestInfo getPermissionRequestInfo(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException;

    protected PermissionControlConfig getPermissionTable()
    {
      if (this.f == null);
      for (PermissionControlConfig localPermissionControlConfig = this.c; ; localPermissionControlConfig = this.f.c)
        return localPermissionControlConfig;
    }

    protected abstract String getServiceName();

    protected boolean innerOnTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      paramParcel1.setDataPosition(0);
      return this.e.transact(paramInt1, paramParcel1, paramParcel2, paramInt2);
    }

    protected abstract boolean onHookHappen(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException;

    protected boolean onTransact(int paramInt1, Parcel paramParcel1, Parcel paramParcel2, int paramInt2)
      throws RemoteException
    {
      int i = 1;
      super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      boolean bool2;
      if (paramParcel1.readInt() == 20100404)
      {
        bool2 = execTransactForOwn(paramInt1, paramParcel1, paramParcel2, paramInt2);
        return bool2;
      }
      paramParcel1.setDataPosition(0);
      PermissionControlConfig localPermissionControlConfig = getPermissionTable();
      IDummyServiceCallback localIDummyServiceCallback;
      label60: boolean bool1;
      label73: PermissionRequestInfo localPermissionRequestInfo;
      int j;
      if (this.f == null)
      {
        localIDummyServiceCallback = this.d;
        if (this.f != null)
          break label247;
        bool1 = this.g;
        if ((!bool1) || (localPermissionControlConfig == null) || (localIDummyServiceCallback == null))
          break label293;
        localPermissionRequestInfo = getPermissionRequestInfo(paramInt1, paramParcel1, paramParcel2, paramInt2);
        if (localPermissionRequestInfo == null)
          break label293;
        j = localPermissionControlConfig.getValue(Binder.getCallingUid(), localPermissionRequestInfo.mRid);
        if (j == 65535)
          break label293;
        localPermissionRequestInfo.mValue = j;
        if ((!localIDummyServiceCallback.asBinder().pingBinder()) || (j != 2))
          break label307;
      }
      label293: label307: for (int k = localIDummyServiceCallback.onRequest(localPermissionRequestInfo); ; k = j)
      {
        switch (j)
        {
        default:
          i = 0;
        case 1:
        case 0:
        case 2:
        case 65535:
        }
        while (true)
        {
          if (i == 0)
            break label293;
          paramParcel1.setDataPosition(0);
          bool2 = onHookHappen(paramInt1, paramParcel1, paramParcel2, paramInt2);
          break;
          localIDummyServiceCallback = this.f.d;
          break label60;
          label247: bool1 = this.f.g;
          break label73;
          i = 0;
          continue;
          if (k != 0);
          for (int m = i; ; m = 0)
          {
            i = m;
            break;
          }
          i = 0;
        }
        bool2 = innerOnTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
        break;
      }
    }

    public int pingDummyService(int paramInt, String paramString)
    {
      int i;
      if (this.f != null)
        i = this.f.pingDummyService(paramInt, paramString);
      while (true)
      {
        return i;
        if (!this.a.equals(paramString))
          i = 1111;
        else if (paramInt == 12)
          i = 7777;
        else if (12 > paramInt)
          i = 8888;
        else
          i = 9999;
      }
    }

    public final void removePermissionTableItem(PermissionTableItem paramPermissionTableItem)
      throws RemoteException
    {
      if (this.c != null)
        this.c.removeItem(paramPermissionTableItem);
    }

    public final void setDummyServiceCallback(IDummyServiceCallback paramIDummyServiceCallback)
      throws RemoteException
    {
      this.d = paramIDummyServiceCallback;
    }

    public final void setEnable(boolean paramBoolean)
      throws RemoteException
    {
      this.g = paramBoolean;
    }

    public final void setPermissionTable(PermissionControlConfig paramPermissionControlConfig)
      throws RemoteException
    {
      this.c = paramPermissionControlConfig;
    }

    public final void updatePermissionTable(int paramInt1, int paramInt2, int paramInt3)
      throws RemoteException
    {
      if (this.c != null)
        this.c.update(paramInt1, paramInt2, paramInt3);
    }

    public final void updatePermissionTable(PermissionTableItem paramPermissionTableItem)
      throws RemoteException
    {
      if (this.c != null)
        this.c.update(paramPermissionTableItem);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.permission.IDummyService
 * JD-Core Version:    0.6.2
 */