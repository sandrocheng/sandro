package com.android.internal.telephony;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

public abstract class ITelephony$Stub extends Binder
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
  static final int TRANSACTION_getActivePhoneType = 30;
  static final int TRANSACTION_getCallState = 27;
  static final int TRANSACTION_getCdmaEriIconIndex = 31;
  static final int TRANSACTION_getCdmaEriIconMode = 32;
  static final int TRANSACTION_getCdmaEriText = 33;
  static final int TRANSACTION_getCdmaNeedsProvisioning = 34;
  static final int TRANSACTION_getCellLocation = 26;
  static final int TRANSACTION_getDataActivity = 28;
  static final int TRANSACTION_getDataState = 29;
  static final int TRANSACTION_getNetworkType = 36;
  static final int TRANSACTION_getVoiceMessageCount = 35;
  static final int TRANSACTION_handlePinMmi = 15;
  static final int TRANSACTION_hasIccCard = 37;
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

  public ITelephony$Stub()
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
        localObject = new ITelephony.Stub.Proxy(paramIBinder);
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
      while (true)
      {
        return bool2;
        paramParcel2.writeString("com.android.internal.telephony.ITelephony");
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        dial(paramParcel1.readString());
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        call(paramParcel1.readString());
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool19 = showCallScreen();
        paramParcel2.writeNoException();
        if (bool19);
        for (int i21 = 1; ; i21 = 0)
        {
          paramParcel2.writeInt(i21);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool17;
        if (paramParcel1.readInt() != 0)
        {
          bool17 = true;
          label448: boolean bool18 = showCallScreenWithDialpad(bool17);
          paramParcel2.writeNoException();
          if (!bool18)
            break label486;
        }
        label486: for (int i20 = 1; ; i20 = 0)
        {
          paramParcel2.writeInt(i20);
          bool2 = true;
          break;
          bool17 = false;
          break label448;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool16 = endCall();
        paramParcel2.writeNoException();
        if (bool16);
        for (int i19 = 1; ; i19 = 0)
        {
          paramParcel2.writeInt(i19);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        answerRingingCall();
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        silenceRinger();
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool15 = isOffhook();
        paramParcel2.writeNoException();
        if (bool15);
        for (int i18 = 1; ; i18 = 0)
        {
          paramParcel2.writeInt(i18);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool14 = isRinging();
        paramParcel2.writeNoException();
        if (bool14);
        for (int i17 = 1; ; i17 = 0)
        {
          paramParcel2.writeInt(i17);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool13 = isIdle();
        paramParcel2.writeNoException();
        if (bool13);
        for (int i16 = 1; ; i16 = 0)
        {
          paramParcel2.writeInt(i16);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool12 = isRadioOn();
        paramParcel2.writeNoException();
        if (bool12);
        for (int i15 = 1; ; i15 = 0)
        {
          paramParcel2.writeInt(i15);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool11 = isSimPinEnabled();
        paramParcel2.writeNoException();
        if (bool11);
        for (int i14 = 1; ; i14 = 0)
        {
          paramParcel2.writeInt(i14);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        cancelMissedCallsNotification();
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool10 = supplyPin(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (bool10);
        for (int i13 = 1; ; i13 = 0)
        {
          paramParcel2.writeInt(i13);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool9 = handlePinMmi(paramParcel1.readString());
        paramParcel2.writeNoException();
        if (bool9);
        for (int i12 = 1; ; i12 = 0)
        {
          paramParcel2.writeInt(i12);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        toggleRadioOnOff();
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool7;
        if (paramParcel1.readInt() != 0)
        {
          bool7 = true;
          label932: boolean bool8 = setRadio(bool7);
          paramParcel2.writeNoException();
          if (!bool8)
            break label970;
        }
        label970: for (int i11 = 1; ; i11 = 0)
        {
          paramParcel2.writeInt(i11);
          bool2 = true;
          break;
          bool7 = false;
          break label932;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        updateServiceLocation();
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        enableLocationUpdates();
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        disableLocationUpdates();
        paramParcel2.writeNoException();
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i10 = enableApnType(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i10);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i9 = disableApnType(paramParcel1.readString());
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i9);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool6 = enableDataConnectivity();
        paramParcel2.writeNoException();
        if (bool6);
        for (int i8 = 1; ; i8 = 0)
        {
          paramParcel2.writeInt(i8);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool5 = disableDataConnectivity();
        paramParcel2.writeNoException();
        if (bool5);
        for (int i7 = 1; ; i7 = 0)
        {
          paramParcel2.writeInt(i7);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool4 = isDataConnectivityPossible();
        paramParcel2.writeNoException();
        if (bool4);
        for (int i6 = 1; ; i6 = 0)
        {
          paramParcel2.writeInt(i6);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        Bundle localBundle = getCellLocation();
        paramParcel2.writeNoException();
        if (localBundle != null)
        {
          paramParcel2.writeInt(1);
          localBundle.writeToParcel(paramParcel2, 1);
        }
        while (true)
        {
          bool2 = true;
          break;
          paramParcel2.writeInt(0);
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i5 = getCallState();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i5);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i4 = getDataActivity();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i4);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i3 = getDataState();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i3);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i2 = getActivePhoneType();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i2);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int i1 = getCdmaEriIconIndex();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(i1);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int n = getCdmaEriIconMode();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(n);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        String str = getCdmaEriText();
        paramParcel2.writeNoException();
        paramParcel2.writeString(str);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        boolean bool3 = getCdmaNeedsProvisioning();
        paramParcel2.writeNoException();
        if (bool3);
        for (int m = 1; ; m = 0)
        {
          paramParcel2.writeInt(m);
          bool2 = true;
          break;
        }
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int k = getVoiceMessageCount();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(k);
        bool2 = true;
        continue;
        paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
        int j = getNetworkType();
        paramParcel2.writeNoException();
        paramParcel2.writeInt(j);
        bool2 = true;
      }
    case 37:
    }
    paramParcel1.enforceInterface("com.android.internal.telephony.ITelephony");
    boolean bool1 = hasIccCard();
    paramParcel2.writeNoException();
    if (bool1);
    for (int i = 1; ; i = 0)
    {
      paramParcel2.writeInt(i);
      bool2 = true;
      break;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.android.internal.telephony.ITelephony.Stub
 * JD-Core Version:    0.6.2
 */