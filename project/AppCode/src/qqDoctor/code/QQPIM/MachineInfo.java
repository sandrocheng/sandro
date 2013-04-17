package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MachineInfo extends JceStruct
  implements Cloneable
{
  static int cache_ct;
  static PhoneType cache_phonetype;
  static int cache_sp;
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
  public String machine = "";
  public PhoneType phonetype = null;
  public int product = 0;
  public int sdkversion = 0;
  public int sp = 0;
  public String uuid = "";
  public ProductVersion version = null;

  static
  {
    if (!MachineInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MachineInfo()
  {
    setLc(this.lc);
    setImei(this.imei);
    setSp(this.sp);
    setProduct(this.product);
    setChannelid(this.channelid);
    setIp(this.ip);
    setPhonetype(this.phonetype);
    setMachine(this.machine);
    setImsi(this.imsi);
    setIsbuildin(this.isbuildin);
    setIsroot(this.isroot);
    setCt(this.ct);
    setVersion(this.version);
    setGuid(this.guid);
    setSdkversion(this.sdkversion);
    setBuildno(this.buildno);
    setUuid(this.uuid);
    setLang(this.lang);
  }

  public MachineInfo(String paramString1, String paramString2, int paramInt1, int paramInt2, String paramString3, String paramString4, PhoneType paramPhoneType, String paramString5, String paramString6, int paramInt3, int paramInt4, int paramInt5, ProductVersion paramProductVersion, String paramString7, int paramInt6, int paramInt7, String paramString8, short paramShort)
  {
    setLc(paramString1);
    setImei(paramString2);
    setSp(paramInt1);
    setProduct(paramInt2);
    setChannelid(paramString3);
    setIp(paramString4);
    setPhonetype(paramPhoneType);
    setMachine(paramString5);
    setImsi(paramString6);
    setIsbuildin(paramInt3);
    setIsroot(paramInt4);
    setCt(paramInt5);
    setVersion(paramProductVersion);
    setGuid(paramString7);
    setSdkversion(paramInt6);
    setBuildno(paramInt7);
    setUuid(paramString8);
    setLang(paramShort);
  }

  public final String className()
  {
    return "QQPIM.MachineInfo";
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
    localJceDisplayer.display(this.lc, "lc");
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.sp, "sp");
    localJceDisplayer.display(this.product, "product");
    localJceDisplayer.display(this.channelid, "channelid");
    localJceDisplayer.display(this.ip, "ip");
    localJceDisplayer.display(this.phonetype, "phonetype");
    localJceDisplayer.display(this.machine, "machine");
    localJceDisplayer.display(this.imsi, "imsi");
    localJceDisplayer.display(this.isbuildin, "isbuildin");
    localJceDisplayer.display(this.isroot, "isroot");
    localJceDisplayer.display(this.ct, "ct");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.guid, "guid");
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
      MachineInfo localMachineInfo = (MachineInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.lc, localMachineInfo.lc);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.imei, localMachineInfo.imei);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.sp, localMachineInfo.sp);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.product, localMachineInfo.product);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.channelid, localMachineInfo.channelid);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.ip, localMachineInfo.ip);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.phonetype, localMachineInfo.phonetype);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.machine, localMachineInfo.machine);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.imsi, localMachineInfo.imsi);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.isbuildin, localMachineInfo.isbuildin);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.isroot, localMachineInfo.isroot);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.ct, localMachineInfo.ct);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.version, localMachineInfo.version);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.guid, localMachineInfo.guid);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.sdkversion, localMachineInfo.sdkversion);
                                  bool1 = false;
                                  if (bool16)
                                  {
                                    boolean bool17 = JceUtil.equals(this.buildno, localMachineInfo.buildno);
                                    bool1 = false;
                                    if (bool17)
                                    {
                                      boolean bool18 = JceUtil.equals(this.uuid, localMachineInfo.uuid);
                                      bool1 = false;
                                      if (bool18)
                                      {
                                        boolean bool19 = JceUtil.equals(this.lang, localMachineInfo.lang);
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

  public final String fullClassName()
  {
    return "QQPIM.MachineInfo";
  }

  public final int getBuildno()
  {
    return this.buildno;
  }

  public final String getChannelid()
  {
    return this.channelid;
  }

  public final int getCt()
  {
    return this.ct;
  }

  public final String getGuid()
  {
    return this.guid;
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final String getImsi()
  {
    return this.imsi;
  }

  public final String getIp()
  {
    return this.ip;
  }

  public final int getIsbuildin()
  {
    return this.isbuildin;
  }

  public final int getIsroot()
  {
    return this.isroot;
  }

  public final short getLang()
  {
    return this.lang;
  }

  public final String getLc()
  {
    return this.lc;
  }

  public final String getMachine()
  {
    return this.machine;
  }

  public final PhoneType getPhonetype()
  {
    return this.phonetype;
  }

  public final int getProduct()
  {
    return this.product;
  }

  public final int getSdkversion()
  {
    return this.sdkversion;
  }

  public final int getSp()
  {
    return this.sp;
  }

  public final String getUuid()
  {
    return this.uuid;
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
    this.lc = paramJceInputStream.readString(0, true);
    this.imei = paramJceInputStream.readString(1, true);
    this.sp = paramJceInputStream.read(this.sp, 2, true);
    this.product = paramJceInputStream.read(this.product, 3, false);
    this.channelid = paramJceInputStream.readString(4, false);
    this.ip = paramJceInputStream.readString(5, false);
    if (cache_phonetype == null)
      cache_phonetype = new PhoneType();
    this.phonetype = ((PhoneType)paramJceInputStream.read(cache_phonetype, 6, false));
    this.machine = paramJceInputStream.readString(7, false);
    this.imsi = paramJceInputStream.readString(8, false);
    this.isbuildin = paramJceInputStream.read(this.isbuildin, 9, false);
    this.isroot = paramJceInputStream.read(this.isroot, 10, false);
    this.ct = paramJceInputStream.read(this.ct, 11, false);
    if (cache_version == null)
      cache_version = new ProductVersion();
    this.version = ((ProductVersion)paramJceInputStream.read(cache_version, 12, false));
    this.guid = paramJceInputStream.readString(13, false);
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

  public final void setMachine(String paramString)
  {
    this.machine = paramString;
  }

  public final void setPhonetype(PhoneType paramPhoneType)
  {
    this.phonetype = paramPhoneType;
  }

  public final void setProduct(int paramInt)
  {
    this.product = paramInt;
  }

  public final void setSdkversion(int paramInt)
  {
    this.sdkversion = paramInt;
  }

  public final void setSp(int paramInt)
  {
    this.sp = paramInt;
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
    paramJceOutputStream.write(this.lc, 0);
    paramJceOutputStream.write(this.imei, 1);
    paramJceOutputStream.write(this.sp, 2);
    paramJceOutputStream.write(this.product, 3);
    if (this.channelid != null)
      paramJceOutputStream.write(this.channelid, 4);
    if (this.ip != null)
      paramJceOutputStream.write(this.ip, 5);
    if (this.phonetype != null)
      paramJceOutputStream.write(this.phonetype, 6);
    if (this.machine != null)
      paramJceOutputStream.write(this.machine, 7);
    if (this.imsi != null)
      paramJceOutputStream.write(this.imsi, 8);
    paramJceOutputStream.write(this.isbuildin, 9);
    paramJceOutputStream.write(this.isroot, 10);
    paramJceOutputStream.write(this.ct, 11);
    if (this.version != null)
      paramJceOutputStream.write(this.version, 12);
    if (this.guid != null)
      paramJceOutputStream.write(this.guid, 13);
    paramJceOutputStream.write(this.sdkversion, 14);
    paramJceOutputStream.write(this.buildno, 15);
    if (this.uuid != null)
      paramJceOutputStream.write(this.uuid, 16);
    paramJceOutputStream.write(this.lang, 17);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.MachineInfo
 * JD-Core Version:    0.6.2
 */