package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;
import java.util.List;

public class ScannerPackagesConfig extends m
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new ab();
  public Boolean b;
  public List c;
  public int d;

  public ScannerPackagesConfig()
  {
    this.d = 99999;
    this.b = Boolean.valueOf(false);
    this.c = new ArrayList();
  }

  private ScannerPackagesConfig(Parcel paramParcel)
  {
    this.a = n.valueOf(paramParcel.readString());
    if (paramParcel.readByte() == i);
    while (true)
    {
      this.b = Boolean.valueOf(i);
      this.c = new ArrayList();
      paramParcel.readList(this.c, getClass().getClassLoader());
      this.d = paramParcel.readInt();
      return;
      int j = 0;
    }
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(this.a.name());
    if (this.b.booleanValue());
    for (int i = 1; ; i = 0)
    {
      paramParcel.writeByte((byte)i);
      paramParcel.writeList(this.c);
      paramParcel.writeInt(this.d);
      return;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.ScannerPackagesConfig
 * JD-Core Version:    0.6.2
 */