package com.ijinshan.kinghelper.firewall;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ServicesSmsListActivity$SMSContent
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new ee();
  public long a;
  public String b;
  public int c;
  public String d;
  public int e;

  public ServicesSmsListActivity$SMSContent()
  {
  }

  public ServicesSmsListActivity$SMSContent(Parcel paramParcel)
  {
    this.a = paramParcel.readLong();
    this.b = paramParcel.readString();
    this.c = paramParcel.readInt();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeInt(this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.ijinshan.kinghelper.firewall.ServicesSmsListActivity.SMSContent
 * JD-Core Version:    0.6.2
 */