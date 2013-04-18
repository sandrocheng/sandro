package com.hoi.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator
{
  private static BinaryPicker.SavedState a(Parcel paramParcel)
  {
    return new BinaryPicker.SavedState(paramParcel);
  }

  private static BinaryPicker.SavedState[] a(int paramInt)
  {
    return new BinaryPicker.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.d
 * JD-Core Version:    0.6.2
 */