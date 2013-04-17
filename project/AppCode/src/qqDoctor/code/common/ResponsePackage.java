package common;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ResponsePackage extends JceStruct
  implements Cloneable
{
  private static byte[] h;
  public byte a = 0;
  private int b = 0;
  private byte[] c = null;
  private String d = "";
  private byte e = 0;
  private byte f = 0;
  private long g = 0L;

  static
  {
    if (!ResponsePackage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      i = bool;
      return;
    }
  }

  public final byte a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  public final byte[] c()
  {
    return this.c;
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
        bool = i;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final String d()
  {
    return this.d;
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "result");
    localJceDisplayer.display(this.b, "cmd");
    localJceDisplayer.display(this.c, "sBuffer");
    localJceDisplayer.display(this.d, "srcGatewayIp");
    localJceDisplayer.display(this.e, "encryType");
    localJceDisplayer.display(this.f, "zipType");
    localJceDisplayer.display(this.g, "serverTime");
  }

  public final byte e()
  {
    return this.e;
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ResponsePackage localResponsePackage = (ResponsePackage)paramObject;
      boolean bool2 = JceUtil.equals(this.a, localResponsePackage.a);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.b, localResponsePackage.b);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.c, localResponsePackage.c);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.d, localResponsePackage.d);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.e, localResponsePackage.e);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.f, localResponsePackage.f);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.g, localResponsePackage.g);
                  bool1 = false;
                  if (bool8)
                    bool1 = true;
                }
              }
            }
          }
        }
      }
    }
  }

  public final byte f()
  {
    return this.f;
  }

  public final long g()
  {
    return this.g;
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
    this.a = paramJceInputStream.read(this.a, 0, true);
    this.b = paramJceInputStream.read(this.b, 1, true);
    if (h == null)
    {
      byte[] arrayOfByte = new byte[1];
      h = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.c = paramJceInputStream.read(h, 2, true);
    this.d = paramJceInputStream.readString(3, true);
    this.e = paramJceInputStream.read(this.e, 4, false);
    this.f = paramJceInputStream.read(this.f, 5, false);
    this.g = paramJceInputStream.read(this.g, 6, false);
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
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     common.ResponsePackage
 * JD-Core Version:    0.6.2
 */