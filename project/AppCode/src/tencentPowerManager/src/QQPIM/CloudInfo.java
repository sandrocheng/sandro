package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class CloudInfo extends JceStruct
  implements Cloneable
{
  static BaseInfo cache_base;
  static ArrayList<CloudCmd> cache_cloudcmds;
  static TimeCtrl cache_time;
  static TipsInfo cache_tips;
  public BaseInfo base = null;
  public ArrayList<CloudCmd> cloudcmds = null;
  public TimeCtrl time = null;
  public TipsInfo tips = null;

  static
  {
    if (!CloudInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CloudInfo()
  {
    setBase(this.base);
    setTime(this.time);
    setTips(this.tips);
    setCloudcmds(this.cloudcmds);
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
    localJceDisplayer.display(this.base, "base");
    localJceDisplayer.display(this.time, "time");
    localJceDisplayer.display(this.tips, "tips");
    localJceDisplayer.display(this.cloudcmds, "cloudcmds");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CloudInfo localCloudInfo = (CloudInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.base, localCloudInfo.base);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.time, localCloudInfo.time);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.tips, localCloudInfo.tips);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.cloudcmds, localCloudInfo.cloudcmds);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final ArrayList<CloudCmd> getCloudcmds()
  {
    return this.cloudcmds;
  }

  public final TipsInfo getTips()
  {
    return this.tips;
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
    if (cache_base == null)
      cache_base = new BaseInfo();
    this.base = ((BaseInfo)paramJceInputStream.read(cache_base, 0, true));
    if (cache_time == null)
      cache_time = new TimeCtrl();
    this.time = ((TimeCtrl)paramJceInputStream.read(cache_time, 1, true));
    if (cache_tips == null)
      cache_tips = new TipsInfo();
    this.tips = ((TipsInfo)paramJceInputStream.read(cache_tips, 2, false));
    if (cache_cloudcmds == null)
    {
      cache_cloudcmds = new ArrayList();
      CloudCmd localCloudCmd = new CloudCmd();
      cache_cloudcmds.add(localCloudCmd);
    }
    setCloudcmds((ArrayList)paramJceInputStream.read(cache_cloudcmds, 3, false));
  }

  public final void setBase(BaseInfo paramBaseInfo)
  {
    this.base = paramBaseInfo;
  }

  public final void setCloudcmds(ArrayList<CloudCmd> paramArrayList)
  {
    this.cloudcmds = paramArrayList;
  }

  public final void setTime(TimeCtrl paramTimeCtrl)
  {
    this.time = paramTimeCtrl;
  }

  public final void setTips(TipsInfo paramTipsInfo)
  {
    this.tips = paramTipsInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.base, 0);
    paramJceOutputStream.write(this.time, 1);
    if (this.tips != null)
      paramJceOutputStream.write(this.tips, 2);
    if (this.cloudcmds != null)
      paramJceOutputStream.write(this.cloudcmds, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.CloudInfo
 * JD-Core Version:    0.6.2
 */