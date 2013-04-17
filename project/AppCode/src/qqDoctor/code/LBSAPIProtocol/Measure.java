package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class Measure extends JceStruct
{
  static GPS cache_stGps;
  static ArrayList cache_vCells;
  static ArrayList cache_vMacs;
  public long lTime = 0L;
  public GPS stGps = null;
  public String strExtraInfo = "";
  public ArrayList vCells = null;
  public ArrayList vMacs = null;

  static
  {
    if (!Measure.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Measure()
  {
    setStGps(this.stGps);
    setVMacs(this.vMacs);
    setVCells(this.vCells);
    setLTime(this.lTime);
    setStrExtraInfo(this.strExtraInfo);
  }

  public Measure(GPS paramGPS, ArrayList paramArrayList1, ArrayList paramArrayList2, long paramLong, String paramString)
  {
    setStGps(paramGPS);
    setVMacs(paramArrayList1);
    setVCells(paramArrayList2);
    setLTime(paramLong);
    setStrExtraInfo(paramString);
  }

  public String className()
  {
    return "LBSAPIProtocol.Measure";
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
    localJceDisplayer.display(this.lTime, "lTime");
    localJceDisplayer.display(this.strExtraInfo, "strExtraInfo");
  }

  public boolean equals(Object paramObject)
  {
    Measure localMeasure = (Measure)paramObject;
    if ((JceUtil.equals(this.stGps, localMeasure.stGps)) && (JceUtil.equals(this.vMacs, localMeasure.vMacs)) && (JceUtil.equals(this.vCells, localMeasure.vCells)) && (JceUtil.equals(this.lTime, localMeasure.lTime)) && (JceUtil.equals(this.strExtraInfo, localMeasure.strExtraInfo)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public long getLTime()
  {
    return this.lTime;
  }

  public GPS getStGps()
  {
    return this.stGps;
  }

  public String getStrExtraInfo()
  {
    return this.strExtraInfo;
  }

  public ArrayList getVCells()
  {
    return this.vCells;
  }

  public ArrayList getVMacs()
  {
    return this.vMacs;
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
    setLTime(paramJceInputStream.read(this.lTime, 3, true));
    setStrExtraInfo(paramJceInputStream.readString(4, false));
  }

  public void setLTime(long paramLong)
  {
    this.lTime = paramLong;
  }

  public void setStGps(GPS paramGPS)
  {
    this.stGps = paramGPS;
  }

  public void setStrExtraInfo(String paramString)
  {
    this.strExtraInfo = paramString;
  }

  public void setVCells(ArrayList paramArrayList)
  {
    this.vCells = paramArrayList;
  }

  public void setVMacs(ArrayList paramArrayList)
  {
    this.vMacs = paramArrayList;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.stGps, 0);
    paramJceOutputStream.write(this.vMacs, 1);
    paramJceOutputStream.write(this.vCells, 2);
    paramJceOutputStream.write(this.lTime, 3);
    if (this.strExtraInfo != null)
      paramJceOutputStream.write(this.strExtraInfo, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.Measure
 * JD-Core Version:    0.6.2
 */