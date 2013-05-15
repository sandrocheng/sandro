package com.avast.android.mobilesecurity.ui;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.view.View.BaseSavedState;

class LockPatternView$SavedState extends View.BaseSavedState
{
  public static final Parcelable.Creator CREATOR = new f();
  private final String a;
  private final int b;
  private final boolean c;
  private final boolean d;
  private final boolean e;

  private LockPatternView$SavedState(Parcel paramParcel)
  {
    super(paramParcel);
    this.a = paramParcel.readString();
    this.b = paramParcel.readInt();
    this.c = ((Boolean)paramParcel.readValue(null)).booleanValue();
    this.d = ((Boolean)paramParcel.readValue(null)).booleanValue();
    this.e = ((Boolean)paramParcel.readValue(null)).booleanValue();
  }

  private LockPatternView$SavedState(Parcelable paramParcelable, String paramString, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    super(paramParcelable);
    this.a = paramString;
    this.b = paramInt;
    this.c = paramBoolean1;
    this.d = paramBoolean2;
    this.e = paramBoolean3;
  }

  public String a()
  {
    return this.a;
  }

  public int b()
  {
    return this.b;
  }

  public boolean c()
  {
    return this.c;
  }

  public boolean d()
  {
    return this.d;
  }

  public boolean e()
  {
    return this.e;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(this.a);
    paramParcel.writeInt(this.b);
    paramParcel.writeValue(Boolean.valueOf(this.c));
    paramParcel.writeValue(Boolean.valueOf(this.d));
    paramParcel.writeValue(Boolean.valueOf(this.e));
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.ui.LockPatternView.SavedState
 * JD-Core Version:    0.6.2
 */