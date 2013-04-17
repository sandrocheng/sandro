package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RspHeartBeat extends JceStruct
{
  public int iTime = 0;

  static
  {
    if (!RspHeartBeat.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RspHeartBeat()
  {
    setITime(this.iTime);
  }

  public RspHeartBeat(int paramInt)
  {
    setITime(paramInt);
  }

  public String className()
  {
    return "LBSAPIProtocol.RspHeartBeat";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.iTime, "iTime");
  }

  public boolean equals(Object paramObject)
  {
    RspHeartBeat localRspHeartBeat = (RspHeartBeat)paramObject;
    return JceUtil.equals(this.iTime, localRspHeartBeat.iTime);
  }

  public int getITime()
  {
    return this.iTime;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    setITime(paramJceInputStream.read(this.iTime, 0, true));
  }

  public void setITime(int paramInt)
  {
    this.iTime = paramInt;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.iTime, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.RspHeartBeat
 * JD-Core Version:    0.6.2
 */