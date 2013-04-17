package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class uploadPacketInfoReq extends JceStruct
{
  public String checksum_type = "";
  public int checksun_len = 0;
  public long packet_pos = 0L;
  public int packet_size = 0;
  public String software_id = "";
  public int zip_type = 0;

  static
  {
    if (!uploadPacketInfoReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public uploadPacketInfoReq()
  {
    setSoftware_id(this.software_id);
    setPacket_pos(this.packet_pos);
    setPacket_size(this.packet_size);
    setChecksum_type(this.checksum_type);
    setChecksun_len(this.checksun_len);
    setZip_type(this.zip_type);
  }

  public uploadPacketInfoReq(String paramString1, long paramLong, int paramInt1, String paramString2, int paramInt2, int paramInt3)
  {
    setSoftware_id(paramString1);
    setPacket_pos(paramLong);
    setPacket_size(paramInt1);
    setChecksum_type(paramString2);
    setChecksun_len(paramInt2);
    setZip_type(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.uploadPacketInfoReq";
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
    localJceDisplayer.display(this.software_id, "software_id");
    localJceDisplayer.display(this.packet_pos, "packet_pos");
    localJceDisplayer.display(this.packet_size, "packet_size");
    localJceDisplayer.display(this.checksum_type, "checksum_type");
    localJceDisplayer.display(this.checksun_len, "checksun_len");
    localJceDisplayer.display(this.zip_type, "zip_type");
  }

  public final boolean equals(Object paramObject)
  {
    uploadPacketInfoReq localuploadPacketInfoReq = (uploadPacketInfoReq)paramObject;
    if ((JceUtil.equals(this.software_id, localuploadPacketInfoReq.software_id)) && (JceUtil.equals(this.packet_pos, localuploadPacketInfoReq.packet_pos)) && (JceUtil.equals(this.packet_size, localuploadPacketInfoReq.packet_size)) && (JceUtil.equals(this.checksum_type, localuploadPacketInfoReq.checksum_type)) && (JceUtil.equals(this.checksun_len, localuploadPacketInfoReq.checksun_len)) && (JceUtil.equals(this.zip_type, localuploadPacketInfoReq.zip_type)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getChecksum_type()
  {
    return this.checksum_type;
  }

  public final int getChecksun_len()
  {
    return this.checksun_len;
  }

  public final long getPacket_pos()
  {
    return this.packet_pos;
  }

  public final int getPacket_size()
  {
    return this.packet_size;
  }

  public final String getSoftware_id()
  {
    return this.software_id;
  }

  public final int getZip_type()
  {
    return this.zip_type;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.software_id = paramJceInputStream.readString(0, true);
    this.packet_pos = paramJceInputStream.read(this.packet_pos, 1, true);
    this.packet_size = paramJceInputStream.read(this.packet_size, 2, true);
    this.checksum_type = paramJceInputStream.readString(3, true);
    this.checksun_len = paramJceInputStream.read(this.checksun_len, 4, true);
    this.zip_type = paramJceInputStream.read(this.zip_type, 5, false);
  }

  public final void setChecksum_type(String paramString)
  {
    this.checksum_type = paramString;
  }

  public final void setChecksun_len(int paramInt)
  {
    this.checksun_len = paramInt;
  }

  public final void setPacket_pos(long paramLong)
  {
    this.packet_pos = paramLong;
  }

  public final void setPacket_size(int paramInt)
  {
    this.packet_size = paramInt;
  }

  public final void setSoftware_id(String paramString)
  {
    this.software_id = paramString;
  }

  public final void setZip_type(int paramInt)
  {
    this.zip_type = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.software_id, 0);
    paramJceOutputStream.write(this.packet_pos, 1);
    paramJceOutputStream.write(this.packet_size, 2);
    paramJceOutputStream.write(this.checksum_type, 3);
    paramJceOutputStream.write(this.checksun_len, 4);
    paramJceOutputStream.write(this.zip_type, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.uploadPacketInfoReq
 * JD-Core Version:    0.6.2
 */