package com.avast.android.mobilesecurity.scan;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class ScanProgress
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new h();
  public String a;
  public String b;
  public String c;
  public int d;
  public int e;
  public int f;
  public int g;
  public int h;
  public int i;
  public boolean j;
  public String k;
  public int l;
  public boolean m;

  protected ScanProgress(Parcel paramParcel)
  {
    this.a = paramParcel.readString();
    this.b = paramParcel.readString();
    this.c = paramParcel.readString();
    this.d = paramParcel.readInt();
    this.e = paramParcel.readInt();
    this.f = paramParcel.readInt();
    this.g = paramParcel.readInt();
    this.h = paramParcel.readInt();
    boolean bool2;
    if (paramParcel.readInt() > 0)
    {
      bool2 = bool1;
      this.j = bool2;
      this.k = paramParcel.readString();
      this.i = paramParcel.readInt();
      this.l = paramParcel.readInt();
      if (paramParcel.readInt() <= 0)
        break label126;
    }
    while (true)
    {
      this.m = bool1;
      return;
      bool2 = false;
      break;
      label126: bool1 = false;
    }
  }

  ScanProgress(ScanProgress paramScanProgress)
  {
    this(paramScanProgress.a, paramScanProgress.b, paramScanProgress.d);
    this.c = paramScanProgress.c;
    this.e = paramScanProgress.e;
    this.f = paramScanProgress.f;
    this.h = paramScanProgress.h;
    this.i = paramScanProgress.i;
    this.j = paramScanProgress.j;
    this.l = paramScanProgress.l;
    this.m = paramScanProgress.m;
  }

  public ScanProgress(String paramString1, String paramString2, int paramInt)
  {
    this.a = paramString1;
    this.b = paramString2;
    this.d = paramInt;
    this.e = 0;
    this.f = 0;
    this.h = 0;
    this.m = false;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int n = 1;
    paramParcel.writeString(this.a);
    paramParcel.writeString(this.b);
    paramParcel.writeString(this.c);
    paramParcel.writeInt(this.d);
    paramParcel.writeInt(this.e);
    paramParcel.writeInt(this.f);
    paramParcel.writeInt(this.g);
    paramParcel.writeInt(this.h);
    int i1;
    if (this.j)
    {
      i1 = n;
      paramParcel.writeInt(i1);
      paramParcel.writeString(this.k);
      paramParcel.writeInt(this.i);
      paramParcel.writeInt(this.l);
      if (!this.m)
        break label125;
    }
    while (true)
    {
      paramParcel.writeInt(n);
      return;
      i1 = 0;
      break;
      label125: n = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.scan.ScanProgress
 * JD-Core Version:    0.6.2
 */