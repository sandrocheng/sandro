package com.android.internal.telephony;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.os.RemoteException;
import android.telephony.NeighboringCellInfo;
import java.util.ArrayList;
import java.util.List;

public abstract interface ITelephony extends IInterface
{
  public abstract void answerRingingCall()
    throws RemoteException;

  public abstract void call(String paramString)
    throws RemoteException;

  public abstract void cancelMissedCallsNotification()
    throws RemoteException;

  public abstract void dial(String paramString)
    throws RemoteException;

  public abstract int disableApnType(String paramString)
    throws RemoteException;

  public abstract boolean disableDataConnectivity()
    throws RemoteException;

  public abstract void disableLocationUpdates()
    throws RemoteException;

  public abstract int enableApnType(String paramString)
    throws RemoteException;

  public abstract boolean enableDataConnectivity()
    throws RemoteException;

  public abstract void enableLocationUpdates()
    throws RemoteException;

  public abstract boolean endCall()
    throws RemoteException;

  public abstract int getActivePhoneType()
    throws RemoteException;

  public abstract int getCallState()
    throws RemoteException;

  public abstract int getCdmaEriIconIndex()
    throws RemoteException;

  public abstract int getCdmaEriIconMode()
    throws RemoteException;

  public abstract String getCdmaEriText()
    throws RemoteException;

  public abstract boolean getCdmaNeedsProvisioning()
    throws RemoteException;

  public abstract Bundle getCellLocation()
    throws RemoteException;

  public abstract int getDataActivity()
    throws RemoteException;

  public abstract int getDataState()
    throws RemoteException;

  public abstract List<NeighboringCellInfo> getNeighboringCellInfo()
    throws RemoteException;

  public abstract int getNetworkType()
    throws RemoteException;

  public abstract int getVoiceMessageCount()
    throws RemoteException;

  public abstract boolean handlePinMmi(String paramString)
    throws RemoteException;

  public abstract boolean hasIccCard()
    throws RemoteException;

  public abstract boolean isDataConnectivityPossible()
    throws RemoteException;

  public abstract boolean isIdle()
    throws RemoteException;

  public abstract boolean isOffhook()
    throws RemoteException;

  public abstract boolean isRadioOn()
    throws RemoteException;

  public abstract boolean isRinging()
    throws RemoteException;

  public abstract boolean isSimPinEnabled()
    throws RemoteException;

  public abstract boolean setRadio(boolean paramBoolean)
    throws RemoteException;

  public abstract boolean showCallScreen()
    throws RemoteException;

  public abstract boolean showCallScreenWithDialpad(boolean paramBoolean)
    throws RemoteException;

  public abstract void silenceRinger()
    throws RemoteException;

  public abstract boolean supplyPin(String paramString)
    throws RemoteException;

  public abstract void toggleRadioOnOff()
    throws RemoteException;

  public abstract void updateServiceLocation()
    throws RemoteException;

  public static abstract class Stub extends Binder
    implements ITelephony
  {
    private static final String DESCRIPTOR = "com.android.internal.telephony.ITelephony";
    static final int TRANSACTION_answerRingingCall = 6;
    static final int TRANSACTION_call = 2;
    static final int TRANSACTION_cancelMissedCallsNotification = 13;
    static final int TRANSACTION_dial = 1;
    static final int TRANSACTION_disableApnType = 22;
    static final int TRANSACTION_disableDataConnectivity = 24;
    static final int TRANSACTION_disableLocationUpdates = 20;
    static final int TRANSACTION_enableApnType = 21;
    static final int TRANSACTION_enableDataConnectivity = 23;
    static final int TRANSACTION_enableLocationUpdates = 19;
    static final int TRANSACTION_endCall = 5;
    static final int TRANSACTION_getActivePhoneType = 31;
    static final int TRANSACTION_getCallState = 28;
    static final int TRANSACTION_getCdmaEriIconIndex = 32;
    static final int TRANSACTION_getCdmaEriIconMode = 33;
    static final int TRANSACTION_getCdmaEriText = 34;
    static final int TRANSACTION_getCdmaNeedsProvisioning = 35;
    static final int TRANSACTION_getCellLocation = 26;
    static final int TRANSACTION_getDataActivity = 29;
    static final int TRANSACTION_getDataState = 30;
    static final int TRANSACTION_getNeighboringCellInfo = 27;
    static final int TRANSACTION_getNetworkType = 37;
    static final int TRANSACTION_getVoiceMessageCount = 36;
    static final int TRANSACTION_handlePinMmi = 15;
    static final int TRANSACTION_hasIccCard = 38;
    static final int TRANSACTION_isDataConnectivityPossible = 25;
    static final int TRANSACTION_isIdle = 10;
    static final int TRANSACTION_isOffhook = 8;
    static final int TRANSACTION_isRadioOn = 11;
    static final int TRANSACTION_isRinging = 9;
    static final int TRANSACTION_isSimPinEnabled = 12;
    static final int TRANSACTION_setRadio = 17;
    static final int TRANSACTION_showCallScreen = 3;
    static final int TRANSACTION_showCallScreenWithDialpad = 4;
    static final int TRANSACTION_silenceRinger = 7;
    static final int TRANSACTION_supplyPin = 14;
    static final int TRANSACTION_toggleRadioOnOff = 16;
    static final int TRANSACTION_updateServiceLocation = 18;

    public Stub()
    {
      attachInterface(this, "com.android.internal.telephony.ITelephony");
    }

    public static ITelephony asInterface(IBinder paramIBinder)
    {
      Object localObject;
      if (paramIBinder == null)
        localObject = null;
      while (true)
      {
        return localObject;
        IInterface localIInterface = paramIBinder.queryLocalInterface("com.android.internal.telephony.ITelephony");
        if ((localIInterface != null) && ((localIInterface instanceof ITelephony)))
          localObject = (ITelephony)localIInterface;
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
      int i = 1;
      switch (paramInt1)
      {
      default:
        i = super.onTransact(paramInt1, paramParcel1, paramParcel2, paramInt2);
      case 1598968902:
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
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
      case 21:
      case 22:
      case 23:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
      case 30:
      case 31:
      case 32:
      case 33:
      case 34:
      case 35:
      case 36:
      case 37:
      case 38:
      }
      while (true)
      {
        return i;
        paramParcel2.writeString("com.android.internal.telephony.ITelephony");
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        dial(paramParcel1.readString());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        call(paramParcel1.readString());
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool16 = showCallScreen();
        paramParcel2.writeNoException();
        int i26 = 0;
        if (bool16)
          i26 = i;
        paramParcel2.writeInt(i26);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        if (paramParcel1.readInt() != 0);
        int i24;
        for (int i23 = i; ; i24 = 0)
        {
          boolean bool15 = showCallScreenWithDialpad(i23);
          paramParcel2.writeNoException();
          int i25 = 0;
          if (bool15)
            i25 = i;
          paramParcel2.writeInt(i25);
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool14 = endCall();
        paramParcel2.writeNoException();
        int i22 = 0;
        if (bool14)
          i22 = i;
        paramParcel2.writeInt(i22);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        answerRingingCall();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        silenceRinger();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool13 = isOffhook();
        paramParcel2.writeNoException();
        int i21 = 0;
        if (bool13)
          i21 = i;
        paramParcel2.writeInt(i21);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool12 = isRinging();
        paramParcel2.writeNoException();
        int i20 = 0;
        if (bool12)
          i20 = i;
        paramParcel2.writeInt(i20);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool11 = isIdle();
        paramParcel2.writeNoException();
        int i19 = 0;
        if (bool11)
          i19 = i;
        paramParcel2.writeInt(i19);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool10 = isRadioOn();
        paramParcel2.writeNoException();
        int i18 = 0;
        if (bool10)
          i18 = i;
        paramParcel2.writeInt(i18);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool9 = isSimPinEnabled();
        paramParcel2.writeNoException();
        int i17 = 0;
        if (bool9)
          i17 = i;
        paramParcel2.writeInt(i17);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        cancelMissedCallsNotification();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool8 = supplyPin(paramParcel1.readString());
        paramParcel2.writeNoException();
        int i16 = 0;
        if (bool8)
          i16 = i;
        paramParcel2.writeInt(i16);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool7 = handlePinMmi(paramParcel1.readString());
        paramParcel2.writeNoException();
        int i15 = 0;
        if (bool7)
          i15 = i;
        paramParcel2.writeInt(i15);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        toggleRadioOnOff();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        if (paramParcel1.readInt() != 0);
        int i13;
        for (int i12 = i; ; i13 = 0)
        {
          boolean bool6 = setRadio(i12);
          paramParcel2.writeNoException();
          int i14 = 0;
          if (bool6)
            i14 = i;
          paramParcel2.writeInt(i14);
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        updateServiceLocation();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        enableLocationUpdates();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        disableLocationUpdates();
        paramParcel2.writeNoException();
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i11 = enableApnType(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i11);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i10 = disableApnType(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i10);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool5 = enableDataConnectivity();
        paramParcel2.writeNoException();
        int i9 = 0;
        if (bool5)
          i9 = i;
        paramParcel2.writeInt(i9);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool4 = disableDataConnectivity();
        paramParcel2.writeNoException();
        int i8 = 0;
        if (bool4)
          i8 = i;
        paramParcel2.writeInt(i8);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool3 = isDataConnectivityPossible();
        paramParcel2.writeNoException();
        int i7 = 0;
        if (bool3)
          i7 = i;
        paramParcel2.writeInt(i7);
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        Bundle localBundle = getCellLocation();
        paramParcel2.writeNoException();
        if (localBundle != null)
        {
          paramParcel2.writeInt(i);
          localBundle.writeToParcel(paramParcel2, i);
        }
        else
        {
          paramParcel2.writeInt(0);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          List localList = getNeighboringCellInfo();
          paramParcel2.writeNoException();
          paramParcel2.writeTypedList(localList);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int i6 = getCallState();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(i6);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int i5 = getDataActivity();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(i5);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int i4 = getDataState();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(i4);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int i3 = getActivePhoneType();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(i3);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int i2 = getCdmaEriIconIndex();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(i2);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int i1 = getCdmaEriIconMode();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(i1);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          String str = getCdmaEriText();
          paramParcel2.writeNoException();
          paramParcel2.writeString(str);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          boolean bool2 = getCdmaNeedsProvisioning();
          paramParcel2.writeNoException();
          int n = 0;
          if (bool2)
            n = i;
          paramParcel2.writeInt(n);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int m = getVoiceMessageCount();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(m);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          int k = getNetworkType();
          paramParcel2.writeNoException();
          paramParcel2.writeInt(k);
          continue;
          paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
          boolean bool1 = hasIccCard();
          paramParcel2.writeNoException();
          int j = 0;
          if (bool1)
            j = i;
          paramParcel2.writeInt(j);
        }
      }
    }

    private static class Proxy
      implements ITelephony
    {
      private IBinder mRemote;

      Proxy(IBinder paramIBinder)
      {
        this.mRemote = paramIBinder;
      }

      public void answerRingingCall()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
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

      public IBinder asBinder()
      {
        return this.mRemote;
      }

      public void call(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          localParcel1.writeString(paramString);
          this.mRemote.transact(2, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void cancelMissedCallsNotification()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(13, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void dial(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          localParcel1.writeString(paramString);
          this.mRemote.transact(1, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int disableApnType(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          localParcel1.writeString(paramString);
          this.mRemote.transact(22, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean disableDataConnectivity()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(24, localParcel1, localParcel2, 0);
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

      public void disableLocationUpdates()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(20, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int enableApnType(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          localParcel1.writeString(paramString);
          this.mRemote.transact(21, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean enableDataConnectivity()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(23, localParcel1, localParcel2, 0);
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

      public void enableLocationUpdates()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(19, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean endCall()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(5, localParcel1, localParcel2, 0);
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

      public int getActivePhoneType()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(31, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int getCallState()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(28, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int getCdmaEriIconIndex()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(32, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int getCdmaEriIconMode()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(33, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getCdmaEriText()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(34, localParcel1, localParcel2, 0);
          localParcel2.readException();
          String str = localParcel2.readString();
          return str;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean getCdmaNeedsProvisioning()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(35, localParcel1, localParcel2, 0);
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

      public Bundle getCellLocation()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(26, localParcel1, localParcel2, 0);
          localParcel2.readException();
          if (localParcel2.readInt() != 0)
          {
            localBundle = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
            return localBundle;
          }
          Bundle localBundle = null;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int getDataActivity()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(29, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int getDataState()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(30, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public String getInterfaceDescriptor()
      {
        return "com.android.internal.telephony.ITelephony";
      }

      public List<NeighboringCellInfo> getNeighboringCellInfo()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(27, localParcel1, localParcel2, 0);
          localParcel2.readException();
          ArrayList localArrayList = localParcel2.createTypedArrayList(NeighboringCellInfo.CREATOR);
          return localArrayList;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int getNetworkType()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(37, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public int getVoiceMessageCount()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(36, localParcel1, localParcel2, 0);
          localParcel2.readException();
          int i = localParcel2.readInt();
          return i;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean handlePinMmi(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          localParcel1.writeString(paramString);
          this.mRemote.transact(15, localParcel1, localParcel2, 0);
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

      public boolean hasIccCard()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(38, localParcel1, localParcel2, 0);
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

      public boolean isDataConnectivityPossible()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(25, localParcel1, localParcel2, 0);
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

      public boolean isIdle()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(10, localParcel1, localParcel2, 0);
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

      public boolean isOffhook()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
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

      public boolean isRadioOn()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(11, localParcel1, localParcel2, 0);
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

      public boolean isRinging()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(9, localParcel1, localParcel2, 0);
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

      public boolean isSimPinEnabled()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(12, localParcel1, localParcel2, 0);
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

      public boolean setRadio(boolean paramBoolean)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          if (paramBoolean);
          int k;
          for (int j = i; ; k = 0)
          {
            localParcel1.writeInt(j);
            this.mRemote.transact(17, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int m = localParcel2.readInt();
            if (m == 0)
              break;
            return i;
          }
          i = 0;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean showCallScreen()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
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

      public boolean showCallScreenWithDialpad(boolean paramBoolean)
        throws RemoteException
      {
        int i = 1;
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          if (paramBoolean);
          int k;
          for (int j = i; ; k = 0)
          {
            localParcel1.writeInt(j);
            this.mRemote.transact(4, localParcel1, localParcel2, 0);
            localParcel2.readException();
            int m = localParcel2.readInt();
            if (m == 0)
              break;
            return i;
          }
          i = 0;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void silenceRinger()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(7, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public boolean supplyPin(String paramString)
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          localParcel1.writeString(paramString);
          this.mRemote.transact(14, localParcel1, localParcel2, 0);
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

      public void toggleRadioOnOff()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(16, localParcel1, localParcel2, 0);
          localParcel2.readException();
          return;
        }
        finally
        {
          localParcel2.recycle();
          localParcel1.recycle();
        }
      }

      public void updateServiceLocation()
        throws RemoteException
      {
        Parcel localParcel1 = Parcel.obtain();
        Parcel localParcel2 = Parcel.obtain();
        try
        {
          localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
          this.mRemote.transact(18, localParcel1, localParcel2, 0);
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
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.android.internal.telephony.ITelephony
 * JD-Core Version:    0.6.2
 */