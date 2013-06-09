package org.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.TreeMap;

public class ScannerFilesResult extends d
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new v();
  public int b = 0;
  public ArrayList c = new ArrayList();
  public TreeMap d = new TreeMap();
  public TreeMap e;

  public ScannerFilesResult()
  {
  }

  private ScannerFilesResult(Parcel paramParcel)
  {
    this.b = paramParcel.readInt();
    this.c = new ArrayList();
    paramParcel.readList(this.c, getClass().getClassLoader());
  }

  public final int a()
  {
    return this.c.size();
  }

  public final void a(ObjectInputStream paramObjectInputStream)
  {
    super.a(paramObjectInputStream);
    this.b = paramObjectInputStream.readInt();
    this.c = ((ArrayList)paramObjectInputStream.readObject());
    this.d = ((TreeMap)paramObjectInputStream.readObject());
    this.e = ((TreeMap)paramObjectInputStream.readObject());
  }

  public final void a(ObjectOutputStream paramObjectOutputStream)
  {
    super.a(paramObjectOutputStream);
    paramObjectOutputStream.writeInt(this.b);
    paramObjectOutputStream.writeObject(this.c);
    paramObjectOutputStream.writeObject(this.d);
    paramObjectOutputStream.writeObject(this.e);
  }

  public final void a(String paramString)
  {
    this.c.remove(paramString);
    if (this.c.size() == 0)
      this.a = true;
  }

  public final void a(String paramString1, String paramString2, String paramString3, String paramString4, f paramf, String paramString5)
  {
    b(paramString1);
    if (this.e == null)
      this.e = new TreeMap();
    this.e.put(paramString1, new e(paramString2, paramString3, paramString4, paramf, paramString5));
  }

  public final void b(String paramString)
  {
    this.c.add(paramString);
    this.a = false;
  }

  public int describeContents()
  {
    return 0;
  }

  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeInt(this.b);
    paramParcel.writeList(this.c);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.ScannerFilesResult
 * JD-Core Version:    0.6.2
 */