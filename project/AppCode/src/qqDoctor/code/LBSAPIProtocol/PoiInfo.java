package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PoiInfo extends JceStruct
{
  public int iDistance = 0;
  public int iDistrictCode = 0;
  public int iHotValue = 0;
  public int iLat = 900000000;
  public int iLon = 900000000;
  public int iType = 0;
  public long lId = 0L;
  public String strAddress = "";
  public String strName = "";
  public String strTypeName = "";

  static
  {
    if (!PoiInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PoiInfo()
  {
    setStrName(this.strName);
    setIType(this.iType);
    setStrTypeName(this.strTypeName);
    setStrAddress(this.strAddress);
    setLId(this.lId);
    setIDistrictCode(this.iDistrictCode);
    setILat(this.iLat);
    setILon(this.iLon);
    setIDistance(this.iDistance);
    setIHotValue(this.iHotValue);
  }

  public PoiInfo(String paramString1, int paramInt1, String paramString2, String paramString3, long paramLong, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    setStrName(paramString1);
    setIType(paramInt1);
    setStrTypeName(paramString2);
    setStrAddress(paramString3);
    setLId(paramLong);
    setIDistrictCode(paramInt2);
    setILat(paramInt3);
    setILon(paramInt4);
    setIDistance(paramInt5);
    setIHotValue(paramInt6);
  }

  public String className()
  {
    return "LBSAPIProtocol.PoiInfo";
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
    localJceDisplayer.display(this.strName, "strName");
    localJceDisplayer.display(this.iType, "iType");
    localJceDisplayer.display(this.strTypeName, "strTypeName");
    localJceDisplayer.display(this.strAddress, "strAddress");
    localJceDisplayer.display(this.lId, "lId");
    localJceDisplayer.display(this.iDistrictCode, "iDistrictCode");
    localJceDisplayer.display(this.iLat, "iLat");
    localJceDisplayer.display(this.iLon, "iLon");
    localJceDisplayer.display(this.iDistance, "iDistance");
    localJceDisplayer.display(this.iHotValue, "iHotValue");
  }

  public boolean equals(Object paramObject)
  {
    PoiInfo localPoiInfo = (PoiInfo)paramObject;
    if ((JceUtil.equals(this.strName, localPoiInfo.strName)) && (JceUtil.equals(this.iType, localPoiInfo.iType)) && (JceUtil.equals(this.strTypeName, localPoiInfo.strTypeName)) && (JceUtil.equals(this.strAddress, localPoiInfo.strAddress)) && (JceUtil.equals(this.lId, localPoiInfo.lId)) && (JceUtil.equals(this.iDistrictCode, localPoiInfo.iDistrictCode)) && (JceUtil.equals(this.iLat, localPoiInfo.iLat)) && (JceUtil.equals(this.iLon, localPoiInfo.iLon)) && (JceUtil.equals(this.iDistance, localPoiInfo.iDistance)) && (JceUtil.equals(this.iHotValue, localPoiInfo.iHotValue)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getIDistance()
  {
    return this.iDistance;
  }

  public int getIDistrictCode()
  {
    return this.iDistrictCode;
  }

  public int getIHotValue()
  {
    return this.iHotValue;
  }

  public int getILat()
  {
    return this.iLat;
  }

  public int getILon()
  {
    return this.iLon;
  }

  public int getIType()
  {
    return this.iType;
  }

  public long getLId()
  {
    return this.lId;
  }

  public String getStrAddress()
  {
    return this.strAddress;
  }

  public String getStrName()
  {
    return this.strName;
  }

  public String getStrTypeName()
  {
    return this.strTypeName;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    setStrName(paramJceInputStream.readString(0, true));
    setIType(paramJceInputStream.read(this.iType, 1, true));
    setStrTypeName(paramJceInputStream.readString(2, true));
    setStrAddress(paramJceInputStream.readString(3, true));
    setLId(paramJceInputStream.read(this.lId, 4, false));
    setIDistrictCode(paramJceInputStream.read(this.iDistrictCode, 5, false));
    setILat(paramJceInputStream.read(this.iLat, 6, false));
    setILon(paramJceInputStream.read(this.iLon, 7, false));
    setIDistance(paramJceInputStream.read(this.iDistance, 8, false));
    setIHotValue(paramJceInputStream.read(this.iHotValue, 9, false));
  }

  public void setIDistance(int paramInt)
  {
    this.iDistance = paramInt;
  }

  public void setIDistrictCode(int paramInt)
  {
    this.iDistrictCode = paramInt;
  }

  public void setIHotValue(int paramInt)
  {
    this.iHotValue = paramInt;
  }

  public void setILat(int paramInt)
  {
    this.iLat = paramInt;
  }

  public void setILon(int paramInt)
  {
    this.iLon = paramInt;
  }

  public void setIType(int paramInt)
  {
    this.iType = paramInt;
  }

  public void setLId(long paramLong)
  {
    this.lId = paramLong;
  }

  public void setStrAddress(String paramString)
  {
    this.strAddress = paramString;
  }

  public void setStrName(String paramString)
  {
    this.strName = paramString;
  }

  public void setStrTypeName(String paramString)
  {
    this.strTypeName = paramString;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.strName, 0);
    paramJceOutputStream.write(this.iType, 1);
    paramJceOutputStream.write(this.strTypeName, 2);
    paramJceOutputStream.write(this.strAddress, 3);
    paramJceOutputStream.write(this.lId, 4);
    paramJceOutputStream.write(this.iDistrictCode, 5);
    paramJceOutputStream.write(this.iLat, 6);
    paramJceOutputStream.write(this.iLon, 7);
    paramJceOutputStream.write(this.iDistance, 8);
    paramJceOutputStream.write(this.iHotValue, 9);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.PoiInfo
 * JD-Core Version:    0.6.2
 */