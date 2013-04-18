package com.ijinshan.kinghelper.common;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ContactItem
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new a();
  public String a;
  public String b;
  public int c;
  public byte[] d;

  public ContactItem()
  {
  }

  private ContactItem(Parcel paramParcel, byte paramByte)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readInt();
    int i = paramParcel.readInt();
    if (i != 0)
    {
      this.d = new byte[i];
      paramParcel.readByteArray(this.d);
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c);
    if ((this.d != null) && (this.d.length != 0))
    {
      paramParcel.writeInt(this.d.length);
      paramParcel.writeByteArray(this.d);
    }
    while (true)
    {
      return;
      paramParcel.writeInt(0);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.common.ContactItem
 * JD-Core Version:    0.6.2
 */