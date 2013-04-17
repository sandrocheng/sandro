package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipInfo extends JceStruct
  implements Cloneable
{
  public String strTips = "";
  public String strTitle = "";

  static
  {
    if (!TipInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TipInfo()
  {
    setStrTips(this.strTips);
    setStrTitle(this.strTitle);
  }

  public TipInfo(String paramString1, String paramString2)
  {
    setStrTips(paramString1);
    setStrTitle(paramString2);
  }

  public final String className()
  {
    return "QQPIM.TipInfo";
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
    localJceDisplayer.display(this.strTips, "strTips");
    localJceDisplayer.display(this.strTitle, "strTitle");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TipInfo localTipInfo = (TipInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.strTips, localTipInfo.strTips);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.strTitle, localTipInfo.strTitle);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.TipInfo";
  }

  public final String getStrTips()
  {
    return this.strTips;
  }

  public final String getStrTitle()
  {
    return this.strTitle;
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
    this.strTips = paramJceInputStream.readString(0, true);
    this.strTitle = paramJceInputStream.readString(1, false);
  }

  public final void setStrTips(String paramString)
  {
    this.strTips = paramString;
  }

  public final void setStrTitle(String paramString)
  {
    this.strTitle = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.strTips, 0);
    if (this.strTitle != null)
      paramJceOutputStream.write(this.strTitle, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TipInfo
 * JD-Core Version:    0.6.2
 */