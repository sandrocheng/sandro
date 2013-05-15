package com.avast.android.mobilesecurity.app.fileshield;

import java.io.File;
import java.util.Comparator;

public class a
{
  private static final Comparator a = new b();
  private final long b;
  private final File c;
  private final long d;

  public a(File paramFile, long paramLong)
  {
    this.c = paramFile;
    this.b = paramLong;
    this.d = System.currentTimeMillis();
  }

  public static Comparator d()
  {
    return a;
  }

  public long a()
  {
    return this.b;
  }

  public File b()
  {
    return this.c;
  }

  public long c()
  {
    return this.d;
  }

  public boolean equals(Object paramObject)
  {
    boolean bool;
    if ((paramObject instanceof a))
      if (!((a)paramObject).b().equals(this.c))
        bool = false;
    while (true)
    {
      return bool;
      if (((a)paramObject).a() != this.b)
      {
        bool = false;
      }
      else if (((a)paramObject).c() != this.d)
      {
        bool = false;
      }
      else
      {
        bool = true;
        continue;
        bool = false;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.avast.android.mobilesecurity.app.fileshield.a
 * JD-Core Version:    0.6.2
 */