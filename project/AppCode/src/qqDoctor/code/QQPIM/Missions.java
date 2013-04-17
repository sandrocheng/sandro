package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class Missions extends JceStruct
  implements Cloneable
{
  static ArrayList<CloudInfo> cache_cloudinfos;
  static PointsInfo cache_hpoints;
  static ArrayList<MissionItem> cache_missions;
  public ArrayList<CloudInfo> cloudinfos = null;
  public PointsInfo hpoints = null;
  public ArrayList<MissionItem> missions = null;

  static
  {
    if (!Missions.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Missions()
  {
    setHpoints(this.hpoints);
    setMissions(this.missions);
    setCloudinfos(this.cloudinfos);
  }

  public Missions(PointsInfo paramPointsInfo, ArrayList<MissionItem> paramArrayList, ArrayList<CloudInfo> paramArrayList1)
  {
    setHpoints(paramPointsInfo);
    setMissions(paramArrayList);
    setCloudinfos(paramArrayList1);
  }

  public final String className()
  {
    return "QQPIM.Missions";
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
    localJceDisplayer.display(this.hpoints, "hpoints");
    localJceDisplayer.display(this.missions, "missions");
    localJceDisplayer.display(this.cloudinfos, "cloudinfos");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Missions localMissions = (Missions)paramObject;
      boolean bool2 = JceUtil.equals(this.hpoints, localMissions.hpoints);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.missions, localMissions.missions);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.cloudinfos, localMissions.cloudinfos);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.Missions";
  }

  public final ArrayList<CloudInfo> getCloudinfos()
  {
    return this.cloudinfos;
  }

  public final PointsInfo getHpoints()
  {
    return this.hpoints;
  }

  public final ArrayList<MissionItem> getMissions()
  {
    return this.missions;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_hpoints == null)
      cache_hpoints = new PointsInfo();
    this.hpoints = ((PointsInfo)paramJceInputStream.read(cache_hpoints, 0, true));
    if (cache_missions == null)
    {
      cache_missions = new ArrayList();
      MissionItem localMissionItem = new MissionItem();
      cache_missions.add(localMissionItem);
    }
    setMissions((ArrayList)paramJceInputStream.read(cache_missions, 1, true));
    if (cache_cloudinfos == null)
    {
      cache_cloudinfos = new ArrayList();
      CloudInfo localCloudInfo = new CloudInfo();
      cache_cloudinfos.add(localCloudInfo);
    }
    setCloudinfos((ArrayList)paramJceInputStream.read(cache_cloudinfos, 2, true));
  }

  public final void setCloudinfos(ArrayList<CloudInfo> paramArrayList)
  {
    this.cloudinfos = paramArrayList;
  }

  public final void setHpoints(PointsInfo paramPointsInfo)
  {
    this.hpoints = paramPointsInfo;
  }

  public final void setMissions(ArrayList<MissionItem> paramArrayList)
  {
    this.missions = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.hpoints, 0);
    paramJceOutputStream.write(this.missions, 1);
    paramJceOutputStream.write(this.cloudinfos, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.Missions
 * JD-Core Version:    0.6.2
 */