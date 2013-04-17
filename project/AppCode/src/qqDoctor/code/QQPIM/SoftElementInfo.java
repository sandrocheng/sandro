package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftElementInfo extends JceStruct
  implements Cloneable
{
  public String cert = "";
  public String name = "";
  public String path = "";
  public String pkgname = "";
  public int softsize = 0;

  static
  {
    if (!SoftElementInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftElementInfo()
  {
    setPkgname(this.pkgname);
    setCert(this.cert);
    setSoftsize(this.softsize);
    setPath(this.path);
    setName(this.name);
  }

  public SoftElementInfo(String paramString1, String paramString2, int paramInt, String paramString3, String paramString4)
  {
    setPkgname(paramString1);
    setCert(paramString2);
    setSoftsize(paramInt);
    setPath(paramString3);
    setName(paramString4);
  }

  public final String className()
  {
    return "QQPIM.SoftElementInfo";
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
    localJceDisplayer.display(this.pkgname, "pkgname");
    localJceDisplayer.display(this.cert, "cert");
    localJceDisplayer.display(this.softsize, "softsize");
    localJceDisplayer.display(this.path, "path");
    localJceDisplayer.display(this.name, "name");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftElementInfo localSoftElementInfo = (SoftElementInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.pkgname, localSoftElementInfo.pkgname);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.cert, localSoftElementInfo.cert);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.softsize, localSoftElementInfo.softsize);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.path, localSoftElementInfo.path);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.name, localSoftElementInfo.name);
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
    return "QQPIM.SoftElementInfo";
  }

  public final String getCert()
  {
    return this.cert;
  }

  public final String getName()
  {
    return this.name;
  }

  public final String getPath()
  {
    return this.path;
  }

  public final String getPkgname()
  {
    return this.pkgname;
  }

  public final int getSoftsize()
  {
    return this.softsize;
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
    this.pkgname = paramJceInputStream.readString(0, true);
    this.cert = paramJceInputStream.readString(1, true);
    this.softsize = paramJceInputStream.read(this.softsize, 3, false);
    this.path = paramJceInputStream.readString(4, false);
    this.name = paramJceInputStream.readString(5, false);
  }

  public final void setCert(String paramString)
  {
    this.cert = paramString;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setPath(String paramString)
  {
    this.path = paramString;
  }

  public final void setPkgname(String paramString)
  {
    this.pkgname = paramString;
  }

  public final void setSoftsize(int paramInt)
  {
    this.softsize = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.pkgname, 0);
    paramJceOutputStream.write(this.cert, 1);
    paramJceOutputStream.write(this.softsize, 3);
    if (this.path != null)
      paramJceOutputStream.write(this.path, 4);
    if (this.name != null)
      paramJceOutputStream.write(this.name, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftElementInfo
 * JD-Core Version:    0.6.2
 */