package com.google.android.gms.analytics.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  public Command a(Parcel paramParcel)
  {
    return new Command(paramParcel);
  }

  public Command[] a(int paramInt)
  {
    return new Command[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.google.android.gms.analytics.internal.a
 * JD-Core Version:    0.6.2
 */