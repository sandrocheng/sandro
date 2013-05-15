package com.dolphin.browser.addons;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class BookmarkTreeNode
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new f();
  public long a;
  public String b;
  public String c;
  public long d;

  public BookmarkTreeNode()
  {
  }

  public BookmarkTreeNode(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readLong();
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
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.dolphin.browser.addons.BookmarkTreeNode
 * JD-Core Version:    0.6.2
 */