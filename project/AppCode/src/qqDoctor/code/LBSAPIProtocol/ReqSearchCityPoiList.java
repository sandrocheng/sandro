package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ReqSearchCityPoiList extends JceStruct
{
  static ArrayList cache_vMeasures;
  static ArrayList cache_vTypes;
  public int iBeginPos = 0;
  public int iCityCode = 0;
  public int iReqNum = 10;
  public String strAppUA = "";
  public String strImei = "";
  public String strKeyword = "";
  public ArrayList vMeasures = null;
  public ArrayList vTypes = null;

  static
  {
    if (!ReqSearchCityPoiList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ReqSearchCityPoiList()
  {
    setICityCode(this.iCityCode);
    setStrKeyword(this.strKeyword);
    setVTypes(this.vTypes);
    setIBeginPos(this.iBeginPos);
    setIReqNum(this.iReqNum);
    setVMeasures(this.vMeasures);
    setStrAppUA(this.strAppUA);
    setStrImei(this.strImei);
  }

  public ReqSearchCityPoiList(int paramInt1, String paramString1, ArrayList paramArrayList1, int paramInt2, int paramInt3, ArrayList paramArrayList2, String paramString2, String paramString3)
  {
    setICityCode(paramInt1);
    setStrKeyword(paramString1);
    setVTypes(paramArrayList1);
    setIBeginPos(paramInt2);
    setIReqNum(paramInt3);
    setVMeasures(paramArrayList2);
    setStrAppUA(paramString2);
    setStrImei(paramString3);
  }

  public String className()
  {
    return "LBSAPIProtocol.ReqSearchCityPoiList";
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
    localJceDisplayer.display(this.iCityCode, "iCityCode");
    localJceDisplayer.display(this.strKeyword, "strKeyword");
    localJceDisplayer.display(this.vTypes, "vTypes");
    localJceDisplayer.display(this.iBeginPos, "iBeginPos");
    localJceDisplayer.display(this.iReqNum, "iReqNum");
    localJceDisplayer.display(this.vMeasures, "vMeasures");
    localJceDisplayer.display(this.strAppUA, "strAppUA");
    localJceDisplayer.display(this.strImei, "strImei");
  }

  public boolean equals(Object paramObject)
  {
    ReqSearchCityPoiList localReqSearchCityPoiList = (ReqSearchCityPoiList)paramObject;
    if ((JceUtil.equals(this.iCityCode, localReqSearchCityPoiList.iCityCode)) && (JceUtil.equals(this.strKeyword, localReqSearchCityPoiList.strKeyword)) && (JceUtil.equals(this.vTypes, localReqSearchCityPoiList.vTypes)) && (JceUtil.equals(this.iBeginPos, localReqSearchCityPoiList.iBeginPos)) && (JceUtil.equals(this.iReqNum, localReqSearchCityPoiList.iReqNum)) && (JceUtil.equals(this.vMeasures, localReqSearchCityPoiList.vMeasures)) && (JceUtil.equals(this.strAppUA, localReqSearchCityPoiList.strAppUA)) && (JceUtil.equals(this.strImei, localReqSearchCityPoiList.strImei)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getIBeginPos()
  {
    return this.iBeginPos;
  }

  public int getICityCode()
  {
    return this.iCityCode;
  }

  public int getIReqNum()
  {
    return this.iReqNum;
  }

  public String getStrAppUA()
  {
    return this.strAppUA;
  }

  public String getStrImei()
  {
    return this.strImei;
  }

  public String getStrKeyword()
  {
    return this.strKeyword;
  }

  public ArrayList getVMeasures()
  {
    return this.vMeasures;
  }

  public ArrayList getVTypes()
  {
    return this.vTypes;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    setICityCode(paramJceInputStream.read(this.iCityCode, 0, true));
    setStrKeyword(paramJceInputStream.readString(1, true));
    if (cache_vTypes == null)
    {
      cache_vTypes = new ArrayList();
      Integer localInteger = Integer.valueOf(0);
      cache_vTypes.add(localInteger);
    }
    setVTypes((ArrayList)paramJceInputStream.read(cache_vTypes, 2, true));
    setIBeginPos(paramJceInputStream.read(this.iBeginPos, 3, true));
    setIReqNum(paramJceInputStream.read(this.iReqNum, 4, true));
    if (cache_vMeasures == null)
    {
      cache_vMeasures = new ArrayList();
      Measure localMeasure = new Measure();
      cache_vMeasures.add(localMeasure);
    }
    setVMeasures((ArrayList)paramJceInputStream.read(cache_vMeasures, 5, false));
    setStrAppUA(paramJceInputStream.readString(6, false));
    setStrImei(paramJceInputStream.readString(7, false));
  }

  public void setIBeginPos(int paramInt)
  {
    this.iBeginPos = paramInt;
  }

  public void setICityCode(int paramInt)
  {
    this.iCityCode = paramInt;
  }

  public void setIReqNum(int paramInt)
  {
    this.iReqNum = paramInt;
  }

  public void setStrAppUA(String paramString)
  {
    this.strAppUA = paramString;
  }

  public void setStrImei(String paramString)
  {
    this.strImei = paramString;
  }

  public void setStrKeyword(String paramString)
  {
    this.strKeyword = paramString;
  }

  public void setVMeasures(ArrayList paramArrayList)
  {
    this.vMeasures = paramArrayList;
  }

  public void setVTypes(ArrayList paramArrayList)
  {
    this.vTypes = paramArrayList;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.iCityCode, 0);
    paramJceOutputStream.write(this.strKeyword, 1);
    paramJceOutputStream.write(this.vTypes, 2);
    paramJceOutputStream.write(this.iBeginPos, 3);
    paramJceOutputStream.write(this.iReqNum, 4);
    if (this.vMeasures != null)
      paramJceOutputStream.write(this.vMeasures, 5);
    if (this.strAppUA != null)
      paramJceOutputStream.write(this.strAppUA, 6);
    if (this.strImei != null)
      paramJceOutputStream.write(this.strImei, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.ReqSearchCityPoiList
 * JD-Core Version:    0.6.2
 */