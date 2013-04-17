package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBIllegaSoft extends JceStruct
  implements Cloneable
{
  static int cache_illreason;
  static int cache_reporttype;
  static SoftKey cache_softkey;
  public String company = "";
  public int illreason = 0;
  public int reporttype = FBIReportType.FBI_REPORT.value();
  public SoftKey softkey = null;

  static
  {
    if (!FBIllegaSoft.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FBIllegaSoft()
  {
    setSoftkey(this.softkey);
    setCompany(this.company);
    setIllreason(this.illreason);
    setReporttype(this.reporttype);
  }

  public FBIllegaSoft(SoftKey paramSoftKey, String paramString, int paramInt1, int paramInt2)
  {
    setSoftkey(paramSoftKey);
    setCompany(paramString);
    setIllreason(paramInt1);
    setReporttype(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.FBIllegaSoft";
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
    localJceDisplayer.display(this.softkey, "softkey");
    localJceDisplayer.display(this.company, "company");
    localJceDisplayer.display(this.illreason, "illreason");
    localJceDisplayer.display(this.reporttype, "reporttype");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FBIllegaSoft localFBIllegaSoft = (FBIllegaSoft)paramObject;
      boolean bool2 = JceUtil.equals(this.softkey, localFBIllegaSoft.softkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.company, localFBIllegaSoft.company);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.illreason, localFBIllegaSoft.illreason);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.reporttype, localFBIllegaSoft.reporttype);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.FBIllegaSoft";
  }

  public final String getCompany()
  {
    return this.company;
  }

  public final int getIllreason()
  {
    return this.illreason;
  }

  public final int getReporttype()
  {
    return this.reporttype;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
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
    if (cache_softkey == null)
      cache_softkey = new SoftKey();
    this.softkey = ((SoftKey)paramJceInputStream.read(cache_softkey, 0, true));
    this.company = paramJceInputStream.readString(1, true);
    this.illreason = paramJceInputStream.read(this.illreason, 2, true);
    this.reporttype = paramJceInputStream.read(this.reporttype, 3, false);
  }

  public final void setCompany(String paramString)
  {
    this.company = paramString;
  }

  public final void setIllreason(int paramInt)
  {
    this.illreason = paramInt;
  }

  public final void setReporttype(int paramInt)
  {
    this.reporttype = paramInt;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softkey, 0);
    paramJceOutputStream.write(this.company, 1);
    paramJceOutputStream.write(this.illreason, 2);
    paramJceOutputStream.write(this.reporttype, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FBIllegaSoft
 * JD-Core Version:    0.6.2
 */