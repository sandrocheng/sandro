package speedmonitor;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class IpMonitor extends JceStruct
  implements Cloneable
{
  private String a = "";
  private String b = "";
  private String c = "";
  private int d = 0;
  private long e = 0L;
  private long f = 0L;

  static
  {
    if (!IpMonitor.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
      return;
    }
  }

  public final void a(int paramInt)
  {
    this.d = paramInt;
  }

  public final void a(long paramLong)
  {
    this.e = paramLong;
  }

  public final void a(String paramString)
  {
    this.a = paramString;
  }

  public final void b(long paramLong)
  {
    this.f = paramLong;
  }

  public final void b(String paramString)
  {
    this.b = paramString;
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
        bool = g;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "apn");
    localJceDisplayer.display(this.b, "srcIp");
    localJceDisplayer.display(this.c, "destIp");
    localJceDisplayer.display(this.d, "destPort");
    localJceDisplayer.display(this.e, "connectTime");
    localJceDisplayer.display(this.f, "testTime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      IpMonitor localIpMonitor = (IpMonitor)paramObject;
      boolean bool2 = JceUtil.equals(this.a, localIpMonitor.a);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.b, localIpMonitor.b);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.c, localIpMonitor.c);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.d, localIpMonitor.d);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.e, localIpMonitor.e);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.f, localIpMonitor.f);
                bool1 = false;
                if (bool7)
                  bool1 = true;
              }
            }
          }
        }
      }
    }
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
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
    paramJceOutputStream.write(this.d, 3);
    paramJceOutputStream.write(this.e, 4);
    paramJceOutputStream.write(this.f, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     speedmonitor.IpMonitor
 * JD-Core Version:    0.6.2
 */