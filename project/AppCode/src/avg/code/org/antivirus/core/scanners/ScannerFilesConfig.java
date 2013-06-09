package org.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

public class ScannerFilesConfig extends l
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new u();
  public Boolean b;
  public Boolean c;
  public Boolean d;
  public List e;
  public int f;
  public int g;

  public ScannerFilesConfig()
  {
    this.g = 9999;
    this.f = 99999;
    this.b = Boolean.valueOf(false);
    this.c = Boolean.valueOf(true);
    this.d = Boolean.valueOf(true);
    this.e = new ArrayList();
  }

  private ScannerFilesConfig(Parcel paramParcel)
  {
    this.f = paramParcel.readInt();
    if (paramParcel.readByte() == i)
    {
      int k = i;
      this.b = Boolean.valueOf(k);
      if (paramParcel.readByte() != i)
        break label108;
      int n = i;
      label43: this.c = Boolean.valueOf(n);
      if (paramParcel.readByte() != i)
        break label114;
    }
    while (true)
    {
      this.d = Boolean.valueOf(i);
      this.e = new ArrayList();
      paramParcel.readList(this.e, getClass().getClassLoader());
      this.g = paramParcel.readInt();
      return;
      int m = 0;
      break;
      label108: int i1 = 0;
      break label43;
      label114: int j = 0;
    }
  }

  public final void a()
  {
    ArrayList localArrayList = new ArrayList();
    for (int i = 0; i < this.e.size(); i++)
    {
      File localFile = (File)this.e.get(i);
      if (!localArrayList.contains(localFile))
        localArrayList.add(localFile);
    }
    this.e = localArrayList;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 1;
    paramParcel.writeInt(this.f);
    int j;
    int k;
    if (this.b.booleanValue())
    {
      j = i;
      paramParcel.writeByte((byte)j);
      if (!this.c.booleanValue())
        break label89;
      k = i;
      label43: paramParcel.writeByte((byte)k);
      if (!this.d.booleanValue())
        break label95;
    }
    while (true)
    {
      paramParcel.writeByte((byte)i);
      paramParcel.writeList(this.e);
      paramParcel.writeInt(this.g);
      return;
      j = 0;
      break;
      label89: k = 0;
      break label43;
      label95: i = 0;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.ScannerFilesConfig
 * JD-Core Version:    0.6.2
 */