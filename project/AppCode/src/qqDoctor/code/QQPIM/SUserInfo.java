package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SUserInfo extends JceStruct
  implements Cloneable
{
  public int buildno = 0;
  public String imei = "";
  public String imsi = "";
  public String ip = "";
  public String lc = "";
  public String phone = "";
  public int productid = 0;
  public String qq = "";
  public int ruletime = 0;
  public String version = "";

  static
  {
    if (!SUserInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SUserInfo()
  {
    setImei(this.imei);
    setQq(this.qq);
    setPhone(this.phone);
    setIp(this.ip);
    setLc(this.lc);
    setImsi(this.imsi);
    setVersion(this.version);
    setBuildno(this.buildno);
    setProductid(this.productid);
    setRuletime(this.ruletime);
  }

  public SUserInfo(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, int paramInt1, int paramInt2, int paramInt3)
  {
    setImei(paramString1);
    setQq(paramString2);
    setPhone(paramString3);
    setIp(paramString4);
    setLc(paramString5);
    setImsi(paramString6);
    setVersion(paramString7);
    setBuildno(paramInt1);
    setProductid(paramInt2);
    setRuletime(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.SUserInfo";
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
    localJceDisplayer.display(this.imsi, "imsi");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.buildno, "buildno");
    localJceDisplayer.display(this.productid, "productid");
    localJceDisplayer.display(this.ruletime, "ruletime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SUserInfo localSUserInfo = (SUserInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.imei, localSUserInfo.imei);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.qq, localSUserInfo.qq);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.phone, localSUserInfo.phone);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.ip, localSUserInfo.ip);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.lc, localSUserInfo.lc);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.imsi, localSUserInfo.imsi);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.version, localSUserInfo.version);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.buildno, localSUserInfo.buildno);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.productid, localSUserInfo.productid);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.ruletime, localSUserInfo.ruletime);
                        bool1 = false;
                        if (bool11)
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

  public final String fullClassName()
  {
    return "QQPIM.SUserInfo";
  }

  public final int getBuildno()
  {
    return this.buildno;
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

  public final String getLc()
  {
    return this.lc;
  }

  public final String getPhone()
  {
    return this.phone;
  }

  public final int getProductid()
  {
    return this.productid;
  }

  public final String getQq()
  {
    return this.qq;
  }

  public final int getRuletime()
  {
    return this.ruletime;
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
    this.imei = paramJceInputStream.readString(0, true);
    this.qq = paramJceInputStream.readString(1, false);
    this.phone = paramJceInputStream.readString(2, false);
    this.ip = paramJceInputStream.readString(3, false);
    this.lc = paramJceInputStream.readString(4, false);
    this.imsi = paramJceInputStream.readString(5, false);
    this.version = paramJceInputStream.readString(6, false);
    this.buildno = paramJceInputStream.read(this.buildno, 7, false);
    this.productid = paramJceInputStream.read(this.productid, 8, false);
    this.ruletime = paramJceInputStream.read(this.ruletime, 9, false);
  }

  public final void setBuildno(int paramInt)
  {
    this.buildno = paramInt;
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

  public final void setLc(String paramString)
  {
    this.lc = paramString;
  }

  public final void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public final void setProductid(int paramInt)
  {
    this.productid = paramInt;
  }

  public final void setQq(String paramString)
  {
    this.qq = paramString;
  }

  public final void setRuletime(int paramInt)
  {
    this.ruletime = paramInt;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
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
    if (this.imsi != null)
      paramJceOutputStream.write(this.imsi, 5);
    if (this.version != null)
      paramJceOutputStream.write(this.version, 6);
    paramJceOutputStream.write(this.buildno, 7);
    paramJceOutputStream.write(this.productid, 8);
    paramJceOutputStream.write(this.ruletime, 9);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SUserInfo
 * JD-Core Version:    0.6.2
 */