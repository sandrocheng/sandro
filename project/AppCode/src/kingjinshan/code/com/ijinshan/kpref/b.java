package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class b
  implements Parcelable.Creator
{
  private static DialogPreference.SavedState a(Parcel paramParcel)
  {
    return new DialogPreference.SavedState(paramParcel);
  }

  private static DialogPreference.SavedState[] a(int paramInt)
  {
    return new DialogPreference.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.b
 * JD-Core Version:    0.6.2
 */