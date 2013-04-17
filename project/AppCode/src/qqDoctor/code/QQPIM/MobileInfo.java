package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MobileInfo extends JceStruct
{
  static int cache_phone_type;
  public String account = "";
  public String imei = "";
  public String loginkey = "";
  public int phone_type = 0;
  public String version = "";

  static
  {
    if (!MobileInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MobileInfo()
  {
    setImei(this.imei);
    setPhone_type(this.phone_type);
    setVersion(this.version);
    setAccount(this.account);
    setLoginkey(this.loginkey);
  }

  public MobileInfo(String paramString1, int paramInt, String paramString2, String paramString3, String paramString4)
  {
    setImei(paramString1);
    setPhone_type(paramInt);
    setVersion(paramString2);
    setAccount(paramString3);
    setLoginkey(paramString4);
  }

  public final String className()
  {
    return "QQPIM.MobileInfo";
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
    localJceDisplayer.display(this.phone_type, "phone_type");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.account, "account");
    localJceDisplayer.display(this.loginkey, "loginkey");
  }

  public final boolean equals(Object paramObject)
  {
    MobileInfo localMobileInfo = (MobileInfo)paramObject;
    if ((JceUtil.equals(this.imei, localMobileInfo.imei)) && (JceUtil.equals(this.phone_type, localMobileInfo.phone_type)) && (JceUtil.equals(this.version, localMobileInfo.version)) && (JceUtil.equals(this.account, localMobileInfo.account)) && (JceUtil.equals(this.loginkey, localMobileInfo.loginkey)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getAccount()
  {
    return this.account;
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final String getLoginkey()
  {
    return this.loginkey;
  }

  public final int getPhone_type()
  {
    return this.phone_type;
  }

  public final String getVersion()
  {
    return this.version;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.imei = paramJceInputStream.readString(0, true);
    this.phone_type = paramJceInputStream.read(this.phone_type, 1, true);
    this.version = paramJceInputStream.readString(2, true);
    this.account = paramJceInputStream.readString(3, true);
    this.loginkey = paramJceInputStream.readString(4, true);
  }

  public final void setAccount(String paramString)
  {
    this.account = paramString;
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setLoginkey(String paramString)
  {
    this.loginkey = paramString;
  }

  public final void setPhone_type(int paramInt)
  {
    this.phone_type = paramInt;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.imei, 0);
    paramJceOutputStream.write(this.phone_type, 1);
    paramJceOutputStream.write(this.version, 2);
    paramJceOutputStream.write(this.account, 3);
    paramJceOutputStream.write(this.loginkey, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.MobileInfo
 * JD-Core Version:    0.6.2
 */