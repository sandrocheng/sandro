package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PointsInfo extends JceStruct
  implements Cloneable
{
  public int daymaxpoints = 0;
  public int daypoints = 0;
  public int effetime = 0;
  public int totalpoints = 0;

  static
  {
    if (!PointsInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PointsInfo()
  {
    setTotalpoints(this.totalpoints);
    setDaymaxpoints(this.daymaxpoints);
    setDaypoints(this.daypoints);
    setEffetime(this.effetime);
  }

  public PointsInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setTotalpoints(paramInt1);
    setDaymaxpoints(paramInt2);
    setDaypoints(paramInt3);
    setEffetime(paramInt4);
  }

  public final String className()
  {
    return "QQPIM.PointsInfo";
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
    localJceDisplayer.display(this.totalpoints, "totalpoints");
    localJceDisplayer.display(this.daymaxpoints, "daymaxpoints");
    localJceDisplayer.display(this.daypoints, "daypoints");
    localJceDisplayer.display(this.effetime, "effetime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      PointsInfo localPointsInfo = (PointsInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.totalpoints, localPointsInfo.totalpoints);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.daymaxpoints, localPointsInfo.daymaxpoints);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.daypoints, localPointsInfo.daypoints);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.effetime, localPointsInfo.effetime);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.PointsInfo";
  }

  public final int getDaymaxpoints()
  {
    return this.daymaxpoints;
  }

  public final int getDaypoints()
  {
    return this.daypoints;
  }

  public final int getEffetime()
  {
    return this.effetime;
  }

  public final int getTotalpoints()
  {
    return this.totalpoints;
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
    this.totalpoints = paramJceInputStream.read(this.totalpoints, 0, true);
    this.daymaxpoints = paramJceInputStream.read(this.daymaxpoints, 1, false);
    this.daypoints = paramJceInputStream.read(this.daypoints, 2, false);
    this.effetime = paramJceInputStream.read(this.effetime, 3, false);
  }

  public final void setDaymaxpoints(int paramInt)
  {
    this.daymaxpoints = paramInt;
  }

  public final void setDaypoints(int paramInt)
  {
    this.daypoints = paramInt;
  }

  public final void setEffetime(int paramInt)
  {
    this.effetime = paramInt;
  }

  public final void setTotalpoints(int paramInt)
  {
    this.totalpoints = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.totalpoints, 0);
    paramJceOutputStream.write(this.daymaxpoints, 1);
    paramJceOutputStream.write(this.daypoints, 2);
    paramJceOutputStream.write(this.effetime, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PointsInfo
 * JD-Core Version:    0.6.2
 */