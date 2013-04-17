package common;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RequestPackage extends JceStruct
{
  private static byte[] m;
  private byte a = 0;
  private String b = "";
  private String c = "";
  private String d = "";
  private String e = "";
  private int f = 0;
  private byte[] g = null;
  private String h = "";
  private String i = "";
  private byte j = 0;
  private byte k = 0;
  private String l = "";

  static
  {
    if (!RequestPackage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      n = bool;
      return;
    }
  }

  public final void a(byte paramByte)
  {
    this.a = paramByte;
  }

  public final void a(int paramInt)
  {
    this.f = paramInt;
  }

  public final void a(String paramString)
  {
    this.b = paramString;
  }

  public final void a(byte[] paramArrayOfByte)
  {
    this.g = paramArrayOfByte;
  }

  public final void b(byte paramByte)
  {
    this.j = paramByte;
  }

  public final void b(String paramString)
  {
    this.c = paramString;
  }

  public final void c(byte paramByte)
  {
    this.k = paramByte;
  }

  public final void c(String paramString)
  {
    this.d = paramString;
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
        bool = n;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void d(String paramString)
  {
    this.e = paramString;
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "platformId");
    localJceDisplayer.display(this.b, "productId");
    localJceDisplayer.display(this.c, "productVersion");
    localJceDisplayer.display(this.d, "sdkId");
    localJceDisplayer.display(this.e, "sdkVersion");
    localJceDisplayer.display(this.f, "cmd");
    localJceDisplayer.display(this.g, "sBuffer");
    localJceDisplayer.display(this.h, "hardware_os");
    localJceDisplayer.display(this.i, "qua");
    localJceDisplayer.display(this.j, "encryType");
    localJceDisplayer.display(this.k, "zipType");
    localJceDisplayer.display(this.l, "productIdentity");
  }

  public final void e(String paramString)
  {
    this.h = paramString;
  }

  public final boolean equals(Object paramObject)
  {
    RequestPackage localRequestPackage = (RequestPackage)paramObject;
    if ((JceUtil.equals(this.a, localRequestPackage.a)) && (JceUtil.equals(this.b, localRequestPackage.b)) && (JceUtil.equals(this.c, localRequestPackage.c)) && (JceUtil.equals(this.d, localRequestPackage.d)) && (JceUtil.equals(this.e, localRequestPackage.e)) && (JceUtil.equals(this.f, localRequestPackage.f)) && (JceUtil.equals(this.g, localRequestPackage.g)) && (JceUtil.equals(this.h, localRequestPackage.h)) && (JceUtil.equals(this.i, localRequestPackage.i)) && (JceUtil.equals(this.j, localRequestPackage.j)) && (JceUtil.equals(this.k, localRequestPackage.k)) && (JceUtil.equals(this.l, localRequestPackage.l)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void f(String paramString)
  {
    this.i = paramString;
  }

  public final void g(String paramString)
  {
    this.l = paramString;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.read(this.a, 0, true);
    this.b = paramJceInputStream.readString(1, true);
    this.c = paramJceInputStream.readString(2, true);
    this.d = paramJceInputStream.readString(3, true);
    this.e = paramJceInputStream.readString(4, true);
    this.f = paramJceInputStream.read(this.f, 5, true);
    if (m == null)
    {
      byte[] arrayOfByte = new byte[1];
      m = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.g = paramJceInputStream.read(m, 6, true);
    this.h = paramJceInputStream.readString(7, false);
    this.i = paramJceInputStream.readString(8, false);
    this.j = paramJceInputStream.read(this.j, 9, false);
    this.k = paramJceInputStream.read(this.k, 10, false);
    this.l = paramJceInputStream.readString(11, false);
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
    if (this.h != null)
      paramJceOutputStream.write(this.h, 7);
    if (this.i != null)
      paramJceOutputStream.write(this.i, 8);
    paramJceOutputStream.write(this.j, 9);
    paramJceOutputStream.write(this.k, 10);
    if (this.l != null)
      paramJceOutputStream.write(this.l, 11);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     common.RequestPackage
 * JD-Core Version:    0.6.2
 */