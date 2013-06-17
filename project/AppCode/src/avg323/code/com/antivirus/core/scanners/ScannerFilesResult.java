package com.antivirus.core.scanners;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Set;
import java.util.TreeMap;

public class ScannerFilesResult extends e
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new y();
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

  public int a()
  {
    return this.c.size();
  }

  public String a(TreeMap paramTreeMap, String paramString)
  {
    Object localObject;
    if (this.e == null)
      localObject = null;
    while (true)
    {
      return localObject;
      f localf = (f)this.e.get(paramString);
      if (localf == null)
      {
        localObject = null;
      }
      else
      {
        String str = (String)paramTreeMap.get(localf.e);
        if (str == null)
          localObject = (String)this.d.get(localf.e);
        else
          localObject = str;
      }
    }
  }

  public void a(ObjectInputStream paramObjectInputStream)
  {
    super.a(paramObjectInputStream);
    this.b = paramObjectInputStream.readInt();
    this.c = ((ArrayList)paramObjectInputStream.readObject());
    this.d = ((TreeMap)paramObjectInputStream.readObject());
    this.e = ((TreeMap)paramObjectInputStream.readObject());
  }

  public void a(ObjectOutputStream paramObjectOutputStream)
  {
    super.a(paramObjectOutputStream);
    paramObjectOutputStream.writeInt(this.b);
    paramObjectOutputStream.writeObject(this.c);
    paramObjectOutputStream.writeObject(this.d);
    paramObjectOutputStream.writeObject(this.e);
  }

  public void a(String paramString)
  {
    this.c.remove(paramString);
    if (this.c.size() == 0)
      this.a = true;
  }

  public void a(String paramString1, String paramString2, String paramString3, String paramString4, g paramg, String paramString5, String paramString6, String paramString7)
  {
    b(paramString1);
    if (this.e == null)
      this.e = new TreeMap();
    this.e.put(paramString1, new f(paramString2, paramString3, paramString4, paramg, paramString5, paramString6, paramString7));
  }

  public void b()
  {
    if ((this.e == null) || (this.e.size() == 0));
    while (true)
    {
      return;
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator1 = this.e.keySet().iterator();
      while (localIterator1.hasNext())
      {
        String str2 = (String)localIterator1.next();
        if ("0".equals(((f)this.e.get(str2)).f))
          localArrayList.add(str2);
      }
      Iterator localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        String str1 = (String)localIterator2.next();
        this.e.remove(str1);
        this.c.remove(str1);
      }
      if (this.c.size() == 0)
        this.a = true;
    }
  }

  public void b(String paramString)
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
 * Qualified Name:     com.antivirus.core.scanners.ScannerFilesResult
 * JD-Core Version:    0.6.2
 */