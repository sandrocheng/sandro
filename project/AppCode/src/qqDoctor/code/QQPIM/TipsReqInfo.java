package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipsReqInfo extends JceStruct
  implements Cloneable
{
  public String pkgname = "";

  static
  {
    if (!TipsReqInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TipsReqInfo()
  {
    setPkgname(this.pkgname);
  }

  public TipsReqInfo(String paramString)
  {
    setPkgname(paramString);
  }

  public final String className()
  {
    return "QQPIM.TipsReqInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.pkgname, "pkgname");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    TipsReqInfo localTipsReqInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.pkgname, localTipsReqInfo.pkgname))
    {
      return bool;
      localTipsReqInfo = (TipsReqInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.TipsReqInfo";
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
  }

  public final void setPkgname(String paramString)
  {
    this.pkgname = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.pkgname, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TipsReqInfo
 * JD-Core Version:    0.6.2
 */