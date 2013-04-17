package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class RspGetPoiListById extends JceStruct
{
  static ArrayList cache_vPoiList;
  public ArrayList vPoiList = null;

  static
  {
    if (!RspGetPoiListById.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RspGetPoiListById()
  {
    setVPoiList(this.vPoiList);
  }

  public RspGetPoiListById(ArrayList paramArrayList)
  {
    setVPoiList(paramArrayList);
  }

  public String className()
  {
    return "LBSAPIProtocol.RspGetPoiListById";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.vPoiList, "vPoiList");
  }

  public boolean equals(Object paramObject)
  {
    RspGetPoiListById localRspGetPoiListById = (RspGetPoiListById)paramObject;
    return JceUtil.equals(this.vPoiList, localRspGetPoiListById.vPoiList);
  }

  public ArrayList getVPoiList()
  {
    return this.vPoiList;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_vPoiList == null)
    {
      cache_vPoiList = new ArrayList();
      PoiInfo localPoiInfo = new PoiInfo();
      cache_vPoiList.add(localPoiInfo);
    }
    setVPoiList((ArrayList)paramJceInputStream.read(cache_vPoiList, 0, true));
  }

  public void setVPoiList(ArrayList paramArrayList)
  {
    this.vPoiList = paramArrayList;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.vPoiList, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.RspGetPoiListById
 * JD-Core Version:    0.6.2
 */