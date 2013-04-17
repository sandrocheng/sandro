package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class packetPosSizeChecksum extends JceStruct
{
  static byte[] cache_checksum;
  public byte[] checksum = null;
  public long packet_pos = 0L;
  public int packet_size = 0;

  static
  {
    if (!packetPosSizeChecksum.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public packetPosSizeChecksum()
  {
    setPacket_pos(this.packet_pos);
    setPacket_size(this.packet_size);
    setChecksum(this.checksum);
  }

  public packetPosSizeChecksum(long paramLong, int paramInt, byte[] paramArrayOfByte)
  {
    setPacket_pos(paramLong);
    setPacket_size(paramInt);
    setChecksum(paramArrayOfByte);
  }

  public final String className()
  {
    return "QQPIM.packetPosSizeChecksum";
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
    localJceDisplayer.display(this.checksum, "checksum");
  }

  public final boolean equals(Object paramObject)
  {
    packetPosSizeChecksum localpacketPosSizeChecksum = (packetPosSizeChecksum)paramObject;
    if ((JceUtil.equals(this.packet_pos, localpacketPosSizeChecksum.packet_pos)) && (JceUtil.equals(this.packet_size, localpacketPosSizeChecksum.packet_size)) && (JceUtil.equals(this.checksum, localpacketPosSizeChecksum.checksum)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final byte[] getChecksum()
  {
    return this.checksum;
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
    if (cache_checksum == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_checksum = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.checksum = paramJceInputStream.read(cache_checksum, 2, true);
  }

  public final void setChecksum(byte[] paramArrayOfByte)
  {
    this.checksum = paramArrayOfByte;
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
    paramJceOutputStream.write(this.checksum, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.packetPosSizeChecksum
 * JD-Core Version:    0.6.2
 */