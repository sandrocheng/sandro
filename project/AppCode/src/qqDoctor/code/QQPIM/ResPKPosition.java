package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ResPKPosition extends JceStruct
  implements Cloneable
{
  public String addr = "";
  public int waittime = 0;

  static
  {
    if (!ResPKPosition.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ResPKPosition()
  {
    setWaittime(this.waittime);
    setAddr(this.addr);
  }

  public ResPKPosition(int paramInt, String paramString)
  {
    setWaittime(paramInt);
    setAddr(paramString);
  }

  public final String className()
  {
    return "QQPIM.ResPKPosition";
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
        bool = $assertionsDisabled;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.waittime, "waittime");
    localJceDisplayer.display(this.addr, "addr");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ResPKPosition localResPKPosition = (ResPKPosition)paramObject;
      boolean bool2 = JceUtil.equals(this.waittime, localResPKPosition.waittime);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.addr, localResPKPosition.addr);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ResPKPosition";
  }

  public final String getAddr()
  {
    return this.addr;
  }

  public final int getWaittime()
  {
    return this.waittime;
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
    this.waittime = paramJceInputStream.read(this.waittime, 0, true);
    this.addr = paramJceInputStream.readString(1, false);
  }

  public final void setAddr(String paramString)
  {
    this.addr = paramString;
  }

  public final void setWaittime(int paramInt)
  {
    this.waittime = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.waittime, 0);
    if (this.addr != null)
      paramJceOutputStream.write(this.addr, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ResPKPosition
 * JD-Core Version:    0.6.2
 */