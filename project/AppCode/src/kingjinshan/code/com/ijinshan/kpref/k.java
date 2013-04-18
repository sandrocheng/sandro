package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class k
  implements Parcelable.Creator
{
  private static Preference.BaseSavedState a(Parcel paramParcel)
  {
    return new Preference.BaseSavedState(paramParcel);
  }

  private static Preference.BaseSavedState[] a(int paramInt)
  {
    return new Preference.BaseSavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.k
 * JD-Core Version:    0.6.2
 */