package com.keniu.security.a;

import android.content.pm.ApplicationInfo;
import java.io.BufferedInputStream;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

public final class f
{
  ArrayList a;
  ArrayList b;
  String c = "ss";

  private static f a()
  {
    return new f();
  }

  public static ArrayList b(ApplicationInfo paramApplicationInfo)
  {
    System.currentTimeMillis();
    ArrayList localArrayList = new ArrayList();
    File localFile = new File(paramApplicationInfo.publicSourceDir);
    try
    {
      ZipFile localZipFile = new ZipFile(localFile);
      ZipEntry localZipEntry = localZipFile.getEntry("AndroidManifest.xml");
      BufferedInputStream localBufferedInputStream = new BufferedInputStream(localZipFile.getInputStream(localZipEntry));
      localBufferedInputStream.mark((int)localZipEntry.getSize());
      b localb = new b(localBufferedInputStream);
      for (int i = 0; i < localb.a(); i++)
        localArrayList.add(r.a(localb.a(i).trim()));
      localBufferedInputStream.close();
      return localArrayList;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException = localException;
        localException.printStackTrace();
      }
    }
    finally
    {
    }
  }

  public static ArrayList c(ApplicationInfo paramApplicationInfo)
  {
    return k.a(paramApplicationInfo);
  }

  public final boolean a(ApplicationInfo paramApplicationInfo)
  {
    h localh = new h(this);
    int i = 0;
    int j;
    label26: int k;
    int m;
    int n;
    label60: label219: int i8;
    label262: int i2;
    int i1;
    if (i < a.b.size())
    {
      j = 0;
      if (j < ((e)a.b.get(i)).a().size())
      {
        k = 0;
        m = 1;
        n = 0;
        if (k < ((e)a.b.get(i)).b().size() / ((e)a.b.get(i)).a().size())
          if (((p)((e)a.b.get(i)).b().get(k)).a() == 1)
          {
            String str2 = ((p)((e)a.b.get(i)).b().get(k + j * 2)).b();
            if (localh.a.a.size() <= 0)
            {
              if (!localh.a.c.equals(paramApplicationInfo.packageName))
                break label299;
              if (s.b() != null)
                localh.a.a = s.b();
            }
            Iterator localIterator2 = localh.a.a.iterator();
            while (localIterator2.hasNext())
              if (((String)localIterator2.next()).contains(str2))
              {
                i8 = 1;
                if (i8 == 0)
                  break label338;
                int i9 = n + 1;
                int i10 = m;
                i2 = i9;
                i1 = i10;
              }
          }
      }
    }
    while (true)
    {
      k++;
      n = i2;
      m = i1;
      break label60;
      label299: f localf2 = localh.a;
      localf2.a = b(paramApplicationInfo);
      s.a(localh.a.a);
      break label219;
      i8 = 0;
      break label262;
      label338: i2 = n;
      i1 = 0;
      continue;
      if ((m == 1) && (((p)((e)a.b.get(i)).b().get(k)).a() == 2))
      {
        if (s.a().containsKey(paramApplicationInfo.packageName))
        {
          int i6 = n + 1;
          int i7 = m;
          i2 = i6;
          i1 = i7;
        }
        else
        {
          String str1 = ((p)((e)a.b.get(i)).b().get(k + j * 2)).b();
          if (localh.a.b.size() <= 0)
          {
            if (!localh.a.c.equals(paramApplicationInfo.packageName))
              break label570;
            if (s.c() != null)
              localh.a.b = s.c();
          }
          label501: Iterator localIterator1 = localh.a.b.iterator();
          int i3;
          while (localIterator1.hasNext())
            if (((String)localIterator1.next()).equals(str1))
              i3 = 1;
          while (true)
            if (i3 != 0)
            {
              int i4 = n + 1;
              int i5 = m;
              i2 = i4;
              i1 = i5;
              break;
              label570: f localf1 = localh.a;
              localf1.b = k.a(paramApplicationInfo);
              s.b(localh.a.b);
              break label501;
              i3 = 0;
              continue;
              if (n == 2)
                this.c = paramApplicationInfo.packageName;
              for (boolean bool = true; ; bool = false)
              {
                return bool;
                j++;
                break label26;
                i++;
                break;
                this.c = paramApplicationInfo.packageName;
              }
            }
        }
      }
      else
      {
        i1 = m;
        i2 = n;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a.f
 * JD-Core Version:    0.6.2
 */