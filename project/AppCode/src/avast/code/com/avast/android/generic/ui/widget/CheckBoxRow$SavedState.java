package com.avast.android.generic.ui.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class CheckBoxRow$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new d();
  boolean a;
  boolean b;

  private CheckBoxRow$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    Bundle localBundle = paramParcel.readBundle();
    this.a = localBundle.getBoolean("checked");
    this.b = localBundle.getBoolean("enabled");
  }

  CheckBoxRow$SavedState(Parcelable paramParcelable)
  {
    super(paramParcelable);
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("checked", this.a);
    localBundle.putBoolean("enabled", this.b);
    paramParcel.writeBundle(localBundle);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.generic.ui.widget.CheckBoxRow.SavedState
 * JD-Core Version:    0.6.2
 */