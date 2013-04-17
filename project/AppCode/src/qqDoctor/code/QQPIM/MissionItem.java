package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MissionItem extends JceStruct
  implements Cloneable
{
  public byte isextra = 0;
  public int missionid = 0;
  public String name = "";
  public int points = 0;
  public byte state = 0;
  public int time = 0;
  public int times = 0;
  public int tlast = 0;
  public int usetimes = 0;
  public int version = 1;

  static
  {
    if (!MissionItem.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MissionItem()
  {
    setMissionid(this.missionid);
    setName(this.name);
    setPoints(this.points);
    setState(this.state);
    setTimes(this.times);
    setIsextra(this.isextra);
    setTime(this.time);
    setTlast(this.tlast);
    setUsetimes(this.usetimes);
    setVersion(this.version);
  }

  public MissionItem(int paramInt1, String paramString, int paramInt2, byte paramByte1, int paramInt3, byte paramByte2, int paramInt4, int paramInt5, int paramInt6, int paramInt7)
  {
    setMissionid(paramInt1);
    setName(paramString);
    setPoints(paramInt2);
    setState(paramByte1);
    setTimes(paramInt3);
    setIsextra(paramByte2);
    setTime(paramInt4);
    setTlast(paramInt5);
    setUsetimes(paramInt6);
    setVersion(paramInt7);
  }

  public final String className()
  {
    return "QQPIM.MissionItem";
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
    localJceDisplayer.display(this.missionid, "missionid");
    localJceDisplayer.display(this.name, "name");
    localJceDisplayer.display(this.points, "points");
    localJceDisplayer.display(this.state, "state");
    localJceDisplayer.display(this.times, "times");
    localJceDisplayer.display(this.isextra, "isextra");
    localJceDisplayer.display(this.time, "time");
    localJceDisplayer.display(this.tlast, "tlast");
    localJceDisplayer.display(this.usetimes, "usetimes");
    localJceDisplayer.display(this.version, "version");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      MissionItem localMissionItem = (MissionItem)paramObject;
      boolean bool2 = JceUtil.equals(this.missionid, localMissionItem.missionid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.name, localMissionItem.name);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.points, localMissionItem.points);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.state, localMissionItem.state);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.times, localMissionItem.times);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.isextra, localMissionItem.isextra);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.time, localMissionItem.time);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.tlast, localMissionItem.tlast);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.usetimes, localMissionItem.usetimes);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.version, localMissionItem.version);
                        bool1 = false;
                        if (bool11)
                          bool1 = true;
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.MissionItem";
  }

  public final byte getIsextra()
  {
    return this.isextra;
  }

  public final int getMissionid()
  {
    return this.missionid;
  }

  public final String getName()
  {
    return this.name;
  }

  public final int getPoints()
  {
    return this.points;
  }

  public final byte getState()
  {
    return this.state;
  }

  public final int getTime()
  {
    return this.time;
  }

  public final int getTimes()
  {
    return this.times;
  }

  public final int getTlast()
  {
    return this.tlast;
  }

  public final int getUsetimes()
  {
    return this.usetimes;
  }

  public final int getVersion()
  {
    return this.version;
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
    this.missionid = paramJceInputStream.read(this.missionid, 0, true);
    this.name = paramJceInputStream.readString(1, true);
    this.points = paramJceInputStream.read(this.points, 2, true);
    this.state = paramJceInputStream.read(this.state, 3, true);
    this.times = paramJceInputStream.read(this.times, 4, true);
    this.isextra = paramJceInputStream.read(this.isextra, 5, true);
    this.time = paramJceInputStream.read(this.time, 6, false);
    this.tlast = paramJceInputStream.read(this.tlast, 7, false);
    this.usetimes = paramJceInputStream.read(this.usetimes, 8, false);
    this.version = paramJceInputStream.read(this.version, 9, false);
  }

  public final void setIsextra(byte paramByte)
  {
    this.isextra = paramByte;
  }

  public final void setMissionid(int paramInt)
  {
    this.missionid = paramInt;
  }

  public final void setName(String paramString)
  {
    this.name = paramString;
  }

  public final void setPoints(int paramInt)
  {
    this.points = paramInt;
  }

  public final void setState(byte paramByte)
  {
    this.state = paramByte;
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void setTimes(int paramInt)
  {
    this.times = paramInt;
  }

  public final void setTlast(int paramInt)
  {
    this.tlast = paramInt;
  }

  public final void setUsetimes(int paramInt)
  {
    this.usetimes = paramInt;
  }

  public final void setVersion(int paramInt)
  {
    this.version = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.missionid, 0);
    paramJceOutputStream.write(this.name, 1);
    paramJceOutputStream.write(this.points, 2);
    paramJceOutputStream.write(this.state, 3);
    paramJceOutputStream.write(this.times, 4);
    paramJceOutputStream.write(this.isextra, 5);
    paramJceOutputStream.write(this.time, 6);
    paramJceOutputStream.write(this.tlast, 7);
    paramJceOutputStream.write(this.usetimes, 8);
    paramJceOutputStream.write(this.version, 9);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.MissionItem
 * JD-Core Version:    0.6.2
 */