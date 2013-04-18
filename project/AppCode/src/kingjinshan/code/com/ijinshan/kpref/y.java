package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class y
  implements Parcelable.Creator
{
  private static PreferenceScreen.SavedState a(Parcel paramParcel)
  {
    return new PreferenceScreen.SavedState(paramParcel);
  }

  private static PreferenceScreen.SavedState[] a(int paramInt)
  {
    return new PreferenceScreen.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.y
 * JD-Core Version:    0.6.2
 */