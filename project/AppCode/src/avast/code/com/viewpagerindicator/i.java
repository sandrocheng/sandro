package com.viewpagerindicator;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class i
  implements Parcelable.Creator
{
  public TitlePageIndicator.SavedState a(Parcel paramParcel)
  {
    return new TitlePageIndicator.SavedState(paramParcel, null);
  }

  public TitlePageIndicator.SavedState[] a(int paramInt)
  {
    return new TitlePageIndicator.SavedState[paramInt];
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.viewpagerindicator.i
 * JD-Core Version:    0.6.2
 */