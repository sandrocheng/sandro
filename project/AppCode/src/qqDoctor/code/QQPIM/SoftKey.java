package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.Arrays;

public final class SoftKey extends JceStruct
  implements Cloneable, Comparable<SoftKey>
{
  public int appid = 0;
  public int break_flag = 0;
  public int category = 0;
  public int categorytype = 0;
  public String cert = "";
  public int isbuildin = 0;
  public String name = "";
  public String newest_version = "";
  public int old_versioncode = 0;
  public String producttime = "";
  public int sdk_version = 0;
  public String softname = "";
  public int source = 0;
  public String uid = "";
  public String version = "";
  public int versioncode = 0;

  static
  {
    if (!SoftKey.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftKey()
  {
    setUid(this.uid);
    setSoftname(this.softname);
    setVersion(this.version);
    setProducttime(this.producttime);
    setCert(this.cert);
    setVersioncode(this.versioncode);
    setName(this.name);
    setIsbuildin(this.isbuildin);
    setNewest_version(this.newest_version);
    setOld_versioncode(this.old_versioncode);
    setCategorytype(this.categorytype);
    setCategory(this.category);
    setBreak_flag(this.break_flag);
    setSource(this.source);
    setSdk_version(this.sdk_version);
    setAppid(this.appid);
  }

  public SoftKey(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt1, String paramString6, int paramInt2, String paramString7, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, int paramInt9)
  {
    setUid(paramString1);
    setSoftname(paramString2);
    setVersion(paramString3);
    setProducttime(paramString4);
    setCert(paramString5);
    setVersioncode(paramInt1);
    setName(paramString6);
    setIsbuildin(paramInt2);
    setNewest_version(paramString7);
    setOld_versioncode(paramInt3);
    setCategorytype(paramInt4);
    setCategory(paramInt5);
    setBreak_flag(paramInt6);
    setSource(paramInt7);
    setSdk_version(paramInt8);
    setAppid(paramInt9);
  }

  public final String className()
  {
    return "QQPIM.SoftKey";
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

  public final int compareTo(SoftKey paramSoftKey)
  {
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = JceUtil.compareTo(this.uid, paramSoftKey.uid);
    arrayOfInt[1] = JceUtil.compareTo(this.softname, paramSoftKey.softname);
    arrayOfInt[2] = JceUtil.compareTo(this.version, paramSoftKey.version);
    arrayOfInt[3] = JceUtil.compareTo(this.producttime, paramSoftKey.producttime);
    for (int i = 0; ; i++)
    {
      int j = arrayOfInt.length;
      int k = 0;
      if (i >= j);
      while (true)
      {
        return k;
        if (arrayOfInt[i] == 0)
          break;
        k = arrayOfInt[i];
      }
    }
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.uid, "uid");
    localJceDisplayer.display(this.softname, "softname");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.producttime, "producttime");
    localJceDisplayer.display(this.cert, "cert");
    localJceDisplayer.display(this.versioncode, "versioncode");
    localJceDisplayer.display(this.name, "name");
    localJceDisplayer.display(this.isbuildin, "isbuildin");
    localJceDisplayer.display(this.newest_version, "newest_version");
    localJceDisplayer.display(this.old_versioncode, "old_versioncode");
    localJceDisplayer.display(this.categorytype, "categorytype");
    localJceDisplayer.display(this.category, "category");
    localJceDisplayer.display(this.break_flag, "break_flag");
    localJceDisplayer.display(this.source, "source");
    localJceDisplayer.display(this.sdk_version, "sdk_version");
    localJceDisplayer.display(this.appid, "appid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftKey localSoftKey = (SoftKey)paramObject;
      boolean bool2 = JceUtil.equals(this.uid, localSoftKey.uid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.softname, localSoftKey.softname);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.version, localSoftKey.version);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.producttime, localSoftKey.producttime);
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
    return "QQPIM.SoftKey";
  }

  public final int getAppid()
  {
    return this.appid;
  }

  public final int getBreak_flag()
  {
    return this.break_flag;
  }

  public final int getCategory()
  {
    return this.category;
  }

  public final int getCategorytype()
  {
    return this.categorytype;
  }

  public final String getCert()
  {
    return this.cert;
  }

  public final int getIsbuildin()
  {
    return this.isbuildin;
  }

  public final String getName()
  {
    return this.name;
  }

  public final String getNewest_version()
  {
    return this.newest_version;
  }

  public final int getOld_versioncode()
  {
    return this.old_versioncode;
  }

  public final String getProducttime()
  {
    return this.producttime;
  }

  public final int getSdk_version()
  {
    return this.sdk_version;
  }

  public final String getSoftname()
  {
    return this.softname;
  }

  public final int getSource()
  {
    return this.source;
  }

  public final String getUid()
  {
    return this.uid;
  }

  public final String getVersion()
  {
    return this.version;
  }

  public final int getVersioncode()
  {
    return this.versioncode;
  }

  public final int hashCode()
  {
    int[] arrayOfInt = new int[4];
    arrayOfInt[0] = JceUtil.hashCode(this.uid);
    arrayOfInt[1] = JceUtil.hashCode(this.softname);
    arrayOfInt[2] = JceUtil.hashCode(this.version);
    arrayOfInt[3] = JceUtil.hashCode(this.producttime);
    return Arrays.hashCode(arrayOfInt);
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.uid = paramJceInputStream.readString(0, true);
    this.softname = paramJceInputStream.readString(1, true);
    this.version = paramJceInputStream.readString(2, true);
    this.producttime = paramJceInputStream.readString(3, false);
    this.cert = paramJceInputStream.readString(4, false);
    this.versioncode = paramJceInputStream.read(this.versioncode, 5, false);
    this.name = paramJceInputStream.readString(6, false);
    this.isbuildin = paramJceInputStream.read(this.isbuildin, 7, false);
    this.newest_version = paramJceInputStream.readString(8, false);
    this.old_versioncode = paramJceInputStream.read(this.old_versioncode, 9, false);
    this.categorytype = paramJceInputStream.read(this.categorytype, 10, false);
    this.category = paramJceInputStream.read(this.category, 11, false);
    this.break_flag = paramJceInputStream.read(this.break_flag, 12, false);
    this.source = paramJceInputStream.read(this.source, 13, false);
    this.sdk_version = paramJceInputStream.read(this.sdk_version, 14, false);
    this.appid = paramJceInputStream.read(this.appid, 15, false);
  }

  public final void setAppid(int paramInt)
  {
    this.appid = paramInt;
  }

  public final void setBreak_flag(int paramInt)
  {
    this.break_flag = paramInt;
  }

  public final void setCategory(int paramInt)
  {
    this.category = paramInt;
  }

  public final void setCategorytype(int paramInt)
  {
    this.categorytype = paramInt;
  }

  public final void setCert(String paramString)
  {
    this.cert = paramString;
  }

  public final void setIsbuildin(int paramInt)
  {
    this.isbuildin = paramInt;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setNewest_version(String paramString)
  {
    this.newest_version = paramString;
  }

  public final void setOld_versioncode(int paramInt)
  {
    this.old_versioncode = paramInt;
  }

  public final void setProducttime(String paramString)
  {
    this.producttime = paramString;
  }

  public final void setSdk_version(int paramInt)
  {
    this.sdk_version = paramInt;
  }

  public final void setSoftname(String paramString)
  {
    this.softname = paramString;
  }

  public final void setSource(int paramInt)
  {
    this.source = paramInt;
  }

  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void setVersioncode(int paramInt)
  {
    this.versioncode = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uid, 0);
    paramJceOutputStream.write(this.softname, 1);
    paramJceOutputStream.write(this.version, 2);
    if (this.producttime != null)
      paramJceOutputStream.write(this.producttime, 3);
    if (this.cert != null)
      paramJceOutputStream.write(this.cert, 4);
    paramJceOutputStream.write(this.versioncode, 5);
    if (this.name != null)
      paramJceOutputStream.write(this.name, 6);
    paramJceOutputStream.write(this.isbuildin, 7);
    if (this.newest_version != null)
      paramJceOutputStream.write(this.newest_version, 8);
    paramJceOutputStream.write(this.old_versioncode, 9);
    paramJceOutputStream.write(this.categorytype, 10);
    paramJceOutputStream.write(this.category, 11);
    paramJceOutputStream.write(this.break_flag, 12);
    paramJceOutputStream.write(this.source, 13);
    paramJceOutputStream.write(this.sdk_version, 14);
    paramJceOutputStream.write(this.appid, 15);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftKey
 * JD-Core Version:    0.6.2
 */