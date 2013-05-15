package com.avast.android.generic.ui.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class s
  implements Parcelable.Creator
{
  public RowImage.SavedState a(Parcel paramParcel)
  {
    return new RowImage.SavedState(paramParcel, null);
  }

  public RowImage.SavedState[] a(int paramInt)
  {
    return new RowImage.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.s
 * JD-Core Version:    0.6.2
 */