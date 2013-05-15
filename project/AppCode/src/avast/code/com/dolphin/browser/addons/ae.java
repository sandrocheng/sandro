package com.dolphin.browser.addons;

import android.os.Parcel;
import android.os.Parcelable.Creator;

class ae
  implements Parcelable.Creator
{
  public HistoryInfo a(Parcel paramParcel)
  {
    return new HistoryInfo(paramParcel);
  }

  public HistoryInfo[] a(int paramInt)
  {
    return new HistoryInfo[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.ae
 * JD-Core Version:    0.6.2
 */