package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class RspGetPoiList extends JceStruct
{
  static GPS cache_stUsrLoc;
  static ArrayList cache_vPoiList;
  public int iTotalNum = 0;
  public GPS stUsrLoc = null;
  public ArrayList vPoiList = null;

  static
  {
    if (!RspGetPoiList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RspGetPoiList()
  {
    setStUsrLoc(this.stUsrLoc);
    setITotalNum(this.iTotalNum);
    setVPoiList(this.vPoiList);
  }

  public RspGetPoiList(GPS paramGPS, int paramInt, ArrayList paramArrayList)
  {
    setStUsrLoc(paramGPS);
    setITotalNum(paramInt);
    setVPoiList(paramArrayList);
  }

  public String className()
  {
    return "LBSAPIProtocol.RspGetPoiList";
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
    localJceDisplayer.display(this.iTotalNum, "iTotalNum");
    localJceDisplayer.display(this.vPoiList, "vPoiList");
  }

  public boolean equals(Object paramObject)
  {
    RspGetPoiList localRspGetPoiList = (RspGetPoiList)paramObject;
    if ((JceUtil.equals(this.stUsrLoc, localRspGetPoiList.stUsrLoc)) && (JceUtil.equals(this.iTotalNum, localRspGetPoiList.iTotalNum)) && (JceUtil.equals(this.vPoiList, localRspGetPoiList.vPoiList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getITotalNum()
  {
    return this.iTotalNum;
  }

  public GPS getStUsrLoc()
  {
    return this.stUsrLoc;
  }

  public ArrayList getVPoiList()
  {
    return this.vPoiList;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_stUsrLoc == null)
      cache_stUsrLoc = new GPS();
    setStUsrLoc((GPS)paramJceInputStream.read(cache_stUsrLoc, 0, true));
    setITotalNum(paramJceInputStream.read(this.iTotalNum, 1, true));
    if (cache_vPoiList == null)
    {
      cache_vPoiList = new ArrayList();
      PoiInfo localPoiInfo = new PoiInfo();
      cache_vPoiList.add(localPoiInfo);
    }
    setVPoiList((ArrayList)paramJceInputStream.read(cache_vPoiList, 2, true));
  }

  public void setITotalNum(int paramInt)
  {
    this.iTotalNum = paramInt;
  }

  public void setStUsrLoc(GPS paramGPS)
  {
    this.stUsrLoc = paramGPS;
  }

  public void setVPoiList(ArrayList paramArrayList)
  {
    this.vPoiList = paramArrayList;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.stUsrLoc, 0);
    paramJceOutputStream.write(this.iTotalNum, 1);
    paramJceOutputStream.write(this.vPoiList, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.RspGetPoiList
 * JD-Core Version:    0.6.2
 */