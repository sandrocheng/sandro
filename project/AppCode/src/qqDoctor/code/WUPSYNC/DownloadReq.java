package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class DownloadReq extends JceStruct
{
  static ArrayList<MapItem> cache_mapList;
  public ArrayList<MapItem> mapList = null;
  public short seqId = 0;
  public String sid = "";

  static
  {
    if (!DownloadReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DownloadReq()
  {
    setSid(this.sid);
    setSeqId(this.seqId);
    setMapList(this.mapList);
  }

  public DownloadReq(String paramString, short paramShort, ArrayList<MapItem> paramArrayList)
  {
    setSid(paramString);
    setSeqId(paramShort);
    setMapList(paramArrayList);
  }

  public final String className()
  {
    return "WUPSYNC.DownloadReq";
  }

  public final Object clone()
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

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.sid, "sid");
    localJceDisplayer.display(this.seqId, "seqId");
    localJceDisplayer.display(this.mapList, "mapList");
  }

  public final boolean equals(Object paramObject)
  {
    DownloadReq localDownloadReq = (DownloadReq)paramObject;
    if ((JceUtil.equals(this.sid, localDownloadReq.sid)) && (JceUtil.equals(this.seqId, localDownloadReq.seqId)) && (JceUtil.equals(this.mapList, localDownloadReq.mapList)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final ArrayList<MapItem> getMapList()
  {
    return this.mapList;
  }

  public final short getSeqId()
  {
    return this.seqId;
  }

  public final String getSid()
  {
    return this.sid;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.sid = paramJceInputStream.readString(0, true);
    this.seqId = paramJceInputStream.read(this.seqId, 1, true);
    if (cache_mapList == null)
    {
      cache_mapList = new ArrayList();
      MapItem localMapItem = new MapItem();
      cache_mapList.add(localMapItem);
    }
    setMapList((ArrayList)paramJceInputStream.read(cache_mapList, 2, false));
  }

  public final void setMapList(ArrayList<MapItem> paramArrayList)
  {
    this.mapList = paramArrayList;
  }

  public final void setSeqId(short paramShort)
  {
    this.seqId = paramShort;
  }

  public final void setSid(String paramString)
  {
    this.sid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.sid, 0);
    paramJceOutputStream.write(this.seqId, 1);
    if (this.mapList != null)
      paramJceOutputStream.write(this.mapList, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.DownloadReq
 * JD-Core Version:    0.6.2
 */