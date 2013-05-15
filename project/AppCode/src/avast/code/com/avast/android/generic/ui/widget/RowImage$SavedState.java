package com.avast.android.generic.ui.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class RowImage$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new s();
  boolean a;

  private RowImage$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readBundle().getBoolean("enabled");
  }

  RowImage$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("enabled", this.a);
    paramParcel.writeBundle(localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.RowImage.SavedState
 * JD-Core Version:    0.6.2
 */