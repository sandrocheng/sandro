package com.keniu.security.util;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.ijinshan.kpref.Preference.BaseSavedState;

class CustomDialogPreference$SavedState extends Preference.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new h();
  boolean a;
  Bundle b;

  public CustomDialogPreference$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    if (paramParcel.readInt() == 1);
    for (boolean bool = true; ; bool = false)
    {
      this.a = bool;
      this.b = paramParcel.readBundle();
      return;
    }
  }

  public CustomDialogPreference$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    if (this.a);
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeInt(i);
      paramParcel.writeBundle(this.b);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.util.CustomDialogPreference.SavedState
 * JD-Core Version:    0.6.2
 */