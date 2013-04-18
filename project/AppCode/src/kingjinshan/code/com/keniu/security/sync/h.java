package com.keniu.security.sync;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class h
  implements Parcelable.Creator
{
  private static HistoryRecord a(Parcel paramParcel)
  {
    return new HistoryRecord(paramParcel);
  }

  private static HistoryRecord[] a(int paramInt)
  {
    return new HistoryRecord[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.h
 * JD-Core Version:    0.6.2
 */