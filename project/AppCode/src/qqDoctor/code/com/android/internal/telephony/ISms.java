package com.android.internal.telephony;

import android.app.PendingIntent;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import java.util.ArrayList;
import java.util.List;

public abstract interface ISms extends IInterface
{
  public abstract boolean copyMessageToIccEf(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
    throws RemoteException;

  public abstract boolean disableCellBroadcast(int paramInt)
    throws RemoteException;

  public abstract boolean enableCellBroadcast(int paramInt)
    throws RemoteException;

  public abstract List<SmsRawData> getAllMessagesFromIccEf()
    throws RemoteException;

  public abstract void sendData(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
    throws RemoteException;

  public abstract void sendMultipartText(String paramString1, String paramString2, List<String> paramList, List<PendingIntent> paramList1, List<PendingIntent> paramList2)
    throws RemoteException;

  public abstract void sendText(String paramString1, String paramString2, String paramString3, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
    throws RemoteException;

  public abstract boolean updateMessageOnIccEf(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ISms
  {
    private static final String DESCRIPTOR = "com.android.internal.telephony.ISms";
    static final int TRANSACTION_copyMessageToIccEf = 3;
    static final int TRANSACTION_disableCellBroadcast = 8;
    static final int TRANSACTION_enableCellBroadcast = 7;
    static final int TRANSACTION_getAllMessagesFromIccEf = 1;
    static final int TRANSACTION_sendData = 4;
    static final int TRANSACTION_sendMultipartText = 6;
    static final int TRANSACTION_sendText = 5;
    static final int TRANSACTION_updateMessageOnIccEf = 2;

    public Stub()
    {
      attachInterface(this, "com.android.internal.telephony.ISms");
    }

    public static ISms asInterface(IBinder paramIBinder)
    {
      Object localObject;
      if (paramIBinder == null)
        localObject = null;
      while (true)
      {
        return localObject;
        IInterface localIInterface = paramIBinder.queryLocalInterface("com.android.internal.telephony.ISms");
        if ((localIInterface != null) && ((localIInterface instanceof ISms)))
          localObject = (ISms)localIInterface;
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
      case 5:
      case 6:
        while (true)
        {
          return bool2;
          paramParcel2.writeString("com.android.internal.telephony.ISms");
          bool2 = true;
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
          List localList = getAllMessagesFromIccEf();
          paramParcel2.writeNoException();
          paramParcel2.writeTypedList(localList);
          bool2 = true;
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
          boolean bool5 = updateMessageOnIccEf(paramParcel1.readInt(), paramParcel1.readInt(), paramParcel1.createByteArray());
          paramParcel2.writeNoException();
          if (bool5);
          for (int n = 1; ; n = 0)
          {
            paramParcel2.writeInt(n);
            bool2 = true;
            break;
          }
          paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
          boolean bool4 = copyMessageToIccEf(paramParcel1.readInt(), paramParcel1.createByteArray(), paramParcel1.createByteArray());
          paramParcel2.writeNoException();
          if (bool4);
          for (int m = 1; ; m = 0)
          {
            paramParcel2.writeInt(m);
            bool2 = true;
            break;
          }
          paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
          String str4 = paramParcel1.readString();
          String str5 = paramParcel1.readString();
          int k = paramParcel1.readInt();
          byte[] arrayOfByte = paramParcel1.createByteArray();
          PendingIntent localPendingIntent3;
          if (paramParcel1.readInt() != 0)
          {
            localPendingIntent3 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
            if (paramParcel1.readInt() == 0)
              break label350;
          }
          for (PendingIntent localPendingIntent4 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1); ; localPendingIntent4 = null)
          {
            sendData(str4, str5, k, arrayOfByte, localPendingIntent3, localPendingIntent4);
            paramParcel2.writeNoException();
            bool2 = true;
            break;
            localPendingIntent3 = null;
            break label297;
          }
          paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
          String str1 = paramParcel1.readString();
          String str2 = paramParcel1.readString();
          String str3 = paramParcel1.readString();
          PendingIntent localPendingIntent1;
          if (paramParcel1.readInt() != 0)
          {
            localPendingIntent1 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1);
            if (paramParcel1.readInt() == 0)
              break label452;
          }
          for (PendingIntent localPendingIntent2 = (PendingIntent)PendingIntent.CREATOR.createFromParcel(paramParcel1); ; localPendingIntent2 = null)
          {
            sendText(str1, str2, str3, localPendingIntent1, localPendingIntent2);
            paramParcel2.writeNoException();
            bool2 = true;
            break;
            localPendingIntent1 = null;
            break label401;
          }
          paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
          sendMultipartText(paramParcel1.readString(), paramParcel1.readString(), paramParcel1.createStringArrayList(), paramParcel1.createTypedArrayList(PendingIntent.CREATOR), paramParcel1.createTypedArrayList(PendingIntent.CREATOR));
          paramParcel2.writeNoException();
          bool2 = true;
        }
      case 7:
        label297: label350: paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
        label401: label452: boolean bool3 = enableCellBroadcast(paramParcel1.readInt());
        paramParcel2.writeNoException();
        if (bool3);
        for (int j = 1; ; j = 0)
        {
          paramParcel2.writeInt(j);
          bool2 = true;
          break;
        }
      case 8:
      }
      paramParcel1.enforceInterface("com.android.internal.telephony.ISms");
      boolean bool1 = disableCellBroadcast(paramParcel1.readInt());
      paramParcel2.writeNoException();
      if (bool1);
      for (int i = 1; ; i = 0)
      {
        paramParcel2.writeInt(i);
        bool2 = true;
        break;
      }
    }

    private static class Proxy
      implements ISms
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

      public boolean copyMessageToIccEf(int paramInt, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
          localParcel1.writeInt(paramInt);
          localParcel1.writeByteArray(paramArrayOfByte1);
          localParcel1.writeByteArray(paramArrayOfByte2);
          this.mRemote.transact(3, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0)
            bool = true;
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean disableCellBroadcast(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(8, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0)
            bool = true;
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean enableCellBroadcast(int paramInt)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
          localParcel1.writeInt(paramInt);
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0)
            bool = true;
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public List<SmsRawData> getAllMessagesFromIccEf()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ArrayList localArrayList = localParcel2.createTypedArrayList(SmsRawData.CREATOR);
          return localArrayList;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getInterfaceDescriptor()
      {
        return "com.android.internal.telephony.ISms";
      }

      public void sendData(String paramString1, String paramString2, int paramInt, byte[] paramArrayOfByte, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        while (true)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
            localParcel1.writeString(paramString1);
            localParcel1.writeString(paramString2);
            localParcel1.writeInt(paramInt);
            localParcel1.writeByteArray(paramArrayOfByte);
            if (paramPendingIntent1 != null)
            {
              localParcel1.writeInt(1);
              paramPendingIntent1.writeToParcel(localParcel1, 0);
              if (paramPendingIntent2 != null)
              {
                localParcel1.writeInt(1);
                paramPendingIntent2.writeToParcel(localParcel1, 0);
                this.mRemote.transact(4, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          localParcel1.writeInt(0);
        }
      }

      public void sendMultipartText(String paramString1, String paramString2, List<String> paramList, List<PendingIntent> paramList1, List<PendingIntent> paramList2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
          localParcel1.writeString(paramString1);
          localParcel1.writeString(paramString2);
          localParcel1.writeStringList(paramList);
          localParcel1.writeTypedList(paramList1);
          localParcel1.writeTypedList(paramList2);
          this.mRemote.transact(6, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void sendText(String paramString1, String paramString2, String paramString3, PendingIntent paramPendingIntent1, PendingIntent paramPendingIntent2)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        while (true)
        {
          try
          {
            localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
            localParcel1.writeString(paramString1);
            localParcel1.writeString(paramString2);
            localParcel1.writeString(paramString3);
            if (paramPendingIntent1 != null)
            {
              localParcel1.writeInt(1);
              paramPendingIntent1.writeToParcel(localParcel1, 0);
              if (paramPendingIntent2 != null)
              {
                localParcel1.writeInt(1);
                paramPendingIntent2.writeToParcel(localParcel1, 0);
                this.mRemote.transact(5, localParcel1, localParcel2, 0);
                localParcel2.readException();
              }
            }
            else
            {
              localParcel1.writeInt(0);
              continue;
            }
          }
          finally
          {
            localParcel2.recycle();
            localParcel1.recycle();
          }
          localParcel1.writeInt(0);
        }
      }

      public boolean updateMessageOnIccEf(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ISms");
          localParcel1.writeInt(paramInt1);
          localParcel1.writeInt(paramInt2);
          localParcel1.writeByteArray(paramArrayOfByte);
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          boolean bool = false;
          if (i != 0)
            bool = true;
          return bool;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.android.internal.telephony.ISms
 * JD-Core Version:    0.6.2
 */