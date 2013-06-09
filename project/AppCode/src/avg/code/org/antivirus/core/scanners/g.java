package org.antivirus.core.scanners;

import android.content.Context;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.TreeMap;
import org.antivirus.core.Logger;

public final class g
{
  public long a = 0L;
  public long b = 0L;
  public ScannerPackagesResult c = null;
  public ad d = null;
  public r e = null;
  public ScannerFilesResult f = null;
  public ScannerSmsResult g = null;
  public TreeMap h = null;

  public final void a(Context paramContext)
  {
    long l1 = paramContext.getFileStreamPath("ScanResult.obj").length();
    if (0L == l1)
      Logger.error("File size: " + l1);
    while (true)
    {
      return;
      try
      {
        ObjectInputStream localObjectInputStream = new ObjectInputStream(paramContext.openFileInput("ScanResult.obj"));
        this.b = localObjectInputStream.readLong();
        long l2 = localObjectInputStream.readLong();
        if ((1L & l2) != 0L)
          this.c = new ScannerPackagesResult();
        if ((0x4 & l2) != 0L)
          this.f = new ScannerFilesResult();
        if ((0x8 & l2) != 0L)
          this.g = new ScannerSmsResult();
        if ((0x10 & l2) != 0L)
          this.d = new ad();
        if ((l2 & 0x2) != 0L)
          this.e = new r();
        if (this.c != null)
          this.c.a(localObjectInputStream);
        if (this.f != null)
          this.f.a(localObjectInputStream);
        if (this.g != null)
          this.g.a(localObjectInputStream);
        if (this.d != null)
          this.d.a(localObjectInputStream);
        if (this.e != null)
          this.e.a(localObjectInputStream);
        localObjectInputStream.close();
      }
      catch (FileNotFoundException localFileNotFoundException)
      {
      }
      catch (Exception localException)
      {
        Logger.log(localException);
        this.a = 0L;
        this.b = 0L;
        this.c = null;
        this.d = null;
        this.e = null;
        this.f = null;
        this.g = null;
        this.h = null;
      }
    }
  }

  public final boolean a()
  {
    if (((this.c != null) && (!this.c.a)) || ((this.d != null) && (!this.d.a)) || ((this.e != null) && (!this.e.a)) || ((this.f != null) && (!this.f.a)) || ((this.g != null) && (!this.g.a)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int b()
  {
    boolean bool = a();
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
        i += 0;
    }
    return i;
  }

  public final void b(Context paramContext)
  {
    try
    {
      FileOutputStream localFileOutputStream = paramContext.openFileOutput("ScanResult.obj", 0);
      ObjectOutputStream localObjectOutputStream = new ObjectOutputStream(localFileOutputStream);
      localObjectOutputStream.writeLong(this.b);
      long l = 0L;
      if (this.c != null)
        l = 1L;
      if (this.f != null)
        l += 4L;
      if (this.g != null)
        l += 8L;
      if (this.d != null)
        l += 16L;
      if (this.e != null)
        l += 2L;
      localObjectOutputStream.writeLong(l);
      if (this.c != null)
        this.c.a(localObjectOutputStream);
      if (this.f != null)
        this.f.a(localObjectOutputStream);
      if (this.g != null)
        this.g.a(localObjectOutputStream);
      if (this.d != null)
        this.d.a(localObjectOutputStream);
      if (this.e != null)
        this.e.a(localObjectOutputStream);
      localObjectOutputStream.close();
      localFileOutputStream.close();
      return;
    }
    catch (Exception localException)
    {
      while (true)
        Logger.log(localException);
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     org.antivirus.core.scanners.g
 * JD-Core Version:    0.6.2
 */