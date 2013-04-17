package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STReActBack extends JceStruct
  implements Cloneable
{
  public int nReAct = 0;

  static
  {
    if (!STReActBack.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STReActBack()
  {
    setNReAct(this.nReAct);
  }

  public STReActBack(int paramInt)
  {
    setNReAct(paramInt);
  }

  public final String className()
  {
    return "QQPIM.STReActBack";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.nReAct, "nReAct");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    STReActBack localSTReActBack;
    for (boolean bool = false; ; bool = JceUtil.equals(this.nReAct, localSTReActBack.nReAct))
    {
      return bool;
      localSTReActBack = (STReActBack)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STReActBack";
  }

  public final int getNReAct()
  {
    return this.nReAct;
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
    this.nReAct = paramJceInputStream.read(this.nReAct, 0, false);
  }

  public final void setNReAct(int paramInt)
  {
    this.nReAct = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nReAct, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STReActBack
 * JD-Core Version:    0.6.2
 */