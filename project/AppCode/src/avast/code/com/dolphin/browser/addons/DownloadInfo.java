package com.dolphin.browser.addons;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class DownloadInfo
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new aa();
  public long a;
  public String b;
  public String c;
  public String d;
  public String e;
  public int f;
  public int g;
  public String h;
  public String i;
  public String j;
  public int k;
  public String l;
  public String m;

  public DownloadInfo()
  {
    this.f = 1;
  }

  public DownloadInfo(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readString();
    this.e = paramParcel.readString();
    this.f = paramParcel.readInt();
    this.g = paramParcel.readInt();
    this.h = paramParcel.readString();
    this.i = paramParcel.readString();
    this.j = paramParcel.readString();
    this.k = paramParcel.readInt();
    this.l = paramParcel.readString();
    this.m = paramParcel.readString();
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
    paramParcel.writeString(this.d);
    paramParcel.writeString(this.e);
    paramParcel.writeInt(this.f);
    paramParcel.writeInt(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeString(this.i);
    paramParcel.writeString(this.j);
    paramParcel.writeInt(this.k);
    paramParcel.writeString(this.l);
    paramParcel.writeString(this.m);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.DownloadInfo
 * JD-Core Version:    0.6.2
 */