package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stAntiTheftReport extends JceStruct
  implements Cloneable
{
  public int cmd = 0;

  static
  {
    if (!stAntiTheftReport.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stAntiTheftReport()
  {
    setCmd(this.cmd);
  }

  public stAntiTheftReport(int paramInt)
  {
    setCmd(paramInt);
  }

  public final String className()
  {
    return "QQPIM.stAntiTheftReport";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.cmd, "cmd");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    stAntiTheftReport localstAntiTheftReport;
    for (boolean bool = false; ; bool = JceUtil.equals(this.cmd, localstAntiTheftReport.cmd))
    {
      return bool;
      localstAntiTheftReport = (stAntiTheftReport)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stAntiTheftReport";
  }

  public final int getCmd()
  {
    return this.cmd;
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
    this.cmd = paramJceInputStream.read(this.cmd, 0, true);
  }

  public final void setCmd(int paramInt)
  {
    this.cmd = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.cmd, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stAntiTheftReport
 * JD-Core Version:    0.6.2
 */