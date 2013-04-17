package speedmonitor;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class a extends JceStruct
  implements Cloneable
{
  private String a = "";
  private String b = "";
  private String c = "";
  private long d = 0L;
  private long e = 0L;
  private long f = 0L;
  private long g = 0L;
  private long h = 0L;
  private String i = "";
  private String j = "";
  private long k = 0L;

  static
  {
    if (!a.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      l = bool;
      return;
    }
  }

  public final void a(long paramLong)
  {
    this.d = paramLong;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void b(long paramLong)
  {
    this.e = paramLong;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
  }

  public final void c(long paramLong)
  {
    this.f = paramLong;
  }

  public final void c(String paramString)
  {
    this.c = paramString;
  }

  public final Object clone()
  {
    try
    {
      Object localObject2 = super.clone();
      localObject1 = localObject2;
      return localObject1;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      boolean bool;
      do
      {
        bool = l;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void d(long paramLong)
  {
    this.g = paramLong;
  }

  public final void d(String paramString)
  {
    this.i = paramString;
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "apn");
    localJceDisplayer.display(this.b, "srcIp");
    localJceDisplayer.display(this.c, "destDomain");
    localJceDisplayer.display(this.d, "dnsTime");
    localJceDisplayer.display(this.e, "tcpTime");
    localJceDisplayer.display(this.f, "requestSendTime");
    localJceDisplayer.display(this.g, "netWaitTime");
    localJceDisplayer.display(this.h, "responseRecvReadTime");
    localJceDisplayer.display(this.i, "targetIp");
    localJceDisplayer.display(this.j, "dnsServerIp");
    localJceDisplayer.display(this.k, "testTime");
  }

  public final void e(long paramLong)
  {
    this.h = paramLong;
  }

  public final void e(String paramString)
  {
    this.j = paramString;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      a locala = (a)paramObject;
      boolean bool2 = JceUtil.equals(this.a, locala.a);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.b, locala.b);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.c, locala.c);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.d, locala.d);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.e, locala.e);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.f, locala.f);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.g, locala.g);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.h, locala.h);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.i, locala.i);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.j, locala.j);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.k, locala.k);
                          bool1 = false;
                          if (bool12)
                            bool1 = true;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final void f(long paramLong)
  {
    this.k = paramLong;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.readString(0, true);
    this.b = paramJceInputStream.readString(1, true);
    this.c = paramJceInputStream.readString(2, true);
    this.d = paramJceInputStream.read(this.d, 3, true);
    this.e = paramJceInputStream.read(this.e, 4, true);
    this.f = paramJceInputStream.read(this.f, 5, true);
    this.g = paramJceInputStream.read(this.g, 6, true);
    this.h = paramJceInputStream.read(this.h, 7, true);
    this.i = paramJceInputStream.readString(8, false);
    this.j = paramJceInputStream.readString(9, false);
    this.k = paramJceInputStream.read(this.k, 10, true);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
    paramJceOutputStream.write(this.d, 3);
    paramJceOutputStream.write(this.e, 4);
    paramJceOutputStream.write(this.f, 5);
    paramJceOutputStream.write(this.g, 6);
    paramJceOutputStream.write(this.h, 7);
    if (this.i != null)
      paramJceOutputStream.write(this.i, 8);
    if (this.j != null)
      paramJceOutputStream.write(this.j, 9);
    paramJceOutputStream.write(this.k, 10);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     speedmonitor.a
 * JD-Core Version:    0.6.2
 */