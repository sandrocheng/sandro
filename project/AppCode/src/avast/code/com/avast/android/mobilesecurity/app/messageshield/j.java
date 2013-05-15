package com.avast.android.mobilesecurity.app.messageshield;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class j
  implements Parcelable.Creator
{
  public MessageToScan a(Parcel paramParcel)
  {
    return new MessageToScan(paramParcel, null);
  }

  public MessageToScan[] a(int paramInt)
  {
    return new MessageToScan[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.j
 * JD-Core Version:    0.6.2
 */