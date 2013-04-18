package com.hoi.widget;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class PeriodPicker$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new ae();
  private final int a;
  private final int b;

  private PeriodPicker$SavedState(Parcel paramParcel, byte paramByte)
  {
    super(paramParcel);
    this.a = paramParcel.readInt();
    this.b = paramParcel.readInt();
  }

  private PeriodPicker$SavedState(Parcelable paramParcelable, int paramInt1, int paramInt2, byte paramByte)
  {
    super(paramParcelable);
    this.a = paramInt1;
    this.b = paramInt2;
  }

  public final int a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeInt(this.a);
    paramParcel.writeInt(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.hoi.widget.PeriodPicker.SavedState
 * JD-Core Version:    0.6.2
 */