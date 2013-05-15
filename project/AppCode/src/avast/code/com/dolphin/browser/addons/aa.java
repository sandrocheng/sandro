package com.dolphin.browser.addons;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class aa
  implements Parcelable.Creator
{
  public DownloadInfo a(Parcel paramParcel)
  {
    return new DownloadInfo(paramParcel);
  }

  public DownloadInfo[] a(int paramInt)
  {
    return new DownloadInfo[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.aa
 * JD-Core Version:    0.6.2
 */