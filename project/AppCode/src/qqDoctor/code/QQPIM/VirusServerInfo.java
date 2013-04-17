package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VirusServerInfo extends JceStruct
  implements Cloneable
{
  public String advise = "";
  public boolean bUpdate = true;
  public int engine_version = 2;
  public String short_desc = "";
  public String strTips = "";
  public int timestamp = 0;
  public String url = "";
  public int version = 0;

  static
  {
    if (!VirusServerInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public VirusServerInfo()
  {
    setStrTips(this.strTips);
    setBUpdate(this.bUpdate);
    setVersion(this.version);
    setTimestamp(this.timestamp);
    setUrl(this.url);
    setShort_desc(this.short_desc);
    setAdvise(this.advise);
    setEngine_version(this.engine_version);
  }

  public VirusServerInfo(String paramString1, boolean paramBoolean, int paramInt1, int paramInt2, String paramString2, String paramString3, String paramString4, int paramInt3)
  {
    setStrTips(paramString1);
    setBUpdate(paramBoolean);
    setVersion(paramInt1);
    setTimestamp(paramInt2);
    setUrl(paramString2);
    setShort_desc(paramString3);
    setAdvise(paramString4);
    setEngine_version(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.VirusServerInfo";
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
    localJceDisplayer.display(this.bUpdate, "bUpdate");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.timestamp, "timestamp");
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.short_desc, "short_desc");
    localJceDisplayer.display(this.advise, "advise");
    localJceDisplayer.display(this.engine_version, "engine_version");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      VirusServerInfo localVirusServerInfo = (VirusServerInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.strTips, localVirusServerInfo.strTips);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.bUpdate, localVirusServerInfo.bUpdate);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.version, localVirusServerInfo.version);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.timestamp, localVirusServerInfo.timestamp);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.url, localVirusServerInfo.url);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.short_desc, localVirusServerInfo.short_desc);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.advise, localVirusServerInfo.advise);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.engine_version, localVirusServerInfo.engine_version);
                    bool1 = false;
                    if (bool9)
                      bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.VirusServerInfo";
  }

  public final String getAdvise()
  {
    return this.advise;
  }

  public final boolean getBUpdate()
  {
    return this.bUpdate;
  }

  public final int getEngine_version()
  {
    return this.engine_version;
  }

  public final String getShort_desc()
  {
    return this.short_desc;
  }

  public final String getStrTips()
  {
    return this.strTips;
  }

  public final int getTimestamp()
  {
    return this.timestamp;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final int getVersion()
  {
    return this.version;
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
    this.bUpdate = paramJceInputStream.read(this.bUpdate, 1, true);
    this.version = paramJceInputStream.read(this.version, 2, true);
    this.timestamp = paramJceInputStream.read(this.timestamp, 3, true);
    this.url = paramJceInputStream.readString(4, true);
    this.short_desc = paramJceInputStream.readString(5, true);
    this.advise = paramJceInputStream.readString(6, true);
    this.engine_version = paramJceInputStream.read(this.engine_version, 7, false);
  }

  public final void setAdvise(String paramString)
  {
    this.advise = paramString;
  }

  public final void setBUpdate(boolean paramBoolean)
  {
    this.bUpdate = paramBoolean;
  }

  public final void setEngine_version(int paramInt)
  {
    this.engine_version = paramInt;
  }

  public final void setShort_desc(String paramString)
  {
    this.short_desc = paramString;
  }

  public final void setStrTips(String paramString)
  {
    this.strTips = paramString;
  }

  public final void setTimestamp(int paramInt)
  {
    this.timestamp = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void setVersion(int paramInt)
  {
    this.version = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.strTips, 0);
    paramJceOutputStream.write(this.bUpdate, 1);
    paramJceOutputStream.write(this.version, 2);
    paramJceOutputStream.write(this.timestamp, 3);
    paramJceOutputStream.write(this.url, 4);
    paramJceOutputStream.write(this.short_desc, 5);
    paramJceOutputStream.write(this.advise, 6);
    paramJceOutputStream.write(this.engine_version, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.VirusServerInfo
 * JD-Core Version:    0.6.2
 */