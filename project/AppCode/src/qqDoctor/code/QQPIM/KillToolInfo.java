package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class KillToolInfo extends JceStruct
  implements Cloneable
{
  public String certmd5 = "";
  public String pkgname = "";

  static
  {
    if (!KillToolInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public KillToolInfo()
  {
    setPkgname(this.pkgname);
    setCertmd5(this.certmd5);
  }

  public KillToolInfo(String paramString1, String paramString2)
  {
    setPkgname(paramString1);
    setCertmd5(paramString2);
  }

  public final String className()
  {
    return "QQPIM.KillToolInfo";
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
    localJceDisplayer.display(this.pkgname, "pkgname");
    localJceDisplayer.display(this.certmd5, "certmd5");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      KillToolInfo localKillToolInfo = (KillToolInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.pkgname, localKillToolInfo.pkgname);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.certmd5, localKillToolInfo.certmd5);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.KillToolInfo";
  }

  public final String getCertmd5()
  {
    return this.certmd5;
  }

  public final String getPkgname()
  {
    return this.pkgname;
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
    this.pkgname = paramJceInputStream.readString(0, true);
    this.certmd5 = paramJceInputStream.readString(1, true);
  }

  public final void setCertmd5(String paramString)
  {
    this.certmd5 = paramString;
  }

  public final void setPkgname(String paramString)
  {
    this.pkgname = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.pkgname, 0);
    paramJceOutputStream.write(this.certmd5, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.KillToolInfo
 * JD-Core Version:    0.6.2
 */