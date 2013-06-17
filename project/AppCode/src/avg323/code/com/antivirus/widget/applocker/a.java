package com.antivirus.widget.applocker;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public AppLockerWidgetPlugin a(Parcel paramParcel)
  {
    return new AppLockerWidgetPlugin(paramParcel);
  }

  public AppLockerWidgetPlugin[] a(int paramInt)
  {
    return new AppLockerWidgetPlugin[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.widget.applocker.a
 * JD-Core Version:    0.6.2
 */