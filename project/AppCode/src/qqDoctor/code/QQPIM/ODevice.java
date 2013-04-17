package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ODevice extends JceStruct
  implements Cloneable
{
  public int bcamerapixel = 0;
  public int fcamerapixel = 0;

  static
  {
    if (!ODevice.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ODevice()
  {
    setFcamerapixel(this.fcamerapixel);
    setBcamerapixel(this.bcamerapixel);
  }

  public ODevice(int paramInt1, int paramInt2)
  {
    setFcamerapixel(paramInt1);
    setBcamerapixel(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.ODevice";
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
    localJceDisplayer.display(this.fcamerapixel, "fcamerapixel");
    localJceDisplayer.display(this.bcamerapixel, "bcamerapixel");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ODevice localODevice = (ODevice)paramObject;
      boolean bool2 = JceUtil.equals(this.fcamerapixel, localODevice.fcamerapixel);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.bcamerapixel, localODevice.bcamerapixel);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ODevice";
  }

  public final int getBcamerapixel()
  {
    return this.bcamerapixel;
  }

  public final int getFcamerapixel()
  {
    return this.fcamerapixel;
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
    this.fcamerapixel = paramJceInputStream.read(this.fcamerapixel, 0, true);
    this.bcamerapixel = paramJceInputStream.read(this.bcamerapixel, 1, true);
  }

  public final void setBcamerapixel(int paramInt)
  {
    this.bcamerapixel = paramInt;
  }

  public final void setFcamerapixel(int paramInt)
  {
    this.fcamerapixel = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.fcamerapixel, 0);
    paramJceOutputStream.write(this.bcamerapixel, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ODevice
 * JD-Core Version:    0.6.2
 */