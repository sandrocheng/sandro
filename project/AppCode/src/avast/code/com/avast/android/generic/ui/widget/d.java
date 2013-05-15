package com.avast.android.generic.ui.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class d
  implements Parcelable.Creator
{
  public CheckBoxRow.SavedState a(Parcel paramParcel)
  {
    return new CheckBoxRow.SavedState(paramParcel, null);
  }

  public CheckBoxRow.SavedState[] a(int paramInt)
  {
    return new CheckBoxRow.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.d
 * JD-Core Version:    0.6.2
 */