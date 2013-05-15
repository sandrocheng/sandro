package com.avast.android.mobilesecurity.ui;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class f
  implements Parcelable.Creator
{
  public LockPatternView.SavedState a(Parcel paramParcel)
  {
    return new LockPatternView.SavedState(paramParcel, null);
  }

  public LockPatternView.SavedState[] a(int paramInt)
  {
    return new LockPatternView.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.f
 * JD-Core Version:    0.6.2
 */