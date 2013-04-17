package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipsCondition extends JceStruct
  implements Cloneable
{
  public int bitflag = 0;
  public int usebits = 0;

  static
  {
    if (!TipsCondition.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TipsCondition()
  {
    setUsebits(this.usebits);
    setBitflag(this.bitflag);
  }

  public TipsCondition(int paramInt1, int paramInt2)
  {
    setUsebits(paramInt1);
    setBitflag(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.TipsCondition";
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
    localJceDisplayer.display(this.usebits, "usebits");
    localJceDisplayer.display(this.bitflag, "bitflag");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TipsCondition localTipsCondition = (TipsCondition)paramObject;
      boolean bool2 = JceUtil.equals(this.usebits, localTipsCondition.usebits);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.bitflag, localTipsCondition.bitflag);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.TipsCondition";
  }

  public final int getBitflag()
  {
    return this.bitflag;
  }

  public final int getUsebits()
  {
    return this.usebits;
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
    this.usebits = paramJceInputStream.read(this.usebits, 0, true);
    this.bitflag = paramJceInputStream.read(this.bitflag, 1, true);
  }

  public final void setBitflag(int paramInt)
  {
    this.bitflag = paramInt;
  }

  public final void setUsebits(int paramInt)
  {
    this.usebits = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.usebits, 0);
    paramJceOutputStream.write(this.bitflag, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TipsCondition
 * JD-Core Version:    0.6.2
 */