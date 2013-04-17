package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FuncActivityInfo extends JceStruct
  implements Cloneable
{
  public String activityid = "";
  public String detailurl = "";
  public int location = 0;
  public String wording = "";

  static
  {
    if (!FuncActivityInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FuncActivityInfo()
  {
    setActivityid(this.activityid);
    setLocation(this.location);
    setWording(this.wording);
    setDetailurl(this.detailurl);
  }

  public FuncActivityInfo(String paramString1, int paramInt, String paramString2, String paramString3)
  {
    setActivityid(paramString1);
    setLocation(paramInt);
    setWording(paramString2);
    setDetailurl(paramString3);
  }

  public final String className()
  {
    return "QQPIM.FuncActivityInfo";
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
    localJceDisplayer.display(this.activityid, "activityid");
    localJceDisplayer.display(this.location, "location");
    localJceDisplayer.display(this.wording, "wording");
    localJceDisplayer.display(this.detailurl, "detailurl");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FuncActivityInfo localFuncActivityInfo = (FuncActivityInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.activityid, localFuncActivityInfo.activityid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.location, localFuncActivityInfo.location);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.wording, localFuncActivityInfo.wording);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.detailurl, localFuncActivityInfo.detailurl);
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
    return "QQPIM.FuncActivityInfo";
  }

  public final String getActivityid()
  {
    return this.activityid;
  }

  public final String getDetailurl()
  {
    return this.detailurl;
  }

  public final int getLocation()
  {
    return this.location;
  }

  public final String getWording()
  {
    return this.wording;
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
    this.activityid = paramJceInputStream.readString(0, true);
    this.location = paramJceInputStream.read(this.location, 1, true);
    this.wording = paramJceInputStream.readString(2, true);
    this.detailurl = paramJceInputStream.readString(3, false);
  }

  public final void setActivityid(String paramString)
  {
    this.activityid = paramString;
  }

  public final void setDetailurl(String paramString)
  {
    this.detailurl = paramString;
  }

  public final void setLocation(int paramInt)
  {
    this.location = paramInt;
  }

  public final void setWording(String paramString)
  {
    this.wording = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.activityid, 0);
    paramJceOutputStream.write(this.location, 1);
    paramJceOutputStream.write(this.wording, 2);
    if (this.detailurl != null)
      paramJceOutputStream.write(this.detailurl, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FuncActivityInfo
 * JD-Core Version:    0.6.2
 */