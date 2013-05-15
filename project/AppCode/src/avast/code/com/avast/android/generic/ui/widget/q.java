package com.avast.android.generic.ui.widget;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class q
  implements Parcelable.Creator
{
  public PasswordTextView.SavedState a(Parcel paramParcel)
  {
    return new PasswordTextView.SavedState(paramParcel);
  }

  public PasswordTextView.SavedState[] a(int paramInt)
  {
    return new PasswordTextView.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.q
 * JD-Core Version:    0.6.2
 */