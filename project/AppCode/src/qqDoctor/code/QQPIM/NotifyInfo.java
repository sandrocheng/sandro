package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class NotifyInfo extends JceStruct
  implements Cloneable
{
  static FeatureKey cache_featurekey;
  public String content = "";
  public FeatureKey featurekey = null;
  public int infoType = 0;
  public int reportType = 0;
  public int timestamp = 0;
  public String title = "";
  public String url = "";

  static
  {
    if (!NotifyInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public NotifyInfo()
  {
    setFeaturekey(this.featurekey);
    setTitle(this.title);
    setContent(this.content);
    setTimestamp(this.timestamp);
    setReportType(this.reportType);
    setInfoType(this.infoType);
    setUrl(this.url);
  }

  public NotifyInfo(FeatureKey paramFeatureKey, String paramString1, String paramString2, int paramInt1, int paramInt2, int paramInt3, String paramString3)
  {
    setFeaturekey(paramFeatureKey);
    setTitle(paramString1);
    setContent(paramString2);
    setTimestamp(paramInt1);
    setReportType(paramInt2);
    setInfoType(paramInt3);
    setUrl(paramString3);
  }

  public final String className()
  {
    return "QQPIM.NotifyInfo";
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
    localJceDisplayer.display(this.featurekey, "featurekey");
    localJceDisplayer.display(this.title, "title");
    localJceDisplayer.display(this.content, "content");
    localJceDisplayer.display(this.timestamp, "timestamp");
    localJceDisplayer.display(this.reportType, "reportType");
    localJceDisplayer.display(this.infoType, "infoType");
    localJceDisplayer.display(this.url, "url");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      NotifyInfo localNotifyInfo = (NotifyInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.featurekey, localNotifyInfo.featurekey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.title, localNotifyInfo.title);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.content, localNotifyInfo.content);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.timestamp, localNotifyInfo.timestamp);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.reportType, localNotifyInfo.reportType);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.infoType, localNotifyInfo.infoType);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.url, localNotifyInfo.url);
                  bool1 = false;
                  if (bool8)
                    bool1 = true;
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
    return "QQPIM.NotifyInfo";
  }

  public final String getContent()
  {
    return this.content;
  }

  public final FeatureKey getFeaturekey()
  {
    return this.featurekey;
  }

  public final int getInfoType()
  {
    return this.infoType;
  }

  public final int getReportType()
  {
    return this.reportType;
  }

  public final int getTimestamp()
  {
    return this.timestamp;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final String getUrl()
  {
    return this.url;
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
    if (cache_featurekey == null)
      cache_featurekey = new FeatureKey();
    this.featurekey = ((FeatureKey)paramJceInputStream.read(cache_featurekey, 0, true));
    this.title = paramJceInputStream.readString(1, true);
    this.content = paramJceInputStream.readString(2, true);
    this.timestamp = paramJceInputStream.read(this.timestamp, 3, false);
    this.reportType = paramJceInputStream.read(this.reportType, 4, false);
    this.infoType = paramJceInputStream.read(this.infoType, 5, false);
    this.url = paramJceInputStream.readString(6, false);
  }

  public final void setContent(String paramString)
  {
    this.content = paramString;
  }

  public final void setFeaturekey(FeatureKey paramFeatureKey)
  {
    this.featurekey = paramFeatureKey;
  }

  public final void setInfoType(int paramInt)
  {
    this.infoType = paramInt;
  }

  public final void setReportType(int paramInt)
  {
    this.reportType = paramInt;
  }

  public final void setTimestamp(int paramInt)
  {
    this.timestamp = paramInt;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.featurekey, 0);
    paramJceOutputStream.write(this.title, 1);
    paramJceOutputStream.write(this.content, 2);
    paramJceOutputStream.write(this.timestamp, 3);
    paramJceOutputStream.write(this.reportType, 4);
    paramJceOutputStream.write(this.infoType, 5);
    if (this.url != null)
      paramJceOutputStream.write(this.url, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.NotifyInfo
 * JD-Core Version:    0.6.2
 */