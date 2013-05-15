package com.avast.android.generic.ui.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class ac
  implements Parcelable.Creator
{
  public SwitchRow.SavedState a(Parcel paramParcel)
  {
    return new SwitchRow.SavedState(paramParcel, null);
  }

  public SwitchRow.SavedState[] a(int paramInt)
  {
    return new SwitchRow.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.ac
 * JD-Core Version:    0.6.2
 */