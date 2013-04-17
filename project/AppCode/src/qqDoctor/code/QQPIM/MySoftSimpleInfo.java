package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MySoftSimpleInfo extends JceStruct
  implements Cloneable
{
  static SoftSimpleInfo cache_softSimpleInfo;
  public int official = 0;
  public int reportFeature = 0;
  public SoftSimpleInfo softSimpleInfo = null;
  public int update = 0;

  static
  {
    if (!MySoftSimpleInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MySoftSimpleInfo()
  {
    setSoftSimpleInfo(this.softSimpleInfo);
    setReportFeature(this.reportFeature);
    setOfficial(this.official);
    setUpdate(this.update);
  }

  public MySoftSimpleInfo(SoftSimpleInfo paramSoftSimpleInfo, int paramInt1, int paramInt2, int paramInt3)
  {
    setSoftSimpleInfo(paramSoftSimpleInfo);
    setReportFeature(paramInt1);
    setOfficial(paramInt2);
    setUpdate(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.MySoftSimpleInfo";
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
    localJceDisplayer.display(this.softSimpleInfo, "softSimpleInfo");
    localJceDisplayer.display(this.reportFeature, "reportFeature");
    localJceDisplayer.display(this.official, "official");
    localJceDisplayer.display(this.update, "update");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      MySoftSimpleInfo localMySoftSimpleInfo = (MySoftSimpleInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.softSimpleInfo, localMySoftSimpleInfo.softSimpleInfo);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.reportFeature, localMySoftSimpleInfo.reportFeature);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.official, localMySoftSimpleInfo.official);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.update, localMySoftSimpleInfo.update);
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
    return "QQPIM.MySoftSimpleInfo";
  }

  public final int getOfficial()
  {
    return this.official;
  }

  public final int getReportFeature()
  {
    return this.reportFeature;
  }

  public final SoftSimpleInfo getSoftSimpleInfo()
  {
    return this.softSimpleInfo;
  }

  public final int getUpdate()
  {
    return this.update;
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
    if (cache_softSimpleInfo == null)
      cache_softSimpleInfo = new SoftSimpleInfo();
    this.softSimpleInfo = ((SoftSimpleInfo)paramJceInputStream.read(cache_softSimpleInfo, 0, true));
    this.reportFeature = paramJceInputStream.read(this.reportFeature, 1, false);
    this.official = paramJceInputStream.read(this.official, 2, false);
    this.update = paramJceInputStream.read(this.update, 3, false);
  }

  public final void setOfficial(int paramInt)
  {
    this.official = paramInt;
  }

  public final void setReportFeature(int paramInt)
  {
    this.reportFeature = paramInt;
  }

  public final void setSoftSimpleInfo(SoftSimpleInfo paramSoftSimpleInfo)
  {
    this.softSimpleInfo = paramSoftSimpleInfo;
  }

  public final void setUpdate(int paramInt)
  {
    this.update = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softSimpleInfo, 0);
    paramJceOutputStream.write(this.reportFeature, 1);
    paramJceOutputStream.write(this.official, 2);
    paramJceOutputStream.write(this.update, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.MySoftSimpleInfo
 * JD-Core Version:    0.6.2
 */