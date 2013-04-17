package com.tencent.tmsecure.module.qscanner;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ApkKey extends JceStruct
  implements Cloneable
{
  public int apkType = 0;
  public String certMd5 = "";
  public String path = "";
  public String pkgName = "";
  public int size = 0;
  public String softName = "";
  public String version = "";
  public int versionCode = 0;

  static
  {
    if (!ApkKey.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      a = bool;
      return;
    }
  }

  public ApkKey()
  {
    setPkgName(this.pkgName);
    setSoftName(this.softName);
    setCertMd5(this.certMd5);
    setVersion(this.version);
    setVersionCode(this.versionCode);
    setSize(this.size);
    setPath(this.path);
    setApkType(this.apkType);
  }

  public ApkKey(String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, int paramInt2, String paramString5, int paramInt3)
  {
    setPkgName(paramString1);
    setSoftName(paramString2);
    setCertMd5(paramString3);
    setVersion(paramString4);
    setVersionCode(paramInt1);
    setSize(paramInt2);
    setPath(paramString5);
    setApkType(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.ApkKey";
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
        bool = a;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.pkgName, "pkgName");
    localJceDisplayer.display(this.softName, "softName");
    localJceDisplayer.display(this.certMd5, "certMd5");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.versionCode, "versionCode");
    localJceDisplayer.display(this.size, "size");
    localJceDisplayer.display(this.path, "path");
    localJceDisplayer.display(this.apkType, "apkType");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject != null)
    {
      boolean bool2 = paramObject instanceof ApkKey;
      bool1 = false;
      if (bool2)
      {
        ApkKey localApkKey = (ApkKey)paramObject;
        bool1 = false;
        if (localApkKey != null)
        {
          boolean bool3 = JceUtil.equals(this.pkgName, localApkKey.pkgName);
          bool1 = false;
          if (bool3)
          {
            boolean bool4 = JceUtil.equals(this.softName, localApkKey.softName);
            bool1 = false;
            if (bool4)
            {
              boolean bool5 = JceUtil.equals(this.certMd5, localApkKey.certMd5);
              bool1 = false;
              if (bool5)
              {
                boolean bool6 = JceUtil.equals(this.version, localApkKey.version);
                bool1 = false;
                if (bool6)
                {
                  boolean bool7 = JceUtil.equals(this.versionCode, localApkKey.versionCode);
                  bool1 = false;
                  if (bool7)
                  {
                    boolean bool8 = JceUtil.equals(this.size, localApkKey.size);
                    bool1 = false;
                    if (bool8)
                    {
                      boolean bool9 = JceUtil.equals(this.path, localApkKey.path);
                      bool1 = false;
                      if (bool9)
                      {
                        boolean bool10 = JceUtil.equals(this.apkType, localApkKey.apkType);
                        bool1 = false;
                        if (bool10)
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
    }
    return bool1;
  }

  public final String fullClassName()
  {
    return "QQPIM.ApkKey";
  }

  public final int getApkType()
  {
    return this.apkType;
  }

  public final String getCertMd5()
  {
    return this.certMd5;
  }

  public final String getPath()
  {
    return this.path;
  }

  public final String getPkgName()
  {
    return this.pkgName;
  }

  public final int getSize()
  {
    return this.size;
  }

  public final String getSoftName()
  {
    return this.softName;
  }

  public final String getVersion()
  {
    return this.version;
  }

  public final int getVersionCode()
  {
    return this.versionCode;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.pkgName = paramJceInputStream.readString(0, true);
    this.softName = paramJceInputStream.readString(1, true);
    this.certMd5 = paramJceInputStream.readString(2, true);
    this.version = paramJceInputStream.readString(3, true);
    this.versionCode = paramJceInputStream.read(this.versionCode, 4, true);
    this.size = paramJceInputStream.read(this.size, 5, true);
    this.path = paramJceInputStream.readString(6, false);
    this.apkType = paramJceInputStream.read(this.apkType, 7, false);
  }

  public final void setApkType(int paramInt)
  {
    this.apkType = paramInt;
  }

  public final void setCertMd5(String paramString)
  {
    this.certMd5 = paramString;
  }

  public final void setPath(String paramString)
  {
    this.path = paramString;
  }

  public final void setPkgName(String paramString)
  {
    this.pkgName = paramString;
  }

  public final void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public final void setSoftName(String paramString)
  {
    this.softName = paramString;
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
    paramJceOutputStream.write(this.pkgName, 0);
    paramJceOutputStream.write(this.softName, 1);
    paramJceOutputStream.write(this.certMd5, 2);
    paramJceOutputStream.write(this.version, 3);
    paramJceOutputStream.write(this.versionCode, 4);
    paramJceOutputStream.write(this.size, 5);
    if (this.path != null)
      paramJceOutputStream.write(this.path, 6);
    paramJceOutputStream.write(this.apkType, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.qscanner.ApkKey
 * JD-Core Version:    0.6.2
 */