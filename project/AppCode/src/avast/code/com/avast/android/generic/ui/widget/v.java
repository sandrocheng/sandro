package com.avast.android.generic.ui.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class v
  implements Parcelable.Creator
{
  public SelectorRow.SavedState a(Parcel paramParcel)
  {
    return new SelectorRow.SavedState(paramParcel, null);
  }

  public SelectorRow.SavedState[] a(int paramInt)
  {
    return new SelectorRow.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.v
 * JD-Core Version:    0.6.2
 */