package com.antivirus.widget.filescanner;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public FileScannerWidgetPlugin a(Parcel paramParcel)
  {
    return new FileScannerWidgetPlugin(paramParcel);
  }

  public FileScannerWidgetPlugin[] a(int paramInt)
  {
    return new FileScannerWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.filescanner.a
 * JD-Core Version:    0.6.2
 */