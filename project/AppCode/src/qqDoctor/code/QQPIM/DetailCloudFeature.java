package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DetailCloudFeature extends JceStruct
  implements Cloneable
{
  public String certMd5 = "";
  public int fileSize = 0;
  public boolean isRom = false;
  public String packName = "";
  public String softName = "";
  public String version = "";
  public int versionCode = 0;

  static
  {
    if (!DetailCloudFeature.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DetailCloudFeature()
  {
    setPackName(this.packName);
    setCertMd5(this.certMd5);
    setFileSize(this.fileSize);
    setVersion(this.version);
    setVersionCode(this.versionCode);
    setSoftName(this.softName);
    setIsRom(this.isRom);
  }

  public DetailCloudFeature(String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, String paramString4, boolean paramBoolean)
  {
    setPackName(paramString1);
    setCertMd5(paramString2);
    setFileSize(paramInt1);
    setVersion(paramString3);
    setVersionCode(paramInt2);
    setSoftName(paramString4);
    setIsRom(paramBoolean);
  }

  public final String className()
  {
    return "QQPIM.DetailCloudFeature";
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
    localJceDisplayer.display(this.packName, "packName");
    localJceDisplayer.display(this.certMd5, "certMd5");
    localJceDisplayer.display(this.fileSize, "fileSize");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.versionCode, "versionCode");
    localJceDisplayer.display(this.softName, "softName");
    localJceDisplayer.display(this.isRom, "isRom");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      DetailCloudFeature localDetailCloudFeature = (DetailCloudFeature)paramObject;
      boolean bool2 = JceUtil.equals(this.packName, localDetailCloudFeature.packName);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.certMd5, localDetailCloudFeature.certMd5);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.fileSize, localDetailCloudFeature.fileSize);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.version, localDetailCloudFeature.version);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.versionCode, localDetailCloudFeature.versionCode);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.softName, localDetailCloudFeature.softName);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.isRom, localDetailCloudFeature.isRom);
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
    return "QQPIM.DetailCloudFeature";
  }

  public final String getCertMd5()
  {
    return this.certMd5;
  }

  public final int getFileSize()
  {
    return this.fileSize;
  }

  public final boolean getIsRom()
  {
    return this.isRom;
  }

  public final String getPackName()
  {
    return this.packName;
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
    this.packName = paramJceInputStream.readString(0, true);
    this.certMd5 = paramJceInputStream.readString(1, true);
    this.fileSize = paramJceInputStream.read(this.fileSize, 2, true);
    this.version = paramJceInputStream.readString(3, true);
    this.versionCode = paramJceInputStream.read(this.versionCode, 4, false);
    this.softName = paramJceInputStream.readString(5, false);
    this.isRom = paramJceInputStream.read(this.isRom, 6, false);
  }

  public final void setCertMd5(String paramString)
  {
    this.certMd5 = paramString;
  }

  public final void setFileSize(int paramInt)
  {
    this.fileSize = paramInt;
  }

  public final void setIsRom(boolean paramBoolean)
  {
    this.isRom = paramBoolean;
  }

  public final void setPackName(String paramString)
  {
    this.packName = paramString;
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
    paramJceOutputStream.write(this.packName, 0);
    paramJceOutputStream.write(this.certMd5, 1);
    paramJceOutputStream.write(this.fileSize, 2);
    paramJceOutputStream.write(this.version, 3);
    paramJceOutputStream.write(this.versionCode, 4);
    if (this.softName != null)
      paramJceOutputStream.write(this.softName, 5);
    paramJceOutputStream.write(this.isRom, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.DetailCloudFeature
 * JD-Core Version:    0.6.2
 */