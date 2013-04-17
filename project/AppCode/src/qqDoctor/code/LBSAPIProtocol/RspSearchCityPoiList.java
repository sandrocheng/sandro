package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class RspSearchCityPoiList extends JceStruct
{
  static ArrayList cache_vPoiList;
  public int iTotalNum = 0;
  public ArrayList vPoiList = null;

  static
  {
    if (!RspSearchCityPoiList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RspSearchCityPoiList()
  {
    setITotalNum(this.iTotalNum);
    setVPoiList(this.vPoiList);
  }

  public RspSearchCityPoiList(int paramInt, ArrayList paramArrayList)
  {
    setITotalNum(paramInt);
    setVPoiList(paramArrayList);
  }

  public String className()
  {
    return "LBSAPIProtocol.RspSearchCityPoiList";
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
    localJceDisplayer.display(this.iTotalNum, "iTotalNum");
    localJceDisplayer.display(this.vPoiList, "vPoiList");
  }

  public boolean equals(Object paramObject)
  {
    RspSearchCityPoiList localRspSearchCityPoiList = (RspSearchCityPoiList)paramObject;
    if ((JceUtil.equals(this.iTotalNum, localRspSearchCityPoiList.iTotalNum)) && (JceUtil.equals(this.vPoiList, localRspSearchCityPoiList.vPoiList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getITotalNum()
  {
    return this.iTotalNum;
  }

  public ArrayList getVPoiList()
  {
    return this.vPoiList;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    setITotalNum(paramJceInputStream.read(this.iTotalNum, 0, true));
    if (cache_vPoiList == null)
    {
      cache_vPoiList = new ArrayList();
      PoiInfo localPoiInfo = new PoiInfo();
      cache_vPoiList.add(localPoiInfo);
    }
    setVPoiList((ArrayList)paramJceInputStream.read(cache_vPoiList, 1, true));
  }

  public void setITotalNum(int paramInt)
  {
    this.iTotalNum = paramInt;
  }

  public void setVPoiList(ArrayList paramArrayList)
  {
    this.vPoiList = paramArrayList;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.iTotalNum, 0);
    paramJceOutputStream.write(this.vPoiList, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.RspSearchCityPoiList
 * JD-Core Version:    0.6.2
 */