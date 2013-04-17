package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ReqHeader extends JceStruct
{
  public String imei = "";
  public String imsi = "";
  public String lc = "";
  public String mobileno = "";
  public byte platformid = 0;
  public String version = "";

  static
  {
    if (!ReqHeader.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ReqHeader()
  {
    setPlatformid(this.platformid);
    setVersion(this.version);
    setLc(this.lc);
    setImei(this.imei);
    setMobileno(this.mobileno);
    setImsi(this.imsi);
  }

  public ReqHeader(byte paramByte, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    setPlatformid(paramByte);
    setVersion(paramString1);
    setLc(paramString2);
    setImei(paramString3);
    setMobileno(paramString4);
    setImsi(paramString5);
  }

  public final String className()
  {
    return "QQPIM.ReqHeader";
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
    localJceDisplayer.display(this.platformid, "platformid");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.lc, "lc");
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.mobileno, "mobileno");
    localJceDisplayer.display(this.imsi, "imsi");
  }

  public final boolean equals(Object paramObject)
  {
    ReqHeader localReqHeader = (ReqHeader)paramObject;
    if ((JceUtil.equals(this.platformid, localReqHeader.platformid)) && (JceUtil.equals(this.version, localReqHeader.version)) && (JceUtil.equals(this.lc, localReqHeader.lc)) && (JceUtil.equals(this.imei, localReqHeader.imei)) && (JceUtil.equals(this.mobileno, localReqHeader.mobileno)) && (JceUtil.equals(this.imsi, localReqHeader.imsi)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.ReqHeader";
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final String getImsi()
  {
    return this.imsi;
  }

  public final String getLc()
  {
    return this.lc;
  }

  public final String getMobileno()
  {
    return this.mobileno;
  }

  public final byte getPlatformid()
  {
    return this.platformid;
  }

  public final String getVersion()
  {
    return this.version;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.platformid = paramJceInputStream.read(this.platformid, 0, true);
    this.version = paramJceInputStream.readString(1, true);
    this.lc = paramJceInputStream.readString(2, true);
    this.imei = paramJceInputStream.readString(3, true);
    this.mobileno = paramJceInputStream.readString(4, true);
    this.imsi = paramJceInputStream.readString(5, true);
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public final void setLc(String paramString)
  {
    this.lc = paramString;
  }

  public final void setMobileno(String paramString)
  {
    this.mobileno = paramString;
  }

  public final void setPlatformid(byte paramByte)
  {
    this.platformid = paramByte;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.platformid, 0);
    paramJceOutputStream.write(this.version, 1);
    paramJceOutputStream.write(this.lc, 2);
    paramJceOutputStream.write(this.imei, 3);
    paramJceOutputStream.write(this.mobileno, 4);
    paramJceOutputStream.write(this.imsi, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ReqHeader
 * JD-Core Version:    0.6.2
 */