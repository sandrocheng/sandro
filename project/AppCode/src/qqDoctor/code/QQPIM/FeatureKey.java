package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FeatureKey extends JceStruct
  implements Cloneable
{
  public String cert = "";
  public int fileSize = 0;
  public String softName = "";
  public String uniCode = "";
  public String version = "";
  public int versionCode = 0;

  static
  {
    if (!FeatureKey.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FeatureKey()
  {
    setUniCode(this.uniCode);
    setSoftName(this.softName);
    setVersion(this.version);
    setVersionCode(this.versionCode);
    setCert(this.cert);
    setFileSize(this.fileSize);
  }

  public FeatureKey(String paramString1, String paramString2, String paramString3, int paramInt1, String paramString4, int paramInt2)
  {
    setUniCode(paramString1);
    setSoftName(paramString2);
    setVersion(paramString3);
    setVersionCode(paramInt1);
    setCert(paramString4);
    setFileSize(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.FeatureKey";
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
    localJceDisplayer.display(this.uniCode, "uniCode");
    localJceDisplayer.display(this.softName, "softName");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.versionCode, "versionCode");
    localJceDisplayer.display(this.cert, "cert");
    localJceDisplayer.display(this.fileSize, "fileSize");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FeatureKey localFeatureKey = (FeatureKey)paramObject;
      boolean bool2 = JceUtil.equals(this.uniCode, localFeatureKey.uniCode);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.softName, localFeatureKey.softName);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.version, localFeatureKey.version);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.versionCode, localFeatureKey.versionCode);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.cert, localFeatureKey.cert);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.fileSize, localFeatureKey.fileSize);
                bool1 = false;
                if (bool7)
                  bool1 = true;
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.FeatureKey";
  }

  public final String getCert()
  {
    return this.cert;
  }

  public final int getFileSize()
  {
    return this.fileSize;
  }

  public final String getSoftName()
  {
    return this.softName;
  }

  public final String getUniCode()
  {
    return this.uniCode;
  }

  public final String getVersion()
  {
    return this.version;
  }

  public final int getVersionCode()
  {
    return this.versionCode;
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
    this.uniCode = paramJceInputStream.readString(0, true);
    this.softName = paramJceInputStream.readString(1, true);
    this.version = paramJceInputStream.readString(2, true);
    this.versionCode = paramJceInputStream.read(this.versionCode, 3, false);
    this.cert = paramJceInputStream.readString(4, false);
    this.fileSize = paramJceInputStream.read(this.fileSize, 5, false);
  }

  public final void setCert(String paramString)
  {
    this.cert = paramString;
  }

  public final void setFileSize(int paramInt)
  {
    this.fileSize = paramInt;
  }

  public final void setSoftName(String paramString)
  {
    this.softName = paramString;
  }

  public final void setUniCode(String paramString)
  {
    this.uniCode = paramString;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void setVersionCode(int paramInt)
  {
    this.versionCode = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uniCode, 0);
    paramJceOutputStream.write(this.softName, 1);
    paramJceOutputStream.write(this.version, 2);
    paramJceOutputStream.write(this.versionCode, 3);
    if (this.cert != null)
      paramJceOutputStream.write(this.cert, 4);
    paramJceOutputStream.write(this.fileSize, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FeatureKey
 * JD-Core Version:    0.6.2
 */