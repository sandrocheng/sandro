package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STQueryInfo extends JceStruct
  implements Cloneable
{
  public int nQuerytype = 0;
  public String strCode = "";
  public String strPort = "";

  static
  {
    if (!STQueryInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STQueryInfo()
  {
    setNQuerytype(this.nQuerytype);
    setStrPort(this.strPort);
    setStrCode(this.strCode);
  }

  public STQueryInfo(int paramInt, String paramString1, String paramString2)
  {
    setNQuerytype(paramInt);
    setStrPort(paramString1);
    setStrCode(paramString2);
  }

  public final String className()
  {
    return "QQPIM.STQueryInfo";
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
    localJceDisplayer.display(this.nQuerytype, "nQuerytype");
    localJceDisplayer.display(this.strPort, "strPort");
    localJceDisplayer.display(this.strCode, "strCode");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STQueryInfo localSTQueryInfo = (STQueryInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.nQuerytype, localSTQueryInfo.nQuerytype);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.strPort, localSTQueryInfo.strPort);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.strCode, localSTQueryInfo.strCode);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STQueryInfo";
  }

  public final int getNQuerytype()
  {
    return this.nQuerytype;
  }

  public final String getStrCode()
  {
    return this.strCode;
  }

  public final String getStrPort()
  {
    return this.strPort;
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
    this.nQuerytype = paramJceInputStream.read(this.nQuerytype, 0, true);
    this.strPort = paramJceInputStream.readString(1, true);
    this.strCode = paramJceInputStream.readString(2, true);
  }

  public final void setNQuerytype(int paramInt)
  {
    this.nQuerytype = paramInt;
  }

  public final void setStrCode(String paramString)
  {
    this.strCode = paramString;
  }

  public final void setStrPort(String paramString)
  {
    this.strPort = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nQuerytype, 0);
    paramJceOutputStream.write(this.strPort, 1);
    paramJceOutputStream.write(this.strCode, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STQueryInfo
 * JD-Core Version:    0.6.2
 */