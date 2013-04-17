package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PKResultInfo extends JceStruct
  implements Cloneable
{
  public int result = 0;

  static
  {
    if (!PKResultInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PKResultInfo()
  {
    setResult(this.result);
  }

  public PKResultInfo(int paramInt)
  {
    setResult(paramInt);
  }

  public final String className()
  {
    return "QQPIM.PKResultInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.result, "result");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    PKResultInfo localPKResultInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.result, localPKResultInfo.result))
    {
      return bool;
      localPKResultInfo = (PKResultInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.PKResultInfo";
  }

  public final int getResult()
  {
    return this.result;
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
    this.result = paramJceInputStream.read(this.result, 0, true);
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PKResultInfo
 * JD-Core Version:    0.6.2
 */