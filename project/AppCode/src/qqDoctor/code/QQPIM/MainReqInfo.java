package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MainReqInfo extends JceStruct
  implements Cloneable
{
  static TipsReqInfo cache_reqinfo;
  public String oldtipsid = "";
  public TipsReqInfo reqinfo = null;

  static
  {
    if (!MainReqInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MainReqInfo()
  {
    setOldtipsid(this.oldtipsid);
    setReqinfo(this.reqinfo);
  }

  public MainReqInfo(String paramString, TipsReqInfo paramTipsReqInfo)
  {
    setOldtipsid(paramString);
    setReqinfo(paramTipsReqInfo);
  }

  public final String className()
  {
    return "QQPIM.MainReqInfo";
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
    localJceDisplayer.display(this.oldtipsid, "oldtipsid");
    localJceDisplayer.display(this.reqinfo, "reqinfo");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      MainReqInfo localMainReqInfo = (MainReqInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.oldtipsid, localMainReqInfo.oldtipsid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.reqinfo, localMainReqInfo.reqinfo);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.MainReqInfo";
  }

  public final String getOldtipsid()
  {
    return this.oldtipsid;
  }

  public final TipsReqInfo getReqinfo()
  {
    return this.reqinfo;
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
    this.oldtipsid = paramJceInputStream.readString(0, true);
    if (cache_reqinfo == null)
      cache_reqinfo = new TipsReqInfo();
    this.reqinfo = ((TipsReqInfo)paramJceInputStream.read(cache_reqinfo, 1, false));
  }

  public final void setOldtipsid(String paramString)
  {
    this.oldtipsid = paramString;
  }

  public final void setReqinfo(TipsReqInfo paramTipsReqInfo)
  {
    this.reqinfo = paramTipsReqInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.oldtipsid, 0);
    if (this.reqinfo != null)
      paramJceOutputStream.write(this.reqinfo, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.MainReqInfo
 * JD-Core Version:    0.6.2
 */