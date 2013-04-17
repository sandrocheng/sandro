package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RspGetPosition extends JceStruct
{
  static GPS cache_stUsrLoc;
  public int iDistrictCode = 0;
  public int iRange = -1;
  public GPS stUsrLoc = null;
  public String strCity = "";
  public String strDistrict = "";
  public String strPremises = "";
  public String strProvince = "";
  public String strRoad = "";
  public String strTown = "";

  static
  {
    if (!RspGetPosition.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RspGetPosition()
  {
    setStUsrLoc(this.stUsrLoc);
    setIRange(this.iRange);
    setStrProvince(this.strProvince);
    setStrCity(this.strCity);
    setStrDistrict(this.strDistrict);
    setStrTown(this.strTown);
    setStrRoad(this.strRoad);
    setStrPremises(this.strPremises);
    setIDistrictCode(this.iDistrictCode);
  }

  public RspGetPosition(GPS paramGPS, int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, int paramInt2)
  {
    setStUsrLoc(paramGPS);
    setIRange(paramInt1);
    setStrProvince(paramString1);
    setStrCity(paramString2);
    setStrDistrict(paramString3);
    setStrTown(paramString4);
    setStrRoad(paramString5);
    setStrPremises(paramString6);
    setIDistrictCode(paramInt2);
  }

  public String className()
  {
    return "LBSAPIProtocol.RspGetPosition";
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
    localJceDisplayer.display(this.stUsrLoc, "stUsrLoc");
    localJceDisplayer.display(this.iRange, "iRange");
    localJceDisplayer.display(this.strProvince, "strProvince");
    localJceDisplayer.display(this.strCity, "strCity");
    localJceDisplayer.display(this.strDistrict, "strDistrict");
    localJceDisplayer.display(this.strTown, "strTown");
    localJceDisplayer.display(this.strRoad, "strRoad");
    localJceDisplayer.display(this.strPremises, "strPremises");
    localJceDisplayer.display(this.iDistrictCode, "iDistrictCode");
  }

  public boolean equals(Object paramObject)
  {
    RspGetPosition localRspGetPosition = (RspGetPosition)paramObject;
    if ((JceUtil.equals(this.stUsrLoc, localRspGetPosition.stUsrLoc)) && (JceUtil.equals(this.iRange, localRspGetPosition.iRange)) && (JceUtil.equals(this.strProvince, localRspGetPosition.strProvince)) && (JceUtil.equals(this.strCity, localRspGetPosition.strCity)) && (JceUtil.equals(this.strDistrict, localRspGetPosition.strDistrict)) && (JceUtil.equals(this.strTown, localRspGetPosition.strTown)) && (JceUtil.equals(this.strRoad, localRspGetPosition.strRoad)) && (JceUtil.equals(this.strPremises, localRspGetPosition.strPremises)) && (JceUtil.equals(this.iDistrictCode, localRspGetPosition.iDistrictCode)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getIDistrictCode()
  {
    return this.iDistrictCode;
  }

  public int getIRange()
  {
    return this.iRange;
  }

  public GPS getStUsrLoc()
  {
    return this.stUsrLoc;
  }

  public String getStrCity()
  {
    return this.strCity;
  }

  public String getStrDistrict()
  {
    return this.strDistrict;
  }

  public String getStrPremises()
  {
    return this.strPremises;
  }

  public String getStrProvince()
  {
    return this.strProvince;
  }

  public String getStrRoad()
  {
    return this.strRoad;
  }

  public String getStrTown()
  {
    return this.strTown;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_stUsrLoc == null)
      cache_stUsrLoc = new GPS();
    setStUsrLoc((GPS)paramJceInputStream.read(cache_stUsrLoc, 0, true));
    setIRange(paramJceInputStream.read(this.iRange, 1, true));
    setStrProvince(paramJceInputStream.readString(2, true));
    setStrCity(paramJceInputStream.readString(3, true));
    setStrDistrict(paramJceInputStream.readString(4, true));
    setStrTown(paramJceInputStream.readString(5, true));
    setStrRoad(paramJceInputStream.readString(6, true));
    setStrPremises(paramJceInputStream.readString(7, true));
    setIDistrictCode(paramJceInputStream.read(this.iDistrictCode, 8, true));
  }

  public void setIDistrictCode(int paramInt)
  {
    this.iDistrictCode = paramInt;
  }

  public void setIRange(int paramInt)
  {
    this.iRange = paramInt;
  }

  public void setStUsrLoc(GPS paramGPS)
  {
    this.stUsrLoc = paramGPS;
  }

  public void setStrCity(String paramString)
  {
    this.strCity = paramString;
  }

  public void setStrDistrict(String paramString)
  {
    this.strDistrict = paramString;
  }

  public void setStrPremises(String paramString)
  {
    this.strPremises = paramString;
  }

  public void setStrProvince(String paramString)
  {
    this.strProvince = paramString;
  }

  public void setStrRoad(String paramString)
  {
    this.strRoad = paramString;
  }

  public void setStrTown(String paramString)
  {
    this.strTown = paramString;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.stUsrLoc, 0);
    paramJceOutputStream.write(this.iRange, 1);
    paramJceOutputStream.write(this.strProvince, 2);
    paramJceOutputStream.write(this.strCity, 3);
    paramJceOutputStream.write(this.strDistrict, 4);
    paramJceOutputStream.write(this.strTown, 5);
    paramJceOutputStream.write(this.strRoad, 6);
    paramJceOutputStream.write(this.strPremises, 7);
    paramJceOutputStream.write(this.iDistrictCode, 8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.RspGetPosition
 * JD-Core Version:    0.6.2
 */