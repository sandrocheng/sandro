package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class MisssionRes extends JceStruct
  implements Cloneable
{
  static Missions cache_missions;
  static ResCode cache_rescode;
  public Missions missions = null;
  public ResCode rescode = null;

  static
  {
    if (!MisssionRes.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public MisssionRes()
  {
    setRescode(this.rescode);
    setMissions(this.missions);
  }

  public MisssionRes(ResCode paramResCode, Missions paramMissions)
  {
    setRescode(paramResCode);
    setMissions(paramMissions);
  }

  public final String className()
  {
    return "QQPIM.MisssionRes";
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
    localJceDisplayer.display(this.rescode, "rescode");
    localJceDisplayer.display(this.missions, "missions");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      MisssionRes localMisssionRes = (MisssionRes)paramObject;
      boolean bool2 = JceUtil.equals(this.rescode, localMisssionRes.rescode);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.missions, localMisssionRes.missions);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.MisssionRes";
  }

  public final Missions getMissions()
  {
    return this.missions;
  }

  public final ResCode getRescode()
  {
    return this.rescode;
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
    if (cache_rescode == null)
      cache_rescode = new ResCode();
    this.rescode = ((ResCode)paramJceInputStream.read(cache_rescode, 0, true));
    if (cache_missions == null)
      cache_missions = new Missions();
    this.missions = ((Missions)paramJceInputStream.read(cache_missions, 1, true));
  }

  public final void setMissions(Missions paramMissions)
  {
    this.missions = paramMissions;
  }

  public final void setRescode(ResCode paramResCode)
  {
    this.rescode = paramResCode;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.rescode, 0);
    paramJceOutputStream.write(this.missions, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.MisssionRes
 * JD-Core Version:    0.6.2
 */