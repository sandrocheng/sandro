package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class ReportMission extends JceStruct
  implements Cloneable
{
  static ArrayList<MissionItem> cache_missions;
  static QQInfo cache_qq;
  public ArrayList<MissionItem> missions = null;
  public QQInfo qq = null;

  static
  {
    if (!ReportMission.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ReportMission()
  {
    setQq(this.qq);
    setMissions(this.missions);
  }

  public ReportMission(QQInfo paramQQInfo, ArrayList<MissionItem> paramArrayList)
  {
    setQq(paramQQInfo);
    setMissions(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.ReportMission";
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
    localJceDisplayer.display(this.qq, "qq");
    localJceDisplayer.display(this.missions, "missions");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ReportMission localReportMission = (ReportMission)paramObject;
      boolean bool2 = JceUtil.equals(this.qq, localReportMission.qq);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.missions, localReportMission.missions);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ReportMission";
  }

  public final ArrayList<MissionItem> getMissions()
  {
    return this.missions;
  }

  public final QQInfo getQq()
  {
    return this.qq;
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
    if (cache_qq == null)
      cache_qq = new QQInfo();
    this.qq = ((QQInfo)paramJceInputStream.read(cache_qq, 0, true));
    if (cache_missions == null)
    {
      cache_missions = new ArrayList();
      MissionItem localMissionItem = new MissionItem();
      cache_missions.add(localMissionItem);
    }
    setMissions((ArrayList)paramJceInputStream.read(cache_missions, 1, true));
  }

  public final void setMissions(ArrayList<MissionItem> paramArrayList)
  {
    this.missions = paramArrayList;
  }

  public final void setQq(QQInfo paramQQInfo)
  {
    this.qq = paramQQInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.qq, 0);
    paramJceOutputStream.write(this.missions, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ReportMission
 * JD-Core Version:    0.6.2
 */