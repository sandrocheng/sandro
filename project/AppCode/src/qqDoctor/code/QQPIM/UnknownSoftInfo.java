package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UnknownSoftInfo extends JceStruct
  implements Cloneable
{
  static SoftKey cache_softkey;
  public String certissuer = "";
  public String certsubject = "";
  public int certversion = 0;
  public SoftKey softkey = null;
  public String vendorname = "";

  static
  {
    if (!UnknownSoftInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UnknownSoftInfo()
  {
    setSoftkey(this.softkey);
    setVendorname(this.vendorname);
    setCertversion(this.certversion);
    setCertissuer(this.certissuer);
    setCertsubject(this.certsubject);
  }

  public UnknownSoftInfo(SoftKey paramSoftKey, String paramString1, int paramInt, String paramString2, String paramString3)
  {
    setSoftkey(paramSoftKey);
    setVendorname(paramString1);
    setCertversion(paramInt);
    setCertissuer(paramString2);
    setCertsubject(paramString3);
  }

  public final String className()
  {
    return "QQPIM.UnknownSoftInfo";
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
    localJceDisplayer.display(this.softkey, "softkey");
    localJceDisplayer.display(this.vendorname, "vendorname");
    localJceDisplayer.display(this.certversion, "certversion");
    localJceDisplayer.display(this.certissuer, "certissuer");
    localJceDisplayer.display(this.certsubject, "certsubject");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UnknownSoftInfo localUnknownSoftInfo = (UnknownSoftInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.softkey, localUnknownSoftInfo.softkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.vendorname, localUnknownSoftInfo.vendorname);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.certversion, localUnknownSoftInfo.certversion);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.certissuer, localUnknownSoftInfo.certissuer);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.certsubject, localUnknownSoftInfo.certsubject);
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
    return "QQPIM.UnknownSoftInfo";
  }

  public final String getCertissuer()
  {
    return this.certissuer;
  }

  public final String getCertsubject()
  {
    return this.certsubject;
  }

  public final int getCertversion()
  {
    return this.certversion;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
  }

  public final String getVendorname()
  {
    return this.vendorname;
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
    if (cache_softkey == null)
      cache_softkey = new SoftKey();
    this.softkey = ((SoftKey)paramJceInputStream.read(cache_softkey, 0, true));
    this.vendorname = paramJceInputStream.readString(1, false);
    this.certversion = paramJceInputStream.read(this.certversion, 2, false);
    this.certissuer = paramJceInputStream.readString(3, false);
    this.certsubject = paramJceInputStream.readString(4, false);
  }

  public final void setCertissuer(String paramString)
  {
    this.certissuer = paramString;
  }

  public final void setCertsubject(String paramString)
  {
    this.certsubject = paramString;
  }

  public final void setCertversion(int paramInt)
  {
    this.certversion = paramInt;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void setVendorname(String paramString)
  {
    this.vendorname = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softkey, 0);
    if (this.vendorname != null)
      paramJceOutputStream.write(this.vendorname, 1);
    paramJceOutputStream.write(this.certversion, 2);
    if (this.certissuer != null)
      paramJceOutputStream.write(this.certissuer, 3);
    if (this.certsubject != null)
      paramJceOutputStream.write(this.certsubject, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UnknownSoftInfo
 * JD-Core Version:    0.6.2
 */