package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TimeCtrl extends JceStruct
  implements Cloneable
{
  public boolean bEngross = true;
  public int exectime = 0;
  public int time = 0;
  public int validEndTime = 0;

  static
  {
    if (!TimeCtrl.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TimeCtrl()
  {
    setTime(this.time);
    setBEngross(this.bEngross);
    setValidEndTime(this.validEndTime);
    setExectime(this.exectime);
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
    localJceDisplayer.display(this.time, "time");
    localJceDisplayer.display(this.bEngross, "bEngross");
    localJceDisplayer.display(this.validEndTime, "validEndTime");
    localJceDisplayer.display(this.exectime, "exectime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TimeCtrl localTimeCtrl = (TimeCtrl)paramObject;
      boolean bool2 = JceUtil.equals(this.time, localTimeCtrl.time);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.bEngross, localTimeCtrl.bEngross);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.validEndTime, localTimeCtrl.validEndTime);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.exectime, localTimeCtrl.exectime);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
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
    this.time = paramJceInputStream.read(this.time, 0, true);
    this.bEngross = paramJceInputStream.read(this.bEngross, 1, true);
    this.validEndTime = paramJceInputStream.read(this.validEndTime, 2, false);
    this.exectime = paramJceInputStream.read(this.exectime, 3, false);
  }

  public final void setBEngross(boolean paramBoolean)
  {
    this.bEngross = paramBoolean;
  }

  public final void setExectime(int paramInt)
  {
    this.exectime = paramInt;
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void setValidEndTime(int paramInt)
  {
    this.validEndTime = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.time, 0);
    paramJceOutputStream.write(this.bEngross, 1);
    paramJceOutputStream.write(this.validEndTime, 2);
    paramJceOutputStream.write(this.exectime, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.TimeCtrl
 * JD-Core Version:    0.6.2
 */