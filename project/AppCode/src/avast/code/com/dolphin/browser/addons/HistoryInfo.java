package com.dolphin.browser.addons;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class HistoryInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new ae();
  public long a;
  public String b;
  public String c;
  public long d;
  public int e;

  public HistoryInfo()
  {
  }

  public HistoryInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readLong();
    this.e = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeLong(this.d);
    paramParcel.writeInt(this.e);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.HistoryInfo
 * JD-Core Version:    0.6.2
 */