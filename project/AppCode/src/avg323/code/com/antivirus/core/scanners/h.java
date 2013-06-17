package com.antivirus.core.scanners;

import android.content.Context;
import com.avg.toolkit.f.a;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.TreeMap;

public class h
{
  public long a = 0L;
  public long b = 0L;
  public ScannerPackagesResult c = null;
  public ag d = null;
  public s e = null;
  public ScannerFilesResult f = null;
  public ScannerSmsResult g = null;
  public TreeMap h = null;

  private void a(ObjectInputStream paramObjectInputStream)
  {
    this.b = paramObjectInputStream.readLong();
    long l = paramObjectInputStream.readLong();
    if ((1L & l) != 0L)
      this.c = new ScannerPackagesResult();
    if ((0x4 & l) != 0L)
      this.f = new ScannerFilesResult();
    if ((0x8 & l) != 0L)
      this.g = new ScannerSmsResult();
    if ((0x10 & l) != 0L)
      this.d = new ag();
    if ((l & 0x2) != 0L)
      this.e = new s();
    if (this.c != null)
      this.c.a(paramObjectInputStream);
    if (this.f != null)
      this.f.a(paramObjectInputStream);
    if (this.g != null)
      this.g.a(paramObjectInputStream);
    if (this.d != null)
      this.d.a(paramObjectInputStream);
    if (this.e != null)
      this.e.a(paramObjectInputStream);
  }

  private void a(ObjectOutputStream paramObjectOutputStream)
  {
    paramObjectOutputStream.writeLong(this.b);
    long l = 0L;
    if (this.c != null)
      l += 1L;
    if (this.f != null)
      l += 4L;
    if (this.g != null)
      l += 8L;
    if (this.d != null)
      l += 16L;
    if (this.e != null)
      l += 2L;
    paramObjectOutputStream.writeLong(l);
    if (this.c != null)
      this.c.a(paramObjectOutputStream);
    if (this.f != null)
      this.f.a(paramObjectOutputStream);
    if (this.g != null)
      this.g.a(paramObjectOutputStream);
    if (this.d != null)
      this.d.a(paramObjectOutputStream);
    if (this.e != null)
      this.e.a(paramObjectOutputStream);
  }

  public static void c(Context paramContext)
  {
    paramContext.deleteFile("ScanResult.obj");
  }

  public void a()
  {
    this.a = System.currentTimeMillis();
  }

  public void a(Context paramContext)
  {
    if (paramContext.getFileStreamPath("ScanResult.obj").length() == 0L);
    while (true)
    {
      return;
      try
      {
        ObjectInputStream localObjectInputStream = new ObjectInputStream(paramContext.openFileInput("ScanResult.obj"));
        a(localObjectInputStream);
        localObjectInputStream.close();
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
      }
      catch (Exception localException)
      {
        a.a(localException);
      }
    }
  }

  public void b()
  {
    this.a = 0L;
  }

  public void b(Context paramContext)
  {
    try
    {
      FileOutputStream localFileOutputStream = paramContext.openFileOutput("ScanResult.obj", 0);
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localFileOutputStream);
      a(localObjectOutputStream);
      localObjectOutputStream.close();
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        a.a(localException);
    }
  }

  public void c()
  {
    this.b = System.currentTimeMillis();
  }

  public boolean d()
  {
    if (((this.c != null) && (!this.c.a)) || ((this.d != null) && (!this.d.a)) || ((this.e != null) && (!this.e.a)) || ((this.f != null) && (!this.f.a)) || ((this.g != null) && (!this.g.a)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int e()
  {
    boolean bool = d();
    int i = 0;
    if (bool)
    {
      ScannerPackagesResult localScannerPackagesResult = this.c;
      i = 0;
      if (localScannerPackagesResult != null)
        i = 0 + this.c.a();
      if (this.f != null)
        i += this.f.a();
      if (this.g != null)
        i += this.g.a();
      if (this.d != null)
        i += this.d.a();
      if (this.e != null)
        i += this.e.a();
    }
    return i;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.scanners.h
 * JD-Core Version:    0.6.2
 */