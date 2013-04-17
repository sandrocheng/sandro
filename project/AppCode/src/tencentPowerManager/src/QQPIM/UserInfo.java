package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UserInfo extends JceStruct
  implements Cloneable
{
  static ProductVersion cache_version;
  public int buildno = 0;
  public String channelid = "";
  public int ct = ConnectType.CT_NONE.value();
  public String guid = "";
  public String imei = "";
  public String imsi = "";
  public String ip = "";
  public int isbuildin = 0;
  public int isroot = 0;
  public short lang = 0;
  public String lc = "";
  public String phone = "";
  public int product = EProduct.EP_None.value();
  public String qq = "";
  public int sdkversion = 0;
  public String ua = "";
  public String uuid = "";
  public ProductVersion version = null;

  static
  {
    if (!UserInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UserInfo()
  {
    setImei(this.imei);
    setQq(this.qq);
    setPhone(this.phone);
    setIp(this.ip);
    setLc(this.lc);
    setChannelid(this.channelid);
    setUa(this.ua);
    setCt(this.ct);
    setProduct(this.product);
    setVersion(this.version);
    setGuid(this.guid);
    setImsi(this.imsi);
    setIsbuildin(this.isbuildin);
    setIsroot(this.isroot);
    setSdkversion(this.sdkversion);
    setBuildno(this.buildno);
    setUuid(this.uuid);
    setLang(this.lang);
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
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.qq, "qq");
    localJceDisplayer.display(this.phone, "phone");
    localJceDisplayer.display(this.ip, "ip");
    localJceDisplayer.display(this.lc, "lc");
    localJceDisplayer.display(this.channelid, "channelid");
    localJceDisplayer.display(this.ua, "ua");
    localJceDisplayer.display(this.ct, "ct");
    localJceDisplayer.display(this.product, "product");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.guid, "guid");
    localJceDisplayer.display(this.imsi, "imsi");
    localJceDisplayer.display(this.isbuildin, "isbuildin");
    localJceDisplayer.display(this.isroot, "isroot");
    localJceDisplayer.display(this.sdkversion, "sdkversion");
    localJceDisplayer.display(this.buildno, "buildno");
    localJceDisplayer.display(this.uuid, "uuid");
    localJceDisplayer.display(this.lang, "lang");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UserInfo localUserInfo = (UserInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.imei, localUserInfo.imei);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.qq, localUserInfo.qq);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.phone, localUserInfo.phone);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.ip, localUserInfo.ip);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.lc, localUserInfo.lc);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.channelid, localUserInfo.channelid);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.ua, localUserInfo.ua);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.ct, localUserInfo.ct);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.product, localUserInfo.product);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.version, localUserInfo.version);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.guid, localUserInfo.guid);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.imsi, localUserInfo.imsi);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.isbuildin, localUserInfo.isbuildin);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.isroot, localUserInfo.isroot);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.sdkversion, localUserInfo.sdkversion);
                                  bool1 = false;
                                  if (bool16)
                                  {
                                    boolean bool17 = JceUtil.equals(this.buildno, localUserInfo.buildno);
                                    bool1 = false;
                                    if (bool17)
                                    {
                                      boolean bool18 = JceUtil.equals(this.uuid, localUserInfo.uuid);
                                      bool1 = false;
                                      if (bool18)
                                      {
                                        boolean bool19 = JceUtil.equals(this.lang, localUserInfo.lang);
                                        bool1 = false;
                                        if (bool19)
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
                  }
                }
              }
            }
          }
        }
      }
    }
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
    this.imei = paramJceInputStream.readString(0, true);
    this.qq = paramJceInputStream.readString(1, false);
    this.phone = paramJceInputStream.readString(2, false);
    this.ip = paramJceInputStream.readString(3, false);
    this.lc = paramJceInputStream.readString(4, false);
    this.channelid = paramJceInputStream.readString(5, false);
    this.ua = paramJceInputStream.readString(6, false);
    this.ct = paramJceInputStream.read(this.ct, 7, false);
    this.product = paramJceInputStream.read(this.product, 8, false);
    if (cache_version == null)
      cache_version = new ProductVersion();
    this.version = ((ProductVersion)paramJceInputStream.read(cache_version, 9, false));
    this.guid = paramJceInputStream.readString(10, false);
    this.imsi = paramJceInputStream.readString(11, false);
    this.isbuildin = paramJceInputStream.read(this.isbuildin, 12, false);
    this.isroot = paramJceInputStream.read(this.isroot, 13, false);
    this.sdkversion = paramJceInputStream.read(this.sdkversion, 14, false);
    this.buildno = paramJceInputStream.read(this.buildno, 15, false);
    this.uuid = paramJceInputStream.readString(16, false);
    this.lang = paramJceInputStream.read(this.lang, 17, false);
  }

  public final void setBuildno(int paramInt)
  {
    this.buildno = paramInt;
  }

  public final void setChannelid(String paramString)
  {
    this.channelid = paramString;
  }

  public final void setCt(int paramInt)
  {
    this.ct = paramInt;
  }

  public final void setGuid(String paramString)
  {
    this.guid = paramString;
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public final void setIp(String paramString)
  {
    this.ip = paramString;
  }

  public final void setIsbuildin(int paramInt)
  {
    this.isbuildin = paramInt;
  }

  public final void setIsroot(int paramInt)
  {
    this.isroot = paramInt;
  }

  public final void setLang(short paramShort)
  {
    this.lang = paramShort;
  }

  public final void setLc(String paramString)
  {
    this.lc = paramString;
  }

  public final void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public final void setProduct(int paramInt)
  {
    this.product = paramInt;
  }

  public final void setQq(String paramString)
  {
    this.qq = paramString;
  }

  public final void setSdkversion(int paramInt)
  {
    this.sdkversion = paramInt;
  }

  public final void setUa(String paramString)
  {
    this.ua = paramString;
  }

  public final void setUuid(String paramString)
  {
    this.uuid = paramString;
  }

  public final void setVersion(ProductVersion paramProductVersion)
  {
    this.version = paramProductVersion;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.imei, 0);
    if (this.qq != null)
      paramJceOutputStream.write(this.qq, 1);
    if (this.phone != null)
      paramJceOutputStream.write(this.phone, 2);
    if (this.ip != null)
      paramJceOutputStream.write(this.ip, 3);
    if (this.lc != null)
      paramJceOutputStream.write(this.lc, 4);
    if (this.channelid != null)
      paramJceOutputStream.write(this.channelid, 5);
    if (this.ua != null)
      paramJceOutputStream.write(this.ua, 6);
    paramJceOutputStream.write(this.ct, 7);
    paramJceOutputStream.write(this.product, 8);
    if (this.version != null)
      paramJceOutputStream.write(this.version, 9);
    if (this.guid != null)
      paramJceOutputStream.write(this.guid, 10);
    if (this.imsi != null)
      paramJceOutputStream.write(this.imsi, 11);
    paramJceOutputStream.write(this.isbuildin, 12);
    paramJceOutputStream.write(this.isroot, 13);
    paramJceOutputStream.write(this.sdkversion, 14);
    paramJceOutputStream.write(this.buildno, 15);
    if (this.uuid != null)
      paramJceOutputStream.write(this.uuid, 16);
    paramJceOutputStream.write(this.lang, 17);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.UserInfo
 * JD-Core Version:    0.6.2
 */