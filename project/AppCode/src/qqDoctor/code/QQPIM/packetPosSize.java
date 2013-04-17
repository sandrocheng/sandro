package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class packetPosSize extends JceStruct
{
  public long packet_pos = 0L;
  public int packet_size = 0;

  static
  {
    if (!packetPosSize.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public packetPosSize()
  {
    setPacket_pos(this.packet_pos);
    setPacket_size(this.packet_size);
  }

  public packetPosSize(long paramLong, int paramInt)
  {
    setPacket_pos(paramLong);
    setPacket_size(paramInt);
  }

  public final String className()
  {
    return "QQPIM.packetPosSize";
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
    localJceDisplayer.display(this.packet_pos, "packet_pos");
    localJceDisplayer.display(this.packet_size, "packet_size");
  }

  public final boolean equals(Object paramObject)
  {
    packetPosSize localpacketPosSize = (packetPosSize)paramObject;
    if ((JceUtil.equals(this.packet_pos, localpacketPosSize.packet_pos)) && (JceUtil.equals(this.packet_size, localpacketPosSize.packet_size)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final long getPacket_pos()
  {
    return this.packet_pos;
  }

  public final int getPacket_size()
  {
    return this.packet_size;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.packet_pos = paramJceInputStream.read(this.packet_pos, 0, true);
    this.packet_size = paramJceInputStream.read(this.packet_size, 1, true);
  }

  public final void setPacket_pos(long paramLong)
  {
    this.packet_pos = paramLong;
  }

  public final void setPacket_size(int paramInt)
  {
    this.packet_size = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.packet_pos, 0);
    paramJceOutputStream.write(this.packet_size, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.packetPosSize
 * JD-Core Version:    0.6.2
 */