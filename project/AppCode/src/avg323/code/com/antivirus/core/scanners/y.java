package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class y
  implements Parcelable.Creator
{
  public ScannerFilesResult a(Parcel paramParcel)
  {
    return new ScannerFilesResult(paramParcel, null);
  }

  public ScannerFilesResult[] a(int paramInt)
  {
    return new ScannerFilesResult[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.y
 * JD-Core Version:    0.6.2
 */