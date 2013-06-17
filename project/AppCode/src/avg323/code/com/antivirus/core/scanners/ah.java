package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ah
  implements Parcelable.Creator
{
  public ScannerSmsResult a(Parcel paramParcel)
  {
    return new ScannerSmsResult(paramParcel, null);
  }

  public ScannerSmsResult[] a(int paramInt)
  {
    return new ScannerSmsResult[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.ah
 * JD-Core Version:    0.6.2
 */