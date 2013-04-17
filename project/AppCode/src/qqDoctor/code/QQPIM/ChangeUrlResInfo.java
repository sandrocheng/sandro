package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ChangeUrlResInfo extends JceStruct
  implements Cloneable
{
  public String changeurl = "";

  static
  {
    if (!ChangeUrlResInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ChangeUrlResInfo()
  {
    setChangeurl(this.changeurl);
  }

  public ChangeUrlResInfo(String paramString)
  {
    setChangeurl(paramString);
  }

  public final String className()
  {
    return "QQPIM.ChangeUrlResInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.changeurl, "changeurl");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    ChangeUrlResInfo localChangeUrlResInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.changeurl, localChangeUrlResInfo.changeurl))
    {
      return bool;
      localChangeUrlResInfo = (ChangeUrlResInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ChangeUrlResInfo";
  }

  public final String getChangeurl()
  {
    return this.changeurl;
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
    this.changeurl = paramJceInputStream.readString(0, true);
  }

  public final void setChangeurl(String paramString)
  {
    this.changeurl = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.changeurl, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ChangeUrlResInfo
 * JD-Core Version:    0.6.2
 */