package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SwitchSet extends JceStruct
  implements Cloneable
{
  public byte isopen = 0;
  public int switchid = 0;

  static
  {
    if (!SwitchSet.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SwitchSet()
  {
    setSwitchid(this.switchid);
    setIsopen(this.isopen);
  }

  public SwitchSet(int paramInt, byte paramByte)
  {
    setSwitchid(paramInt);
    setIsopen(paramByte);
  }

  public final String className()
  {
    return "QQPIM.SwitchSet";
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
    localJceDisplayer.display(this.switchid, "switchid");
    localJceDisplayer.display(this.isopen, "isopen");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SwitchSet localSwitchSet = (SwitchSet)paramObject;
      boolean bool2 = JceUtil.equals(this.switchid, localSwitchSet.switchid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.isopen, localSwitchSet.isopen);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SwitchSet";
  }

  public final byte getIsopen()
  {
    return this.isopen;
  }

  public final int getSwitchid()
  {
    return this.switchid;
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
    this.switchid = paramJceInputStream.read(this.switchid, 0, true);
    this.isopen = paramJceInputStream.read(this.isopen, 1, true);
  }

  public final void setIsopen(byte paramByte)
  {
    this.isopen = paramByte;
  }

  public final void setSwitchid(int paramInt)
  {
    this.switchid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.switchid, 0);
    paramJceOutputStream.write(this.isopen, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SwitchSet
 * JD-Core Version:    0.6.2
 */