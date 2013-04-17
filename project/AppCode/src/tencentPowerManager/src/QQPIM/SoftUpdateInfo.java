package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftUpdateInfo extends JceStruct
  implements Cloneable
{
  static ProductVersion cache_newversion;
  static PatchInfo cache_patchinfo;
  public String checksum = "";
  public String market = "";
  public int new_buildno = 0;
  public String newfeature = "";
  public ProductVersion newversion = null;
  public PatchInfo patchinfo = null;
  public int pkg_size = 0;
  public String url = "";
  public int urltype = 0;

  static
  {
    if (!SoftUpdateInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftUpdateInfo()
  {
    setUrl(this.url);
    setUrltype(this.urltype);
    setNewversion(this.newversion);
    setNew_buildno(this.new_buildno);
    setPkg_size(this.pkg_size);
    setNewfeature(this.newfeature);
    setMarket(this.market);
    setPatchinfo(this.patchinfo);
    setChecksum(this.checksum);
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
    localJceDisplayer.display(this.urltype, "urltype");
    localJceDisplayer.display(this.newversion, "newversion");
    localJceDisplayer.display(this.new_buildno, "new_buildno");
    localJceDisplayer.display(this.pkg_size, "pkg_size");
    localJceDisplayer.display(this.newfeature, "newfeature");
    localJceDisplayer.display(this.market, "market");
    localJceDisplayer.display(this.patchinfo, "patchinfo");
    localJceDisplayer.display(this.checksum, "checksum");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftUpdateInfo localSoftUpdateInfo = (SoftUpdateInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.url, localSoftUpdateInfo.url);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.urltype, localSoftUpdateInfo.urltype);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.newversion, localSoftUpdateInfo.newversion);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.new_buildno, localSoftUpdateInfo.new_buildno);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.pkg_size, localSoftUpdateInfo.pkg_size);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.newfeature, localSoftUpdateInfo.newfeature);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.market, localSoftUpdateInfo.market);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.patchinfo, localSoftUpdateInfo.patchinfo);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.checksum, localSoftUpdateInfo.checksum);
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

  public final String getNewfeature()
  {
    return this.newfeature;
  }

  public final ProductVersion getNewversion()
  {
    return this.newversion;
  }

  public final int getPkg_size()
  {
    return this.pkg_size;
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
    this.url = paramJceInputStream.readString(0, true);
    this.urltype = paramJceInputStream.read(this.urltype, 1, false);
    if (cache_newversion == null)
      cache_newversion = new ProductVersion();
    this.newversion = ((ProductVersion)paramJceInputStream.read(cache_newversion, 2, false));
    this.new_buildno = paramJceInputStream.read(this.new_buildno, 3, false);
    this.pkg_size = paramJceInputStream.read(this.pkg_size, 4, false);
    this.newfeature = paramJceInputStream.readString(5, false);
    this.market = paramJceInputStream.readString(6, false);
    if (cache_patchinfo == null)
      cache_patchinfo = new PatchInfo();
    this.patchinfo = ((PatchInfo)paramJceInputStream.read(cache_patchinfo, 7, false));
    this.checksum = paramJceInputStream.readString(8, false);
  }

  public final void setChecksum(String paramString)
  {
    this.checksum = paramString;
  }

  public final void setMarket(String paramString)
  {
    this.market = paramString;
  }

  public final void setNew_buildno(int paramInt)
  {
    this.new_buildno = paramInt;
  }

  public final void setNewfeature(String paramString)
  {
    this.newfeature = paramString;
  }

  public final void setNewversion(ProductVersion paramProductVersion)
  {
    this.newversion = paramProductVersion;
  }

  public final void setPatchinfo(PatchInfo paramPatchInfo)
  {
    this.patchinfo = paramPatchInfo;
  }

  public final void setPkg_size(int paramInt)
  {
    this.pkg_size = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void setUrltype(int paramInt)
  {
    this.urltype = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.url, 0);
    paramJceOutputStream.write(this.urltype, 1);
    if (this.newversion != null)
      paramJceOutputStream.write(this.newversion, 2);
    paramJceOutputStream.write(this.new_buildno, 3);
    paramJceOutputStream.write(this.pkg_size, 4);
    if (this.newfeature != null)
      paramJceOutputStream.write(this.newfeature, 5);
    if (this.market != null)
      paramJceOutputStream.write(this.market, 6);
    if (this.patchinfo != null)
      paramJceOutputStream.write(this.patchinfo, 7);
    if (this.checksum != null)
      paramJceOutputStream.write(this.checksum, 8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.SoftUpdateInfo
 * JD-Core Version:    0.6.2
 */