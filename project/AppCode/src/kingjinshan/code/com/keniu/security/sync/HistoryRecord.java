package com.keniu.security.sync;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class HistoryRecord
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new h();
  private String a;
  private String b;
  private String c;

  public HistoryRecord()
  {
  }

  private HistoryRecord(Parcel paramParcel, byte paramByte)
  {
    String[] arrayOfString = { "", "", "" };
    paramParcel.readStringArray(arrayOfString);
    this.a = arrayOfString[0];
    this.b = arrayOfString[1];
    this.c = arrayOfString[2];
  }

  public HistoryRecord(String paramString1, String paramString2, String paramString3)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.c = paramString3;
  }

  public final String a()
  {
    return this.a;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final String b()
  {
    return this.b;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final String c()
  {
    return this.c;
  }

  public final void c(String paramString)
  {
    this.c = paramString;
  }

  public int describeContents()
  {
    return 0;
  }

  public String toString()
  {
    return "{ fileName:" + this.a + ", createTime:" + this.b + ", fileSize:" + this.c + " }";
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    String[] arrayOfString = new String[3];
    arrayOfString[0] = this.a;
    arrayOfString[1] = this.b;
    arrayOfString[2] = this.c;
    paramParcel.writeStringArray(arrayOfString);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.HistoryRecord
 * JD-Core Version:    0.6.2
 */