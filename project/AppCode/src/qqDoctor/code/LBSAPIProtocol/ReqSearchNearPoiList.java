package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ReqSearchNearPoiList extends JceStruct
{
  static GPS cache_stGps;
  static ArrayList cache_vCells;
  static ArrayList cache_vMacs;
  static ArrayList cache_vMeasures;
  static ArrayList cache_vTypes;
  public int iBeginPos = 0;
  public int iRadius = 100;
  public int iReqNum = 10;
  public GPS stGps = null;
  public String strAppUA = "";
  public String strImei = "";
  public String strKeyword = "";
  public ArrayList vCells = null;
  public ArrayList vMacs = null;
  public ArrayList vMeasures = null;
  public ArrayList vTypes = null;

  static
  {
    if (!ReqSearchNearPoiList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ReqSearchNearPoiList()
  {
    setStGps(this.stGps);
    setVMacs(this.vMacs);
    setVCells(this.vCells);
    setStrKeyword(this.strKeyword);
    setVTypes(this.vTypes);
    setIRadius(this.iRadius);
    setIBeginPos(this.iBeginPos);
    setIReqNum(this.iReqNum);
    setVMeasures(this.vMeasures);
    setStrAppUA(this.strAppUA);
    setStrImei(this.strImei);
  }

  public ReqSearchNearPoiList(GPS paramGPS, ArrayList paramArrayList1, ArrayList paramArrayList2, String paramString1, ArrayList paramArrayList3, int paramInt1, int paramInt2, int paramInt3, ArrayList paramArrayList4, String paramString2, String paramString3)
  {
    setStGps(paramGPS);
    setVMacs(paramArrayList1);
    setVCells(paramArrayList2);
    setStrKeyword(paramString1);
    setVTypes(paramArrayList3);
    setIRadius(paramInt1);
    setIBeginPos(paramInt2);
    setIReqNum(paramInt3);
    setVMeasures(paramArrayList4);
    setStrAppUA(paramString2);
    setStrImei(paramString3);
  }

  public String className()
  {
    return "LBSAPIProtocol.ReqSearchNearPoiList";
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
    localJceDisplayer.display(this.stGps, "stGps");
    localJceDisplayer.display(this.vMacs, "vMacs");
    localJceDisplayer.display(this.vCells, "vCells");
    localJceDisplayer.display(this.strKeyword, "strKeyword");
    localJceDisplayer.display(this.vTypes, "vTypes");
    localJceDisplayer.display(this.iRadius, "iRadius");
    localJceDisplayer.display(this.iBeginPos, "iBeginPos");
    localJceDisplayer.display(this.iReqNum, "iReqNum");
    localJceDisplayer.display(this.vMeasures, "vMeasures");
    localJceDisplayer.display(this.strAppUA, "strAppUA");
    localJceDisplayer.display(this.strImei, "strImei");
  }

  public boolean equals(Object paramObject)
  {
    ReqSearchNearPoiList localReqSearchNearPoiList = (ReqSearchNearPoiList)paramObject;
    if ((JceUtil.equals(this.stGps, localReqSearchNearPoiList.stGps)) && (JceUtil.equals(this.vMacs, localReqSearchNearPoiList.vMacs)) && (JceUtil.equals(this.vCells, localReqSearchNearPoiList.vCells)) && (JceUtil.equals(this.strKeyword, localReqSearchNearPoiList.strKeyword)) && (JceUtil.equals(this.vTypes, localReqSearchNearPoiList.vTypes)) && (JceUtil.equals(this.iRadius, localReqSearchNearPoiList.iRadius)) && (JceUtil.equals(this.iBeginPos, localReqSearchNearPoiList.iBeginPos)) && (JceUtil.equals(this.iReqNum, localReqSearchNearPoiList.iReqNum)) && (JceUtil.equals(this.vMeasures, localReqSearchNearPoiList.vMeasures)) && (JceUtil.equals(this.strAppUA, localReqSearchNearPoiList.strAppUA)) && (JceUtil.equals(this.strImei, localReqSearchNearPoiList.strImei)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getIBeginPos()
  {
    return this.iBeginPos;
  }

  public int getIRadius()
  {
    return this.iRadius;
  }

  public int getIReqNum()
  {
    return this.iReqNum;
  }

  public GPS getStGps()
  {
    return this.stGps;
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

  public ArrayList getVCells()
  {
    return this.vCells;
  }

  public ArrayList getVMacs()
  {
    return this.vMacs;
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
    if (cache_stGps == null)
      cache_stGps = new GPS();
    setStGps((GPS)paramJceInputStream.read(cache_stGps, 0, true));
    if (cache_vMacs == null)
    {
      cache_vMacs = new ArrayList();
      Long localLong = Long.valueOf(0L);
      cache_vMacs.add(localLong);
    }
    setVMacs((ArrayList)paramJceInputStream.read(cache_vMacs, 1, true));
    if (cache_vCells == null)
    {
      cache_vCells = new ArrayList();
      Cell localCell = new Cell();
      cache_vCells.add(localCell);
    }
    setVCells((ArrayList)paramJceInputStream.read(cache_vCells, 2, true));
    setStrKeyword(paramJceInputStream.readString(3, true));
    if (cache_vTypes == null)
    {
      cache_vTypes = new ArrayList();
      Integer localInteger = Integer.valueOf(0);
      cache_vTypes.add(localInteger);
    }
    setVTypes((ArrayList)paramJceInputStream.read(cache_vTypes, 4, true));
    setIRadius(paramJceInputStream.read(this.iRadius, 5, true));
    setIBeginPos(paramJceInputStream.read(this.iBeginPos, 6, true));
    setIReqNum(paramJceInputStream.read(this.iReqNum, 7, true));
    if (cache_vMeasures == null)
    {
      cache_vMeasures = new ArrayList();
      Measure localMeasure = new Measure();
      cache_vMeasures.add(localMeasure);
    }
    setVMeasures((ArrayList)paramJceInputStream.read(cache_vMeasures, 8, false));
    setStrAppUA(paramJceInputStream.readString(9, false));
    setStrImei(paramJceInputStream.readString(10, false));
  }

  public void setIBeginPos(int paramInt)
  {
    this.iBeginPos = paramInt;
  }

  public void setIRadius(int paramInt)
  {
    this.iRadius = paramInt;
  }

  public void setIReqNum(int paramInt)
  {
    this.iReqNum = paramInt;
  }

  public void setStGps(GPS paramGPS)
  {
    this.stGps = paramGPS;
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

  public void setVCells(ArrayList paramArrayList)
  {
    this.vCells = paramArrayList;
  }

  public void setVMacs(ArrayList paramArrayList)
  {
    this.vMacs = paramArrayList;
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
    paramJceOutputStream.write(this.stGps, 0);
    paramJceOutputStream.write(this.vMacs, 1);
    paramJceOutputStream.write(this.vCells, 2);
    paramJceOutputStream.write(this.strKeyword, 3);
    paramJceOutputStream.write(this.vTypes, 4);
    paramJceOutputStream.write(this.iRadius, 5);
    paramJceOutputStream.write(this.iBeginPos, 6);
    paramJceOutputStream.write(this.iReqNum, 7);
    if (this.vMeasures != null)
      paramJceOutputStream.write(this.vMeasures, 8);
    if (this.strAppUA != null)
      paramJceOutputStream.write(this.strAppUA, 9);
    if (this.strImei != null)
      paramJceOutputStream.write(this.strImei, 10);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.ReqSearchNearPoiList
 * JD-Core Version:    0.6.2
 */