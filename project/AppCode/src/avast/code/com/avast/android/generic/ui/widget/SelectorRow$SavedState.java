package com.avast.android.generic.ui.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class SelectorRow$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new v();
  int a;

  private SelectorRow$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readBundle().getInt("selected");
  }

  SelectorRow$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putInt("selected", this.a);
    paramParcel.writeBundle(localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.SelectorRow.SavedState
 * JD-Core Version:    0.6.2
 */