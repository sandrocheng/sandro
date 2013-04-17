package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ReqGetPosition extends JceStruct
{
  static GPS cache_stGps;
  static ArrayList cache_vCells;
  static ArrayList cache_vMacs;
  static ArrayList cache_vMeasures;
  public GPS stGps = null;
  public String strAppUA = "";
  public String strImei = "";
  public ArrayList vCells = null;
  public ArrayList vMacs = null;
  public ArrayList vMeasures = null;

  static
  {
    if (!ReqGetPosition.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ReqGetPosition()
  {
    setStGps(this.stGps);
    setVMacs(this.vMacs);
    setVCells(this.vCells);
    setVMeasures(this.vMeasures);
    setStrAppUA(this.strAppUA);
    setStrImei(this.strImei);
  }

  public ReqGetPosition(GPS paramGPS, ArrayList paramArrayList1, ArrayList paramArrayList2, ArrayList paramArrayList3, String paramString1, String paramString2)
  {
    setStGps(paramGPS);
    setVMacs(paramArrayList1);
    setVCells(paramArrayList2);
    setVMeasures(paramArrayList3);
    setStrAppUA(paramString1);
    setStrImei(paramString2);
  }

  public String className()
  {
    return "LBSAPIProtocol.ReqGetPosition";
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
    localJceDisplayer.display(this.vMeasures, "vMeasures");
    localJceDisplayer.display(this.strAppUA, "strAppUA");
    localJceDisplayer.display(this.strImei, "strImei");
  }

  public boolean equals(Object paramObject)
  {
    ReqGetPosition localReqGetPosition = (ReqGetPosition)paramObject;
    if ((JceUtil.equals(this.stGps, localReqGetPosition.stGps)) && (JceUtil.equals(this.vMacs, localReqGetPosition.vMacs)) && (JceUtil.equals(this.vCells, localReqGetPosition.vCells)) && (JceUtil.equals(this.vMeasures, localReqGetPosition.vMeasures)) && (JceUtil.equals(this.strAppUA, localReqGetPosition.strAppUA)) && (JceUtil.equals(this.strImei, localReqGetPosition.strImei)));
    for (boolean bool = true; ; bool = false)
      return bool;
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
    if (cache_vMeasures == null)
    {
      cache_vMeasures = new ArrayList();
      Measure localMeasure = new Measure();
      cache_vMeasures.add(localMeasure);
    }
    setVMeasures((ArrayList)paramJceInputStream.read(cache_vMeasures, 3, false));
    setStrAppUA(paramJceInputStream.readString(4, false));
    setStrImei(paramJceInputStream.readString(5, false));
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

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.stGps, 0);
    paramJceOutputStream.write(this.vMacs, 1);
    paramJceOutputStream.write(this.vCells, 2);
    if (this.vMeasures != null)
      paramJceOutputStream.write(this.vMeasures, 3);
    if (this.strAppUA != null)
      paramJceOutputStream.write(this.strAppUA, 4);
    if (this.strImei != null)
      paramJceOutputStream.write(this.strImei, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.ReqGetPosition
 * JD-Core Version:    0.6.2
 */