package puw;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

public final class e extends JceStruct
{
  static byte[] k;
  static Map<String, String> l;
  public short a = 0;
  public byte b = 0;
  public int c = 0;
  public int d = 0;
  public String e = null;
  public String f = null;
  public byte[] g;
  public int h = 0;
  public Map<String, String> i;
  public Map<String, String> j;

  static
  {
    if (!e.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      m = bool;
      k = null;
      l = null;
      return;
    }
  }

  public Object clone()
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
        bool = m;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "iVersion");
    localJceDisplayer.display(this.b, "cPacketType");
    localJceDisplayer.display(this.c, "iMessageType");
    localJceDisplayer.display(this.d, "iRequestId");
    localJceDisplayer.display(this.e, "sServantName");
    localJceDisplayer.display(this.f, "sFuncName");
    localJceDisplayer.display(this.g, "sBuffer");
    localJceDisplayer.display(this.h, "iTimeout");
    localJceDisplayer.display(this.i, "context");
    localJceDisplayer.display(this.j, "status");
  }

  public boolean equals(Object paramObject)
  {
    int n = 1;
    e locale = (e)paramObject;
    if ((JceUtil.equals(n, locale.a)) && (JceUtil.equals(n, locale.b)) && (JceUtil.equals(n, locale.c)) && (JceUtil.equals(n, locale.d)) && (JceUtil.equals(Integer.valueOf(n), locale.e)) && (JceUtil.equals(Integer.valueOf(n), locale.f)) && (JceUtil.equals(Integer.valueOf(n), locale.g)) && (JceUtil.equals(n, locale.h)) && (JceUtil.equals(Integer.valueOf(n), locale.i)) && (JceUtil.equals(Integer.valueOf(n), locale.j)));
    while (true)
    {
      return n;
      int i1 = 0;
    }
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    try
    {
      this.a = paramJceInputStream.read(this.a, 1, true);
      this.b = paramJceInputStream.read(this.b, 2, true);
      this.c = paramJceInputStream.read(this.c, 3, true);
      this.d = paramJceInputStream.read(this.d, 4, true);
      this.e = paramJceInputStream.readString(5, true);
      this.f = paramJceInputStream.readString(6, true);
      if (k == null)
        k = new byte[] { 0 };
      this.g = ((byte[])paramJceInputStream.read(k, 7, true));
      this.h = paramJceInputStream.read(this.h, 8, true);
      if (l == null)
      {
        l = new HashMap();
        l.put("", "");
      }
      this.i = ((Map)paramJceInputStream.read(l, 9, true));
      if (l == null)
      {
        l = new HashMap();
        l.put("", "");
      }
      this.j = ((Map)paramJceInputStream.read(l, 10, true));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      System.out.println("RequestPacket decode error " + b.a(this.g));
      throw new RuntimeException(localException);
    }
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 1);
    paramJceOutputStream.write(this.b, 2);
    paramJceOutputStream.write(this.c, 3);
    paramJceOutputStream.write(this.d, 4);
    paramJceOutputStream.write(this.e, 5);
    paramJceOutputStream.write(this.f, 6);
    paramJceOutputStream.write(this.g, 7);
    paramJceOutputStream.write(this.h, 8);
    paramJceOutputStream.write(this.i, 9);
    paramJceOutputStream.write(this.j, 10);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     puw.e
 * JD-Core Version:    0.6.2
 */