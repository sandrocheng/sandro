package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class EditTextPreference$SavedState extends Preference.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new c();
  String a;

  public EditTextPreference$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readString();
  }

  public EditTextPreference$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.EditTextPreference.SavedState
 * JD-Core Version:    0.6.2
 */