package graystrategy;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AppUpdate extends JceStruct
  implements Cloneable
{
  public String descriptioin = "";
  public String detailUrl = "";
  public String registerUrl = "";
  public long releaseTime = 0L;
  public String versionName = "";

  static
  {
    if (!AppUpdate.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public AppUpdate()
  {
    setVersionName(this.versionName);
    setDescriptioin(this.descriptioin);
    setDetailUrl(this.detailUrl);
    setReleaseTime(this.releaseTime);
    setRegisterUrl(this.registerUrl);
  }

  public AppUpdate(String paramString1, String paramString2, String paramString3, long paramLong, String paramString4)
  {
    setVersionName(paramString1);
    setDescriptioin(paramString2);
    setDetailUrl(paramString3);
    setReleaseTime(paramLong);
    setRegisterUrl(paramString4);
  }

  public final String className()
  {
    return "graystrategy.AppUpdate";
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
    localJceDisplayer.display(this.versionName, "versionName");
    localJceDisplayer.display(this.descriptioin, "descriptioin");
    localJceDisplayer.display(this.detailUrl, "detailUrl");
    localJceDisplayer.display(this.releaseTime, "releaseTime");
    localJceDisplayer.display(this.registerUrl, "registerUrl");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      AppUpdate localAppUpdate = (AppUpdate)paramObject;
      boolean bool2 = JceUtil.equals(this.versionName, localAppUpdate.versionName);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.descriptioin, localAppUpdate.descriptioin);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.detailUrl, localAppUpdate.detailUrl);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.releaseTime, localAppUpdate.releaseTime);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.registerUrl, localAppUpdate.registerUrl);
              bool1 = false;
              if (bool6)
                bool1 = true;
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "graystrategy.AppUpdate";
  }

  public final String getDescriptioin()
  {
    return this.descriptioin;
  }

  public final String getDetailUrl()
  {
    return this.detailUrl;
  }

  public final String getRegisterUrl()
  {
    return this.registerUrl;
  }

  public final long getReleaseTime()
  {
    return this.releaseTime;
  }

  public final String getVersionName()
  {
    return this.versionName;
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
    this.versionName = paramJceInputStream.readString(0, true);
    this.descriptioin = paramJceInputStream.readString(1, true);
    this.detailUrl = paramJceInputStream.readString(2, true);
    this.releaseTime = paramJceInputStream.read(this.releaseTime, 3, true);
    this.registerUrl = paramJceInputStream.readString(4, false);
  }

  public final void setDescriptioin(String paramString)
  {
    this.descriptioin = paramString;
  }

  public final void setDetailUrl(String paramString)
  {
    this.detailUrl = paramString;
  }

  public final void setRegisterUrl(String paramString)
  {
    this.registerUrl = paramString;
  }

  public final void setReleaseTime(long paramLong)
  {
    this.releaseTime = paramLong;
  }

  public final void setVersionName(String paramString)
  {
    this.versionName = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.versionName, 0);
    paramJceOutputStream.write(this.descriptioin, 1);
    paramJceOutputStream.write(this.detailUrl, 2);
    paramJceOutputStream.write(this.releaseTime, 3);
    if (this.registerUrl != null)
      paramJceOutputStream.write(this.registerUrl, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     graystrategy.AppUpdate
 * JD-Core Version:    0.6.2
 */