package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ac
  implements Parcelable.Creator
{
  public ScannerPackagesResult a(Parcel paramParcel)
  {
    return new ScannerPackagesResult(paramParcel, null);
  }

  public ScannerPackagesResult[] a(int paramInt)
  {
    return new ScannerPackagesResult[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.ac
 * JD-Core Version:    0.6.2
 */