package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftServerInfo extends JceStruct
  implements Cloneable
{
  static byte[] cache_expand;
  public byte[] expand = null;
  public int status = 0;

  static
  {
    if (!SoftServerInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftServerInfo()
  {
    setStatus(this.status);
    setExpand(this.expand);
  }

  public SoftServerInfo(int paramInt, byte[] paramArrayOfByte)
  {
    setStatus(paramInt);
    setExpand(paramArrayOfByte);
  }

  public final String className()
  {
    return "QQPIM.SoftServerInfo";
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
    localJceDisplayer.display(this.status, "status");
    localJceDisplayer.display(this.expand, "expand");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftServerInfo localSoftServerInfo = (SoftServerInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.status, localSoftServerInfo.status);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.expand, localSoftServerInfo.expand);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SoftServerInfo";
  }

  public final byte[] getExpand()
  {
    return this.expand;
  }

  public final int getStatus()
  {
    return this.status;
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
    this.status = paramJceInputStream.read(this.status, 0, true);
    if (cache_expand == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_expand = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.expand = paramJceInputStream.read(cache_expand, 1, false);
  }

  public final void setExpand(byte[] paramArrayOfByte)
  {
    this.expand = paramArrayOfByte;
  }

  public final void setStatus(int paramInt)
  {
    this.status = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.status, 0);
    if (this.expand != null)
      paramJceOutputStream.write(this.expand, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftServerInfo
 * JD-Core Version:    0.6.2
 */