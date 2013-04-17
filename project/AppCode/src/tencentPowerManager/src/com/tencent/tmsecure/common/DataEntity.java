package com.tencent.tmsecure.common;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import el;

public final class DataEntity
  implements Parcelable
{
  public static final Parcelable.Creator<DataEntity> CREATOR = new el();
  private Bundle a;
  private int b;

  public DataEntity(int paramInt)
  {
    this.b = paramInt;
    this.a = new Bundle();
  }

  private DataEntity(Parcel paramParcel)
  {
    this.b = paramParcel.readInt();
    this.a = paramParcel.readBundle();
  }

  public final Bundle bundle()
  {
    return this.a;
  }

  public final int describeContents()
  {
    return 0;
  }

  public final int what()
  {
    return this.b;
  }

  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.b);
    paramParcel.writeBundle(this.a);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.tmsecure.common.DataEntity
 * JD-Core Version:    0.6.2
 */