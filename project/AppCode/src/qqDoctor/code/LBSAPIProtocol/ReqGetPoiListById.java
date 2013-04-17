package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ReqGetPoiListById extends JceStruct
{
  static ArrayList cache_vMeasures;
  static ArrayList cache_vPoiIdList;
  public String strAppUA = "";
  public String strImei = "";
  public ArrayList vMeasures = null;
  public ArrayList vPoiIdList = null;

  static
  {
    if (!ReqGetPoiListById.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ReqGetPoiListById()
  {
    setVPoiIdList(this.vPoiIdList);
    setVMeasures(this.vMeasures);
    setStrAppUA(this.strAppUA);
    setStrImei(this.strImei);
  }

  public ReqGetPoiListById(ArrayList paramArrayList1, ArrayList paramArrayList2, String paramString1, String paramString2)
  {
    setVPoiIdList(paramArrayList1);
    setVMeasures(paramArrayList2);
    setStrAppUA(paramString1);
    setStrImei(paramString2);
  }

  public String className()
  {
    return "LBSAPIProtocol.ReqGetPoiListById";
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
    localJceDisplayer.display(this.vPoiIdList, "vPoiIdList");
    localJceDisplayer.display(this.vMeasures, "vMeasures");
    localJceDisplayer.display(this.strAppUA, "strAppUA");
    localJceDisplayer.display(this.strImei, "strImei");
  }

  public boolean equals(Object paramObject)
  {
    ReqGetPoiListById localReqGetPoiListById = (ReqGetPoiListById)paramObject;
    if ((JceUtil.equals(this.vPoiIdList, localReqGetPoiListById.vPoiIdList)) && (JceUtil.equals(this.vMeasures, localReqGetPoiListById.vMeasures)) && (JceUtil.equals(this.strAppUA, localReqGetPoiListById.strAppUA)) && (JceUtil.equals(this.strImei, localReqGetPoiListById.strImei)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public String getStrAppUA()
  {
    return this.strAppUA;
  }

  public String getStrImei()
  {
    return this.strImei;
  }

  public ArrayList getVMeasures()
  {
    return this.vMeasures;
  }

  public ArrayList getVPoiIdList()
  {
    return this.vPoiIdList;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_vPoiIdList == null)
    {
      cache_vPoiIdList = new ArrayList();
      Long localLong = Long.valueOf(0L);
      cache_vPoiIdList.add(localLong);
    }
    setVPoiIdList((ArrayList)paramJceInputStream.read(cache_vPoiIdList, 0, true));
    if (cache_vMeasures == null)
    {
      cache_vMeasures = new ArrayList();
      Measure localMeasure = new Measure();
      cache_vMeasures.add(localMeasure);
    }
    setVMeasures((ArrayList)paramJceInputStream.read(cache_vMeasures, 1, false));
    setStrAppUA(paramJceInputStream.readString(2, false));
    setStrImei(paramJceInputStream.readString(3, false));
  }

  public void setStrAppUA(String paramString)
  {
    this.strAppUA = paramString;
  }

  public void setStrImei(String paramString)
  {
    this.strImei = paramString;
  }

  public void setVMeasures(ArrayList paramArrayList)
  {
    this.vMeasures = paramArrayList;
  }

  public void setVPoiIdList(ArrayList paramArrayList)
  {
    this.vPoiIdList = paramArrayList;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.vPoiIdList, 0);
    if (this.vMeasures != null)
      paramJceOutputStream.write(this.vMeasures, 1);
    if (this.strAppUA != null)
      paramJceOutputStream.write(this.strAppUA, 2);
    if (this.strImei != null)
      paramJceOutputStream.write(this.strImei, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.ReqGetPoiListById
 * JD-Core Version:    0.6.2
 */