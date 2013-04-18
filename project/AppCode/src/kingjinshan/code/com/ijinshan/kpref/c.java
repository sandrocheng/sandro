package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class c
  implements Parcelable.Creator
{
  private static EditTextPreference.SavedState a(Parcel paramParcel)
  {
    return new EditTextPreference.SavedState(paramParcel);
  }

  private static EditTextPreference.SavedState[] a(int paramInt)
  {
    return new EditTextPreference.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.c
 * JD-Core Version:    0.6.2
 */