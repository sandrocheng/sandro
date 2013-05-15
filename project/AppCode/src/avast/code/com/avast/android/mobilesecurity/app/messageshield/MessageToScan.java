package com.avast.android.mobilesecurity.app.messageshield;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.avast.android.mobilesecurity.engine.p;

public class MessageToScan
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new j();
  long a;
  String b;
  long c;
  int d;
  p e;
  String f;
  String g;
  String h;
  long i;
  Bundle j;

  MessageToScan()
  {
  }

  private MessageToScan(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readString();
    this.c = paramParcel.readLong();
    this.d = paramParcel.readInt();
    this.e = p.a((short)paramParcel.readInt());
    this.f = paramParcel.readString();
    this.g = paramParcel.readString();
    this.h = paramParcel.readString();
    this.i = paramParcel.readLong();
    this.j = paramParcel.readBundle();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeLong(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e.a());
    paramParcel.writeString(this.f);
    paramParcel.writeString(this.g);
    paramParcel.writeString(this.h);
    paramParcel.writeLong(this.i);
    paramParcel.writeBundle(this.j);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.messageshield.MessageToScan
 * JD-Core Version:    0.6.2
 */