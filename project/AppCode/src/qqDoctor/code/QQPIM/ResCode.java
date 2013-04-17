package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ResCode extends JceStruct
  implements Cloneable
{
  public int rescode = 0;

  static
  {
    if (!ResCode.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ResCode()
  {
    setRescode(this.rescode);
  }

  public ResCode(int paramInt)
  {
    setRescode(paramInt);
  }

  public final String className()
  {
    return "QQPIM.ResCode";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.rescode, "rescode");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    ResCode localResCode;
    for (boolean bool = false; ; bool = JceUtil.equals(this.rescode, localResCode.rescode))
    {
      return bool;
      localResCode = (ResCode)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ResCode";
  }

  public final int getRescode()
  {
    return this.rescode;
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
    this.rescode = paramJceInputStream.read(this.rescode, 0, true);
  }

  public final void setRescode(int paramInt)
  {
    this.rescode = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.rescode, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ResCode
 * JD-Core Version:    0.6.2
 */