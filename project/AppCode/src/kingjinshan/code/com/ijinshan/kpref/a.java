package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class a
  implements Parcelable.Creator
{
  private static CheckBoxPreference.SavedState a(Parcel paramParcel)
  {
    return new CheckBoxPreference.SavedState(paramParcel);
  }

  private static CheckBoxPreference.SavedState[] a(int paramInt)
  {
    return new CheckBoxPreference.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.a
 * JD-Core Version:    0.6.2
 */