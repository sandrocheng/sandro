package com.keniu.security.util;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class h
  implements Parcelable.Creator
{
  private static CustomDialogPreference.SavedState a(Parcel paramParcel)
  {
    return new CustomDialogPreference.SavedState(paramParcel);
  }

  private static CustomDialogPreference.SavedState[] a(int paramInt)
  {
    return new CustomDialogPreference.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.h
 * JD-Core Version:    0.6.2
 */