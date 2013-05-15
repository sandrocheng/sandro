package com.avast.android.mobilesecurity.filebrowser;

import com.avast.android.generic.filebrowser.f;
import com.avast.android.generic.filebrowser.g;
import com.avast.android.generic.util.ad;
import java.io.File;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Stack;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.Semaphore;

public class h
  implements f
{
  private static final Object a = new Object();
  private static List b = null;
  private static ad c = new ad();
  private static Map d = new HashMap();
  private static LinkedBlockingQueue e = new LinkedBlockingQueue();
  private static j f = null;
  private static Stack g = new Stack();
  private static i h = null;
  private static Semaphore i = new Semaphore(0);
  private final File j;
  private String k = null;
  private f[] l = null;
  private final boolean m;
  private Long n = null;
  private Long o = null;
  private com.avast.android.generic.filebrowser.h p = null;
  private g q = null;

  private h(File paramFile)
  {
    n();
    this.j = paramFile;
    this.m = false;
  }

  private h(String paramString)
  {
    n();
    if ("ROOT_PATH".equals(paramString))
      this.m = true;
    for (this.j = null; ; this.j = new File(paramString))
    {
      return;
      this.m = false;
    }
  }

  public static h a(File paramFile)
  {
    h localh;
    synchronized (d)
    {
      localh = (h)d.get(paramFile.getAbsolutePath());
      if (localh == null)
      {
        localh = new h(paramFile);
        d.put(paramFile.getAbsolutePath(), localh);
      }
    }
    return localh;
  }

  public static h a(String paramString)
  {
    h localh;
    synchronized (d)
    {
      localh = (h)d.get(paramString);
      if (localh == null)
      {
        localh = new h(paramString);
        d.put(paramString, localh);
      }
    }
    return localh;
  }

  public static void i()
  {
    synchronized (a)
    {
      if (b != null)
      {
        b.clear();
        b = null;
      }
      d.clear();
      if (f != null)
      {
        f.interrupt();
        f = null;
      }
      if (h != null)
      {
        h.interrupt();
        h = null;
      }
      return;
    }
  }

  private void n()
  {
    synchronized (a)
    {
      if (b == null)
      {
        c.b();
        b = c.c();
      }
      if (f == null)
      {
        f = new j();
        f.start();
      }
      if (h == null)
      {
        h = new i();
        h.start();
      }
      return;
    }
  }

  private boolean o()
  {
    if ((this.m) && (this.j == null));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public Long a(g paramg)
  {
    boolean bool = d();
    Long localLong = null;
    if (bool);
    while (true)
    {
      return localLong;
      if ((paramg == null) || (this.o != null))
      {
        localLong = this.o;
        continue;
      }
      try
      {
        this.q = paramg;
        e.offer(b());
        localLong = null;
      }
      finally
      {
      }
    }
  }

  public Long a(com.avast.android.generic.filebrowser.h paramh)
  {
    Long localLong;
    if (d())
      localLong = Long.valueOf(this.j.length());
    while (true)
    {
      return localLong;
      if ((paramh == null) || (this.n != null))
      {
        localLong = this.n;
        continue;
      }
      try
      {
        this.p = paramh;
        e.offer(b());
        localLong = null;
      }
      finally
      {
      }
    }
  }

  public String a()
  {
    String str1;
    if (o())
      str1 = "STORAGE";
    while (true)
    {
      return str1;
      if (e())
      {
        Iterator localIterator = b.iterator();
        for (int i1 = 0; ; i1++)
        {
          if (!localIterator.hasNext())
            break label96;
          String str2 = (String)localIterator.next();
          if (this.j.getAbsolutePath().equals(str2))
          {
            str1 = "STORAGE #" + (i1 + 1);
            break;
          }
        }
      }
      label96: str1 = this.j.getName();
    }
  }

  public String b()
  {
    if (this.m);
    for (String str = "ROOT_PATH"; ; str = this.j.getAbsolutePath())
      return str;
  }

  public String c()
  {
    if (this.k == null)
      if (o())
        this.k = "";
    for (String str1 = this.k; ; str1 = this.k)
    {
      return str1;
      Iterator localIterator = b.iterator();
      for (int i1 = 0; localIterator.hasNext(); i1++)
      {
        String str2 = (String)localIterator.next();
        if (this.j.getAbsolutePath().startsWith(str2))
        {
          this.k = this.j.getAbsolutePath().substring(str2.length());
          this.k = ("STORAGE #" + (i1 + 1) + this.k);
        }
      }
    }
  }

  public boolean d()
  {
    if (this.m);
    for (boolean bool = false; ; bool = this.j.isFile())
      return bool;
  }

  public boolean e()
  {
    if (this.m);
    for (boolean bool = true; ; bool = this.j.isDirectory())
      return bool;
  }

  public long f()
  {
    return this.j.lastModified();
  }

  public f[] g()
  {
    int i1 = 0;
    Object localObject;
    if (!e())
      localObject = null;
    while (true)
    {
      return localObject;
      if (this.l != null)
      {
        localObject = this.l;
      }
      else if (o())
      {
        this.l = new h[b.size()];
        for (int i2 = 0; i2 < this.l.length; i2++)
          this.l[i2] = a((String)b.get(i2));
        localObject = this.l;
      }
      else
      {
        File[] arrayOfFile = this.j.listFiles();
        if (arrayOfFile == null)
        {
          localObject = null;
        }
        else
        {
          f[] arrayOff = new f[arrayOfFile.length];
          while (i1 < arrayOfFile.length)
          {
            arrayOff[i1] = a(arrayOfFile[i1]);
            i1++;
          }
          localObject = arrayOff;
        }
      }
    }
  }

  public boolean h()
  {
    if ((this.m) || (d()));
    for (boolean bool = false; ; bool = true)
      return bool;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.filebrowser.h
 * JD-Core Version:    0.6.2
 */