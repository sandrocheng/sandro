package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MQQSecRunInfo extends JceStruct
  implements Cloneable
{
  public int option = 0;

  static
  {
    if (!MQQSecRunInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MQQSecRunInfo()
  {
    setOption(this.option);
  }

  public MQQSecRunInfo(int paramInt)
  {
    setOption(paramInt);
  }

  public final String className()
  {
    return "QQPIM.MQQSecRunInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.option, "option");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    MQQSecRunInfo localMQQSecRunInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.option, localMQQSecRunInfo.option))
    {
      return bool;
      localMQQSecRunInfo = (MQQSecRunInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.MQQSecRunInfo";
  }

  public final int getOption()
  {
    return this.option;
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
    this.option = paramJceInputStream.read(this.option, 0, true);
  }

  public final void setOption(int paramInt)
  {
    this.option = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.option, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.MQQSecRunInfo
 * JD-Core Version:    0.6.2
 */