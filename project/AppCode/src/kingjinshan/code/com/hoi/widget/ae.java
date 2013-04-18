package com.hoi.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ae
  implements Parcelable.Creator
{
  private static PeriodPicker.SavedState a(Parcel paramParcel)
  {
    return new PeriodPicker.SavedState(paramParcel);
  }

  private static PeriodPicker.SavedState[] a(int paramInt)
  {
    return new PeriodPicker.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.ae
 * JD-Core Version:    0.6.2
 */