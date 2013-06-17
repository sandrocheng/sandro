package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class x
  implements Parcelable.Creator
{
  public ScannerFilesConfig a(Parcel paramParcel)
  {
    return new ScannerFilesConfig(paramParcel, null);
  }

  public ScannerFilesConfig[] a(int paramInt)
  {
    return new ScannerFilesConfig[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.x
 * JD-Core Version:    0.6.2
 */