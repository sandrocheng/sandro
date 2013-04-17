package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class InstallInfo extends JceStruct
  implements Cloneable
{
  static ProductVersion cache_version;
  public String cert = "";
  public int option = 0;
  public String uid = "";
  public String url = "";
  public ProductVersion version = null;

  static
  {
    if (!InstallInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public InstallInfo()
  {
    setOption(this.option);
    setUrl(this.url);
    setVersion(this.version);
    setUid(this.uid);
    setCert(this.cert);
  }

  public InstallInfo(int paramInt, String paramString1, ProductVersion paramProductVersion, String paramString2, String paramString3)
  {
    setOption(paramInt);
    setUrl(paramString1);
    setVersion(paramProductVersion);
    setUid(paramString2);
    setCert(paramString3);
  }

  public final String className()
  {
    return "QQPIM.InstallInfo";
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
    localJceDisplayer.display(this.option, "option");
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.uid, "uid");
    localJceDisplayer.display(this.cert, "cert");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      InstallInfo localInstallInfo = (InstallInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.option, localInstallInfo.option);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.url, localInstallInfo.url);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.version, localInstallInfo.version);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.uid, localInstallInfo.uid);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.cert, localInstallInfo.cert);
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
    return "QQPIM.InstallInfo";
  }

  public final String getCert()
  {
    return this.cert;
  }

  public final int getOption()
  {
    return this.option;
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
    this.option = paramJceInputStream.read(this.option, 0, true);
    this.url = paramJceInputStream.readString(1, true);
    if (cache_version == null)
      cache_version = new ProductVersion();
    this.version = ((ProductVersion)paramJceInputStream.read(cache_version, 2, false));
    this.uid = paramJceInputStream.readString(3, false);
    this.cert = paramJceInputStream.readString(4, false);
  }

  public final void setCert(String paramString)
  {
    this.cert = paramString;
  }

  public final void setOption(int paramInt)
  {
    this.option = paramInt;
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
    paramJceOutputStream.write(this.option, 0);
    paramJceOutputStream.write(this.url, 1);
    if (this.version != null)
      paramJceOutputStream.write(this.version, 2);
    if (this.uid != null)
      paramJceOutputStream.write(this.uid, 3);
    if (this.cert != null)
      paramJceOutputStream.write(this.cert, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.InstallInfo
 * JD-Core Version:    0.6.2
 */