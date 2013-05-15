package com.avast.android.generic.notification;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class r
  implements Parcelable.Creator
{
  public AvastPendingIntent a(Parcel paramParcel)
  {
    return new AvastPendingIntent(paramParcel, null);
  }

  public AvastPendingIntent[] a(int paramInt)
  {
    return new AvastPendingIntent[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.notification.r
 * JD-Core Version:    0.6.2
 */