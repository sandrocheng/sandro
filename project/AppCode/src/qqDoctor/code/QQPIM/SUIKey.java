package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SUIKey extends JceStruct
  implements Cloneable
{
  static int cache_type;
  public String channelid = "";
  public String guid = "";
  public String imei = "";
  public String imsi = "";
  public String ip = "";
  public int isbuildin = 0;
  public short lang = 0;
  public String lc = "";
  public String machineconf = "";
  public String machineuid = "";
  public String name = "";
  public String osversion = "";
  public String phone = "";
  public String qq = "";
  public String sdk = "";
  public int subplatform = 0;
  public int type = EPhoneType.MPT_NONE.value();
  public String uuid = "";
  public String version = "";

  static
  {
    if (!SUIKey.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SUIKey()
  {
    setLc(this.lc);
    setName(this.name);
    setVersion(this.version);
    setImei(this.imei);
    setImsi(this.imsi);
    setQq(this.qq);
    setIp(this.ip);
    setType(this.type);
    setOsversion(this.osversion);
    setMachineuid(this.machineuid);
    setMachineconf(this.machineconf);
    setPhone(this.phone);
    setSubplatform(this.subplatform);
    setChannelid(this.channelid);
    setIsbuildin(this.isbuildin);
    setUuid(this.uuid);
    setLang(this.lang);
    setGuid(this.guid);
    setSdk(this.sdk);
  }

  public SUIKey(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt1, String paramString8, String paramString9, String paramString10, String paramString11, int paramInt2, String paramString12, int paramInt3, String paramString13, short paramShort, String paramString14, String paramString15)
  {
    setLc(paramString1);
    setName(paramString2);
    setVersion(paramString3);
    setImei(paramString4);
    setImsi(paramString5);
    setQq(paramString6);
    setIp(paramString7);
    setType(paramInt1);
    setOsversion(paramString8);
    setMachineuid(paramString9);
    setMachineconf(paramString10);
    setPhone(paramString11);
    setSubplatform(paramInt2);
    setChannelid(paramString12);
    setIsbuildin(paramInt3);
    setUuid(paramString13);
    setLang(paramShort);
    setGuid(paramString14);
    setSdk(paramString15);
  }

  public final String className()
  {
    return "QQPIM.SUIKey";
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
    localJceDisplayer.display(this.name, "name");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.imsi, "imsi");
    localJceDisplayer.display(this.qq, "qq");
    localJceDisplayer.display(this.ip, "ip");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.osversion, "osversion");
    localJceDisplayer.display(this.machineuid, "machineuid");
    localJceDisplayer.display(this.machineconf, "machineconf");
    localJceDisplayer.display(this.phone, "phone");
    localJceDisplayer.display(this.subplatform, "subplatform");
    localJceDisplayer.display(this.channelid, "channelid");
    localJceDisplayer.display(this.isbuildin, "isbuildin");
    localJceDisplayer.display(this.uuid, "uuid");
    localJceDisplayer.display(this.lang, "lang");
    localJceDisplayer.display(this.guid, "guid");
    localJceDisplayer.display(this.sdk, "sdk");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SUIKey localSUIKey = (SUIKey)paramObject;
      boolean bool2 = JceUtil.equals(this.lc, localSUIKey.lc);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.name, localSUIKey.name);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.version, localSUIKey.version);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.imei, localSUIKey.imei);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.imsi, localSUIKey.imsi);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.qq, localSUIKey.qq);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.ip, localSUIKey.ip);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.type, localSUIKey.type);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.osversion, localSUIKey.osversion);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.machineuid, localSUIKey.machineuid);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.machineconf, localSUIKey.machineconf);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.phone, localSUIKey.phone);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.subplatform, localSUIKey.subplatform);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.channelid, localSUIKey.channelid);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.isbuildin, localSUIKey.isbuildin);
                                  bool1 = false;
                                  if (bool16)
                                  {
                                    boolean bool17 = JceUtil.equals(this.uuid, localSUIKey.uuid);
                                    bool1 = false;
                                    if (bool17)
                                    {
                                      boolean bool18 = JceUtil.equals(this.lang, localSUIKey.lang);
                                      bool1 = false;
                                      if (bool18)
                                      {
                                        boolean bool19 = JceUtil.equals(this.guid, localSUIKey.guid);
                                        bool1 = false;
                                        if (bool19)
                                        {
                                          boolean bool20 = JceUtil.equals(this.sdk, localSUIKey.sdk);
                                          bool1 = false;
                                          if (bool20)
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
  }

  public final String fullClassName()
  {
    return "QQPIM.SUIKey";
  }

  public final String getChannelid()
  {
    return this.channelid;
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

  public final short getLang()
  {
    return this.lang;
  }

  public final String getLc()
  {
    return this.lc;
  }

  public final String getMachineconf()
  {
    return this.machineconf;
  }

  public final String getMachineuid()
  {
    return this.machineuid;
  }

  public final String getName()
  {
    return this.name;
  }

  public final String getOsversion()
  {
    return this.osversion;
  }

  public final String getPhone()
  {
    return this.phone;
  }

  public final String getQq()
  {
    return this.qq;
  }

  public final String getSdk()
  {
    return this.sdk;
  }

  public final int getSubplatform()
  {
    return this.subplatform;
  }

  public final int getType()
  {
    return this.type;
  }

  public final String getUuid()
  {
    return this.uuid;
  }

  public final String getVersion()
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
    this.name = paramJceInputStream.readString(1, true);
    this.version = paramJceInputStream.readString(2, true);
    this.imei = paramJceInputStream.readString(3, true);
    this.imsi = paramJceInputStream.readString(4, true);
    this.qq = paramJceInputStream.readString(5, false);
    this.ip = paramJceInputStream.readString(6, false);
    this.type = paramJceInputStream.read(this.type, 7, false);
    this.osversion = paramJceInputStream.readString(8, false);
    this.machineuid = paramJceInputStream.readString(9, false);
    this.machineconf = paramJceInputStream.readString(10, false);
    this.phone = paramJceInputStream.readString(11, false);
    this.subplatform = paramJceInputStream.read(this.subplatform, 12, false);
    this.channelid = paramJceInputStream.readString(13, false);
    this.isbuildin = paramJceInputStream.read(this.isbuildin, 14, false);
    this.uuid = paramJceInputStream.readString(15, false);
    this.lang = paramJceInputStream.read(this.lang, 16, false);
    this.guid = paramJceInputStream.readString(17, false);
    this.sdk = paramJceInputStream.readString(18, false);
  }

  public final void setChannelid(String paramString)
  {
    this.channelid = paramString;
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

  public final void setLang(short paramShort)
  {
    this.lang = paramShort;
  }

  public final void setLc(String paramString)
  {
    this.lc = paramString;
  }

  public final void setMachineconf(String paramString)
  {
    this.machineconf = paramString;
  }

  public final void setMachineuid(String paramString)
  {
    this.machineuid = paramString;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setOsversion(String paramString)
  {
    this.osversion = paramString;
  }

  public final void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public final void setQq(String paramString)
  {
    this.qq = paramString;
  }

  public final void setSdk(String paramString)
  {
    this.sdk = paramString;
  }

  public final void setSubplatform(int paramInt)
  {
    this.subplatform = paramInt;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void setUuid(String paramString)
  {
    this.uuid = paramString;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.lc, 0);
    paramJceOutputStream.write(this.name, 1);
    paramJceOutputStream.write(this.version, 2);
    paramJceOutputStream.write(this.imei, 3);
    paramJceOutputStream.write(this.imsi, 4);
    if (this.qq != null)
      paramJceOutputStream.write(this.qq, 5);
    if (this.ip != null)
      paramJceOutputStream.write(this.ip, 6);
    paramJceOutputStream.write(this.type, 7);
    if (this.osversion != null)
      paramJceOutputStream.write(this.osversion, 8);
    if (this.machineuid != null)
      paramJceOutputStream.write(this.machineuid, 9);
    if (this.machineconf != null)
      paramJceOutputStream.write(this.machineconf, 10);
    if (this.phone != null)
      paramJceOutputStream.write(this.phone, 11);
    paramJceOutputStream.write(this.subplatform, 12);
    if (this.channelid != null)
      paramJceOutputStream.write(this.channelid, 13);
    paramJceOutputStream.write(this.isbuildin, 14);
    if (this.uuid != null)
      paramJceOutputStream.write(this.uuid, 15);
    paramJceOutputStream.write(this.lang, 16);
    if (this.guid != null)
      paramJceOutputStream.write(this.guid, 17);
    if (this.sdk != null)
      paramJceOutputStream.write(this.sdk, 18);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SUIKey
 * JD-Core Version:    0.6.2
 */