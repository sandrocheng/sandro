package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;

public class ScannerSmsResult extends e
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new ah();
  public ArrayList b = new ArrayList();

  public ScannerSmsResult()
  {
  }

  private ScannerSmsResult(Parcel paramParcel)
  {
    this.b = new ArrayList();
    paramParcel.readList(this.b, getClass().getClassLoader());
  }

  public int a()
  {
    return this.b.size();
  }

  public void a(ObjectInputStream paramObjectInputStream)
  {
    super.a(paramObjectInputStream);
    this.b = ((ArrayList)paramObjectInputStream.readObject());
  }

  public void a(ObjectOutputStream paramObjectOutputStream)
  {
    super.a(paramObjectOutputStream);
    paramObjectOutputStream.writeObject(this.b);
  }

  public void b()
  {
    this.a = true;
    this.b.clear();
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(this.b);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.ScannerSmsResult
 * JD-Core Version:    0.6.2
 */