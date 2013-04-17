package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ReqHeader extends JceStruct
{
  static int cache_eDeviceType;
  static int cache_eUinType;
  public int eDeviceType = 0;
  public int eUinType = 0;
  public short shVersion = 1;
  public String strAuthName = "";
  public String strAuthPassword = "";
  public String strUin = "";

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
    setShVersion(this.shVersion);
    setEUinType(this.eUinType);
    setStrUin(this.strUin);
    setStrAuthName(this.strAuthName);
    setStrAuthPassword(this.strAuthPassword);
    setEDeviceType(this.eDeviceType);
  }

  public ReqHeader(short paramShort, int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2)
  {
    setShVersion(paramShort);
    setEUinType(paramInt1);
    setStrUin(paramString1);
    setStrAuthName(paramString2);
    setStrAuthPassword(paramString3);
    setEDeviceType(paramInt2);
  }

  public String className()
  {
    return "LBSAPIProtocol.ReqHeader";
  }

  public Object clone()
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

  public void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.shVersion, "shVersion");
    localJceDisplayer.display(this.eUinType, "eUinType");
    localJceDisplayer.display(this.strUin, "strUin");
    localJceDisplayer.display(this.strAuthName, "strAuthName");
    localJceDisplayer.display(this.strAuthPassword, "strAuthPassword");
    localJceDisplayer.display(this.eDeviceType, "eDeviceType");
  }

  public boolean equals(Object paramObject)
  {
    ReqHeader localReqHeader = (ReqHeader)paramObject;
    if ((JceUtil.equals(this.shVersion, localReqHeader.shVersion)) && (JceUtil.equals(this.eUinType, localReqHeader.eUinType)) && (JceUtil.equals(this.strUin, localReqHeader.strUin)) && (JceUtil.equals(this.strAuthName, localReqHeader.strAuthName)) && (JceUtil.equals(this.strAuthPassword, localReqHeader.strAuthPassword)) && (JceUtil.equals(this.eDeviceType, localReqHeader.eDeviceType)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getEDeviceType()
  {
    return this.eDeviceType;
  }

  public int getEUinType()
  {
    return this.eUinType;
  }

  public short getShVersion()
  {
    return this.shVersion;
  }

  public String getStrAuthName()
  {
    return this.strAuthName;
  }

  public String getStrAuthPassword()
  {
    return this.strAuthPassword;
  }

  public String getStrUin()
  {
    return this.strUin;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    setShVersion(paramJceInputStream.read(this.shVersion, 0, true));
    setEUinType(paramJceInputStream.read(this.eUinType, 1, true));
    setStrUin(paramJceInputStream.readString(2, true));
    setStrAuthName(paramJceInputStream.readString(3, true));
    setStrAuthPassword(paramJceInputStream.readString(4, true));
    setEDeviceType(paramJceInputStream.read(this.eDeviceType, 5, false));
  }

  public void setEDeviceType(int paramInt)
  {
    this.eDeviceType = paramInt;
  }

  public void setEUinType(int paramInt)
  {
    this.eUinType = paramInt;
  }

  public void setShVersion(short paramShort)
  {
    this.shVersion = paramShort;
  }

  public void setStrAuthName(String paramString)
  {
    this.strAuthName = paramString;
  }

  public void setStrAuthPassword(String paramString)
  {
    this.strAuthPassword = paramString;
  }

  public void setStrUin(String paramString)
  {
    this.strUin = paramString;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.shVersion, 0);
    paramJceOutputStream.write(this.eUinType, 1);
    paramJceOutputStream.write(this.strUin, 2);
    paramJceOutputStream.write(this.strAuthName, 3);
    paramJceOutputStream.write(this.strAuthPassword, 4);
    paramJceOutputStream.write(this.eDeviceType, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.ReqHeader
 * JD-Core Version:    0.6.2
 */