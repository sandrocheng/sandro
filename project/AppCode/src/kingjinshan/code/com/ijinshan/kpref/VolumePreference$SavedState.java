package com.ijinshan.kpref;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

class VolumePreference$SavedState extends Preference.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new z();
  ac a = new ac();

  public VolumePreference$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a.a = paramParcel.readInt();
    this.a.b = paramParcel.readInt();
  }

  public VolumePreference$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  final ac a()
  {
    return this.a;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a.a);
    paramParcel.writeInt(this.a.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kpref.VolumePreference.SavedState
 * JD-Core Version:    0.6.2
 */