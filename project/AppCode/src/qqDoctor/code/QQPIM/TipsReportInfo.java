package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipsReportInfo extends JceStruct
  implements Cloneable
{
  public String description = "";
  public String tipsid = "";
  public int useraction = 0;

  static
  {
    if (!TipsReportInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TipsReportInfo()
  {
    setTipsid(this.tipsid);
    setUseraction(this.useraction);
    setDescription(this.description);
  }

  public TipsReportInfo(String paramString1, int paramInt, String paramString2)
  {
    setTipsid(paramString1);
    setUseraction(paramInt);
    setDescription(paramString2);
  }

  public final String className()
  {
    return "QQPIM.TipsReportInfo";
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
    localJceDisplayer.display(this.tipsid, "tipsid");
    localJceDisplayer.display(this.useraction, "useraction");
    localJceDisplayer.display(this.description, "description");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TipsReportInfo localTipsReportInfo = (TipsReportInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.tipsid, localTipsReportInfo.tipsid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.useraction, localTipsReportInfo.useraction);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.description, localTipsReportInfo.description);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.TipsReportInfo";
  }

  public final String getDescription()
  {
    return this.description;
  }

  public final String getTipsid()
  {
    return this.tipsid;
  }

  public final int getUseraction()
  {
    return this.useraction;
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
    this.tipsid = paramJceInputStream.readString(0, true);
    this.useraction = paramJceInputStream.read(this.useraction, 1, true);
    this.description = paramJceInputStream.readString(2, true);
  }

  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public final void setTipsid(String paramString)
  {
    this.tipsid = paramString;
  }

  public final void setUseraction(int paramInt)
  {
    this.useraction = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.tipsid, 0);
    paramJceOutputStream.write(this.useraction, 1);
    paramJceOutputStream.write(this.description, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TipsReportInfo
 * JD-Core Version:    0.6.2
 */