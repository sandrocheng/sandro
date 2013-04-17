package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RecommendSoft extends JceStruct
  implements Cloneable
{
  static ProductVersion cache_version;
  public String uid = "";
  public String url = "";
  public ProductVersion version = null;

  static
  {
    if (!RecommendSoft.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RecommendSoft()
  {
    setUrl(this.url);
    setVersion(this.version);
    setUid(this.uid);
  }

  public RecommendSoft(String paramString1, ProductVersion paramProductVersion, String paramString2)
  {
    setUrl(paramString1);
    setVersion(paramProductVersion);
    setUid(paramString2);
  }

  public final String className()
  {
    return "QQPIM.RecommendSoft";
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
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.uid, "uid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      RecommendSoft localRecommendSoft = (RecommendSoft)paramObject;
      boolean bool2 = JceUtil.equals(this.url, localRecommendSoft.url);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.version, localRecommendSoft.version);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.uid, localRecommendSoft.uid);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.RecommendSoft";
  }

  public final String getUid()
  {
    return this.uid;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final ProductVersion getVersion()
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
    this.url = paramJceInputStream.readString(0, true);
    if (cache_version == null)
      cache_version = new ProductVersion();
    this.version = ((ProductVersion)paramJceInputStream.read(cache_version, 1, true));
    this.uid = paramJceInputStream.readString(2, false);
  }

  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void setVersion(ProductVersion paramProductVersion)
  {
    this.version = paramProductVersion;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.url, 0);
    paramJceOutputStream.write(this.version, 1);
    if (this.uid != null)
      paramJceOutputStream.write(this.uid, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RecommendSoft
 * JD-Core Version:    0.6.2
 */