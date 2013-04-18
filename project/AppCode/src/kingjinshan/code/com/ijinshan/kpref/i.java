package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class i
  implements Parcelable.Creator
{
  private static ListPreference.SavedState a(Parcel paramParcel)
  {
    return new ListPreference.SavedState(paramParcel);
  }

  private static ListPreference.SavedState[] a(int paramInt)
  {
    return new ListPreference.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.i
 * JD-Core Version:    0.6.2
 */