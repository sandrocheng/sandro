package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class z
  implements Parcelable.Creator
{
  private static VolumePreference.SavedState a(Parcel paramParcel)
  {
    return new VolumePreference.SavedState(paramParcel);
  }

  private static VolumePreference.SavedState[] a(int paramInt)
  {
    return new VolumePreference.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.z
 * JD-Core Version:    0.6.2
 */