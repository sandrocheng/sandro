package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ADInfo extends JceStruct
  implements Cloneable
{
  static SoftKey cache_softkey;
  public int adid = 0;
  public int adtype = 0;
  public String description = "";
  public String picalt = "";
  public String picurl = "";
  public SoftKey softkey = null;
  public String url = "";

  static
  {
    if (!ADInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ADInfo()
  {
    setAdid(this.adid);
    setPicurl(this.picurl);
    setPicalt(this.picalt);
    setSoftkey(this.softkey);
    setDescription(this.description);
    setAdtype(this.adtype);
    setUrl(this.url);
  }

  public ADInfo(int paramInt1, String paramString1, String paramString2, SoftKey paramSoftKey, String paramString3, int paramInt2, String paramString4)
  {
    setAdid(paramInt1);
    setPicurl(paramString1);
    setPicalt(paramString2);
    setSoftkey(paramSoftKey);
    setDescription(paramString3);
    setAdtype(paramInt2);
    setUrl(paramString4);
  }

  public final String className()
  {
    return "QQPIM.ADInfo";
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
    localJceDisplayer.display(this.adid, "adid");
    localJceDisplayer.display(this.picurl, "picurl");
    localJceDisplayer.display(this.picalt, "picalt");
    localJceDisplayer.display(this.softkey, "softkey");
    localJceDisplayer.display(this.description, "description");
    localJceDisplayer.display(this.adtype, "adtype");
    localJceDisplayer.display(this.url, "url");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ADInfo localADInfo = (ADInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.adid, localADInfo.adid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.picurl, localADInfo.picurl);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.picalt, localADInfo.picalt);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.softkey, localADInfo.softkey);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.description, localADInfo.description);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.adtype, localADInfo.adtype);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.url, localADInfo.url);
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
    return "QQPIM.ADInfo";
  }

  public final int getAdid()
  {
    return this.adid;
  }

  public final int getAdtype()
  {
    return this.adtype;
  }

  public final String getDescription()
  {
    return this.description;
  }

  public final String getPicalt()
  {
    return this.picalt;
  }

  public final String getPicurl()
  {
    return this.picurl;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
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
    this.adid = paramJceInputStream.read(this.adid, 0, true);
    this.picurl = paramJceInputStream.readString(1, true);
    this.picalt = paramJceInputStream.readString(2, true);
    if (cache_softkey == null)
      cache_softkey = new SoftKey();
    this.softkey = ((SoftKey)paramJceInputStream.read(cache_softkey, 3, true));
    this.description = paramJceInputStream.readString(4, true);
    this.adtype = paramJceInputStream.read(this.adtype, 5, false);
    this.url = paramJceInputStream.readString(6, false);
  }

  public final void setAdid(int paramInt)
  {
    this.adid = paramInt;
  }

  public final void setAdtype(int paramInt)
  {
    this.adtype = paramInt;
  }

  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public final void setPicalt(String paramString)
  {
    this.picalt = paramString;
  }

  public final void setPicurl(String paramString)
  {
    this.picurl = paramString;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.adid, 0);
    paramJceOutputStream.write(this.picurl, 1);
    paramJceOutputStream.write(this.picalt, 2);
    paramJceOutputStream.write(this.softkey, 3);
    paramJceOutputStream.write(this.description, 4);
    paramJceOutputStream.write(this.adtype, 5);
    if (this.url != null)
      paramJceOutputStream.write(this.url, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ADInfo
 * JD-Core Version:    0.6.2
 */