package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class KillProcessInfo extends JceStruct
  implements Cloneable
{
  public String process = "";

  static
  {
    if (!KillProcessInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public KillProcessInfo()
  {
    setProcess(this.process);
  }

  public KillProcessInfo(String paramString)
  {
    setProcess(paramString);
  }

  public final String className()
  {
    return "QQPIM.KillProcessInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.process, "process");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    KillProcessInfo localKillProcessInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.process, localKillProcessInfo.process))
    {
      return bool;
      localKillProcessInfo = (KillProcessInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.KillProcessInfo";
  }

  public final String getProcess()
  {
    return this.process;
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
    this.process = paramJceInputStream.readString(0, true);
  }

  public final void setProcess(String paramString)
  {
    this.process = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.process, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.KillProcessInfo
 * JD-Core Version:    0.6.2
 */