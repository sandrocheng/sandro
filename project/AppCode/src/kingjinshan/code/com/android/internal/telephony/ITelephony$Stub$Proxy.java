package com.android.internal.telephony;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;

class ITelephony$Stub$Proxy
  implements ITelephony
{
  private IBinder mRemote;

  ITelephony$Stub$Proxy(IBinder paramIBinder)
  {
    this.mRemote = paramIBinder;
  }

  public void answerRingingCall()
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
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(24, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void disableLocationUpdates()
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
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(23, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void enableLocationUpdates()
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
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(5, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public int getActivePhoneType()
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

  public int getCallState()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(27, localParcel1, localParcel2, 0);
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

  public int getCdmaEriIconMode()
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

  public String getCdmaEriText()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(33, localParcel1, localParcel2, 0);
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
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(34, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public Bundle getCellLocation()
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
        Bundle localBundle2 = (Bundle)Bundle.CREATOR.createFromParcel(localParcel2);
        localBundle1 = localBundle2;
        return localBundle1;
      }
      Bundle localBundle1 = null;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public int getDataActivity()
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

  public int getDataState()
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

  public String getInterfaceDescriptor()
  {
    return "com.android.internal.telephony.ITelephony";
  }

  public int getNetworkType()
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

  public int getVoiceMessageCount()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(35, localParcel1, localParcel2, 0);
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
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean hasIccCard()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(37, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean isDataConnectivityPossible()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(25, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean isIdle()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(10, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean isOffhook()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(8, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean isRadioOn()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(11, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean isRinging()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(9, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean isSimPinEnabled()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(12, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean setRadio(boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      if (paramBoolean);
      for (int i = 1; ; i = 0)
      {
        localParcel1.writeInt(i);
        this.mRemote.transact(17, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int j = localParcel2.readInt();
        if (j == 0)
          break;
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean showCallScreen()
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      this.mRemote.transact(3, localParcel1, localParcel2, 0);
      localParcel2.readException();
      int i = localParcel2.readInt();
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public boolean showCallScreenWithDialpad(boolean paramBoolean)
  {
    Parcel localParcel1 = Parcel.obtain();
    Parcel localParcel2 = Parcel.obtain();
    try
    {
      localParcel1.writeInterfaceToken("com.android.internal.telephony.ITelephony");
      if (paramBoolean);
      for (int i = 1; ; i = 0)
      {
        localParcel1.writeInt(i);
        this.mRemote.transact(4, localParcel1, localParcel2, 0);
        localParcel2.readException();
        int j = localParcel2.readInt();
        if (j == 0)
          break;
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void silenceRinger()
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
      if (i != 0)
      {
        bool = true;
        return bool;
      }
      boolean bool = false;
    }
    finally
    {
      localParcel2.recycle();
      localParcel1.recycle();
    }
  }

  public void toggleRadioOnOff()
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

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.android.internal.telephony.ITelephony.Stub.Proxy
 * JD-Core Version:    0.6.2
 */