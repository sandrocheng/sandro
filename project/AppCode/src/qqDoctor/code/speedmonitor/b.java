package speedmonitor;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class b extends JceStruct
  implements Cloneable
{
  private static ArrayList c;
  private static ArrayList d;
  private ArrayList a = null;
  private ArrayList b = null;

  static
  {
    if (!b.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      e = bool;
      return;
    }
  }

  public final void a(ArrayList paramArrayList)
  {
    this.a = paramArrayList;
  }

  public final void b(ArrayList paramArrayList)
  {
    this.b = paramArrayList;
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
        bool = e;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "ipList");
    localJceDisplayer.display(this.b, "domainList");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      b localb = (b)paramObject;
      boolean bool2 = JceUtil.equals(this.a, localb.a);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.b, localb.b);
        bool1 = false;
        if (bool3)
          bool1 = true;
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
    if (c == null)
    {
      c = new ArrayList();
      IpMonitor localIpMonitor = new IpMonitor();
      c.add(localIpMonitor);
    }
    this.a = ((ArrayList)paramJceInputStream.read(c, 0, true));
    if (d == null)
    {
      d = new ArrayList();
      a locala = new a();
      d.add(locala);
    }
    this.b = ((ArrayList)paramJceInputStream.read(d, 1, true));
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     speedmonitor.b
 * JD-Core Version:    0.6.2
 */