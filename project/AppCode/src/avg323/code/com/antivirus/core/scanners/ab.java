package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ab
  implements Parcelable.Creator
{
  public ScannerPackagesConfig a(Parcel paramParcel)
  {
    return new ScannerPackagesConfig(paramParcel, null);
  }

  public ScannerPackagesConfig[] a(int paramInt)
  {
    return new ScannerPackagesConfig[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.ab
 * JD-Core Version:    0.6.2
 */