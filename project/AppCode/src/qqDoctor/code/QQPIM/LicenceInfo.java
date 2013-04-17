package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LicenceInfo extends JceStruct
  implements Cloneable
{
  public String strchannel = "";
  public String strsignature = "";

  static
  {
    if (!LicenceInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public LicenceInfo()
  {
    setStrsignature(this.strsignature);
    setStrchannel(this.strchannel);
  }

  public LicenceInfo(String paramString1, String paramString2)
  {
    setStrsignature(paramString1);
    setStrchannel(paramString2);
  }

  public final String className()
  {
    return "QQPIM.LicenceInfo";
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
    localJceDisplayer.display(this.strsignature, "strsignature");
    localJceDisplayer.display(this.strchannel, "strchannel");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      LicenceInfo localLicenceInfo = (LicenceInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.strsignature, localLicenceInfo.strsignature);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.strchannel, localLicenceInfo.strchannel);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.LicenceInfo";
  }

  public final String getStrchannel()
  {
    return this.strchannel;
  }

  public final String getStrsignature()
  {
    return this.strsignature;
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
    this.strsignature = paramJceInputStream.readString(0, true);
    this.strchannel = paramJceInputStream.readString(1, false);
  }

  public final void setStrchannel(String paramString)
  {
    this.strchannel = paramString;
  }

  public final void setStrsignature(String paramString)
  {
    this.strsignature = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.strsignature, 0);
    if (this.strchannel != null)
      paramJceOutputStream.write(this.strchannel, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.LicenceInfo
 * JD-Core Version:    0.6.2
 */