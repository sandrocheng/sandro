package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DoneMissionItem extends JceStruct
{
  public int missionid = 0;

  static
  {
    if (!DoneMissionItem.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DoneMissionItem()
  {
    setMissionid(this.missionid);
  }

  public DoneMissionItem(int paramInt)
  {
    setMissionid(paramInt);
  }

  public final String className()
  {
    return "QQPIM.DoneMissionItem";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.missionid, "missionid");
  }

  public final boolean equals(Object paramObject)
  {
    DoneMissionItem localDoneMissionItem = (DoneMissionItem)paramObject;
    return JceUtil.equals(this.missionid, localDoneMissionItem.missionid);
  }

  public final int getMissionid()
  {
    return this.missionid;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.missionid = paramJceInputStream.read(this.missionid, 0, true);
  }

  public final void setMissionid(int paramInt)
  {
    this.missionid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.missionid, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.DoneMissionItem
 * JD-Core Version:    0.6.2
 */