package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ExecShell extends JceStruct
  implements Cloneable
{
  public String shellcmd = "";

  static
  {
    if (!ExecShell.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ExecShell()
  {
    setShellcmd(this.shellcmd);
  }

  public ExecShell(String paramString)
  {
    setShellcmd(paramString);
  }

  public final String className()
  {
    return "QQPIM.ExecShell";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.shellcmd, "shellcmd");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    ExecShell localExecShell;
    for (boolean bool = false; ; bool = JceUtil.equals(this.shellcmd, localExecShell.shellcmd))
    {
      return bool;
      localExecShell = (ExecShell)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ExecShell";
  }

  public final String getShellcmd()
  {
    return this.shellcmd;
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
    this.shellcmd = paramJceInputStream.readString(0, true);
  }

  public final void setShellcmd(String paramString)
  {
    this.shellcmd = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.shellcmd, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ExecShell
 * JD-Core Version:    0.6.2
 */