package com.avast.android.mobilesecurity.scan;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class h
  implements Parcelable.Creator
{
  public ScanProgress a(Parcel paramParcel)
  {
    return new ScanProgress(paramParcel);
  }

  public ScanProgress[] a(int paramInt)
  {
    return new ScanProgress[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.h
 * JD-Core Version:    0.6.2
 */