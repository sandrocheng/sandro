package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ServerInfo extends JceStruct
  implements Cloneable
{
  public int time = 0;

  static
  {
    if (!ServerInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ServerInfo()
  {
    setTime(this.time);
  }

  public ServerInfo(int paramInt)
  {
    setTime(paramInt);
  }

  public final String className()
  {
    return "QQPIM.ServerInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.time, "time");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    ServerInfo localServerInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.time, localServerInfo.time))
    {
      return bool;
      localServerInfo = (ServerInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ServerInfo";
  }

  public final int getTime()
  {
    return this.time;
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
    this.time = paramJceInputStream.read(this.time, 0, true);
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.time, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ServerInfo
 * JD-Core Version:    0.6.2
 */