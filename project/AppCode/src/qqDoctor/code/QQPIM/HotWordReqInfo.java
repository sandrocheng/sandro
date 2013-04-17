package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class HotWordReqInfo extends JceStruct
  implements Cloneable
{
  public int index = 0;
  public int num = 0;
  public int version = 0;

  static
  {
    if (!HotWordReqInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public HotWordReqInfo()
  {
    setVersion(this.version);
    setIndex(this.index);
    setNum(this.num);
  }

  public HotWordReqInfo(int paramInt1, int paramInt2, int paramInt3)
  {
    setVersion(paramInt1);
    setIndex(paramInt2);
    setNum(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.HotWordReqInfo";
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
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.index, "index");
    localJceDisplayer.display(this.num, "num");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      HotWordReqInfo localHotWordReqInfo = (HotWordReqInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.version, localHotWordReqInfo.version);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.index, localHotWordReqInfo.index);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.num, localHotWordReqInfo.num);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.HotWordReqInfo";
  }

  public final int getIndex()
  {
    return this.index;
  }

  public final int getNum()
  {
    return this.num;
  }

  public final int getVersion()
  {
    return this.version;
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
    this.version = paramJceInputStream.read(this.version, 0, true);
    this.index = paramJceInputStream.read(this.index, 1, true);
    this.num = paramJceInputStream.read(this.num, 2, true);
  }

  public final void setIndex(int paramInt)
  {
    this.index = paramInt;
  }

  public final void setNum(int paramInt)
  {
    this.num = paramInt;
  }

  public final void setVersion(int paramInt)
  {
    this.version = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.version, 0);
    paramJceOutputStream.write(this.index, 1);
    paramJceOutputStream.write(this.num, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.HotWordReqInfo
 * JD-Core Version:    0.6.2
 */