package com.qq.taf;

import com.qq.jce.wup.WupHexUtil;
import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.io.PrintStream;
import java.util.HashMap;
import java.util.Map;

public final class RequestPacket extends JceStruct
{
  static Map<String, String> cache_context;
  static byte[] cache_sBuffer;
  public byte cPacketType = 0;
  public Map<String, String> context;
  public int iMessageType = 0;
  public int iRequestId = 0;
  public int iTimeout = 0;
  public short iVersion = 0;
  public byte[] sBuffer;
  public String sFuncName = null;
  public String sServantName = null;
  public Map<String, String> status;

  static
  {
    if (!RequestPacket.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      cache_sBuffer = null;
      cache_context = null;
      return;
    }
  }

  public RequestPacket()
  {
  }

  public RequestPacket(short paramShort, byte paramByte, int paramInt1, int paramInt2, String paramString1, String paramString2, byte[] paramArrayOfByte, int paramInt3, Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    this.iVersion = paramShort;
    this.cPacketType = paramByte;
    this.iMessageType = paramInt1;
    this.iRequestId = paramInt2;
    this.sServantName = paramString1;
    this.sFuncName = paramString2;
    this.sBuffer = paramArrayOfByte;
    this.iTimeout = paramInt3;
    this.context = paramMap1;
    this.status = paramMap2;
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
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.iVersion, "iVersion");
    localJceDisplayer.display(this.cPacketType, "cPacketType");
    localJceDisplayer.display(this.iMessageType, "iMessageType");
    localJceDisplayer.display(this.iRequestId, "iRequestId");
    localJceDisplayer.display(this.sServantName, "sServantName");
    localJceDisplayer.display(this.sFuncName, "sFuncName");
    localJceDisplayer.display(this.sBuffer, "sBuffer");
    localJceDisplayer.display(this.iTimeout, "iTimeout");
    localJceDisplayer.display(this.context, "context");
    localJceDisplayer.display(this.status, "status");
  }

  public boolean equals(Object paramObject)
  {
    int i = 1;
    RequestPacket localRequestPacket = (RequestPacket)paramObject;
    if ((JceUtil.equals(i, localRequestPacket.iVersion)) && (JceUtil.equals(i, localRequestPacket.cPacketType)) && (JceUtil.equals(i, localRequestPacket.iMessageType)) && (JceUtil.equals(i, localRequestPacket.iRequestId)) && (JceUtil.equals(Integer.valueOf(i), localRequestPacket.sServantName)) && (JceUtil.equals(Integer.valueOf(i), localRequestPacket.sFuncName)) && (JceUtil.equals(Integer.valueOf(i), localRequestPacket.sBuffer)) && (JceUtil.equals(i, localRequestPacket.iTimeout)) && (JceUtil.equals(Integer.valueOf(i), localRequestPacket.context)) && (JceUtil.equals(Integer.valueOf(i), localRequestPacket.status)));
    while (true)
    {
      return i;
      int j = 0;
    }
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    try
    {
      this.iVersion = paramJceInputStream.read(this.iVersion, 1, true);
      this.cPacketType = paramJceInputStream.read(this.cPacketType, 2, true);
      this.iMessageType = paramJceInputStream.read(this.iMessageType, 3, true);
      this.iRequestId = paramJceInputStream.read(this.iRequestId, 4, true);
      this.sServantName = paramJceInputStream.readString(5, true);
      this.sFuncName = paramJceInputStream.readString(6, true);
      if (cache_sBuffer == null)
        cache_sBuffer = new byte[] { 0 };
      this.sBuffer = ((byte[])paramJceInputStream.read(cache_sBuffer, 7, true));
      this.iTimeout = paramJceInputStream.read(this.iTimeout, 8, true);
      if (cache_context == null)
      {
        cache_context = new HashMap();
        cache_context.put("", "");
      }
      this.context = ((Map)paramJceInputStream.read(cache_context, 9, true));
      if (cache_context == null)
      {
        cache_context = new HashMap();
        cache_context.put("", "");
      }
      this.status = ((Map)paramJceInputStream.read(cache_context, 10, true));
      return;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
      System.out.println("RequestPacket decode error " + WupHexUtil.bytes2HexStr(this.sBuffer));
      throw new RuntimeException(localException);
    }
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.iVersion, 1);
    paramJceOutputStream.write(this.cPacketType, 2);
    paramJceOutputStream.write(this.iMessageType, 3);
    paramJceOutputStream.write(this.iRequestId, 4);
    paramJceOutputStream.write(this.sServantName, 5);
    paramJceOutputStream.write(this.sFuncName, 6);
    paramJceOutputStream.write(this.sBuffer, 7);
    paramJceOutputStream.write(this.iTimeout, 8);
    paramJceOutputStream.write(this.context, 9);
    paramJceOutputStream.write(this.status, 10);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.taf.RequestPacket
 * JD-Core Version:    0.6.2
 */