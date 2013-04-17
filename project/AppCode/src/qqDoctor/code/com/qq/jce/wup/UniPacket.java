package com.qq.jce.wup;

import com.qq.taf.RequestPacket;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceUtil;
import java.nio.ByteBuffer;
import java.util.HashMap;

public class UniPacket extends UniAttribute
{
  public static final int UniPacketHeadSize = 4;
  static HashMap<String, HashMap<String, byte[]>> cache__tempdata = null;
  static HashMap<String, byte[]> newCache__tempdata = null;
  protected RequestPacket _package = new RequestPacket();
  private int oldRespIret = 0;

  public UniPacket()
  {
    this._package.iVersion = 2;
  }

  public UniPacket(boolean paramBoolean)
  {
    if (paramBoolean)
      useVersion3();
    while (true)
    {
      return;
      this._package.iVersion = 2;
    }
  }

  public byte[] createOldRespEncode()
  {
    JceOutputStream localJceOutputStream1 = new JceOutputStream(0);
    localJceOutputStream1.setServerEncoding(this.encodeName);
    localJceOutputStream1.write(this._data, 0);
    byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream1.getByteBuffer());
    JceOutputStream localJceOutputStream2 = new JceOutputStream(0);
    localJceOutputStream2.setServerEncoding(this.encodeName);
    localJceOutputStream2.write(this._package.iVersion, 1);
    localJceOutputStream2.write(this._package.cPacketType, 2);
    localJceOutputStream2.write(this._package.iRequestId, 3);
    localJceOutputStream2.write(this._package.iMessageType, 4);
    localJceOutputStream2.write(this.oldRespIret, 5);
    localJceOutputStream2.write(arrayOfByte, 6);
    localJceOutputStream2.write(this._package.status, 7);
    return JceUtil.getJceBufArray(localJceOutputStream2.getByteBuffer());
  }

  public UniPacket createResponse()
  {
    UniPacket localUniPacket = new UniPacket();
    localUniPacket.setRequestId(getRequestId());
    localUniPacket.setServantName(getServantName());
    localUniPacket.setFuncName(getFuncName());
    localUniPacket.setEncodeName(this.encodeName);
    return localUniPacket;
  }

  public void decode(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 4)
      throw new IllegalArgumentException("decode package must include size head");
    try
    {
      JceInputStream localJceInputStream1 = new JceInputStream(paramArrayOfByte, 4);
      localJceInputStream1.setServerEncoding(this.encodeName);
      readFrom(localJceInputStream1);
      if (this._package.iVersion == 3)
      {
        JceInputStream localJceInputStream2 = new JceInputStream(this._package.sBuffer);
        localJceInputStream2.setServerEncoding(this.encodeName);
        if (newCache__tempdata == null)
        {
          newCache__tempdata = new HashMap();
          newCache__tempdata.put("", new byte[0]);
        }
        this._newData = localJceInputStream2.readMap(newCache__tempdata, 0, false);
      }
      else
      {
        JceInputStream localJceInputStream3 = new JceInputStream(this._package.sBuffer);
        localJceInputStream3.setServerEncoding(this.encodeName);
        if (cache__tempdata == null)
        {
          cache__tempdata = new HashMap();
          HashMap localHashMap = new HashMap();
          localHashMap.put("", new byte[0]);
          cache__tempdata.put("", localHashMap);
        }
        this._data = localJceInputStream3.readMap(cache__tempdata, 0, false);
        this.cachedClassName = new HashMap();
      }
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }

  public void decodeVersion2(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 4)
      throw new IllegalArgumentException("decode package must include size head");
    try
    {
      JceInputStream localJceInputStream1 = new JceInputStream(paramArrayOfByte, 4);
      localJceInputStream1.setServerEncoding(this.encodeName);
      readFrom(localJceInputStream1);
      JceInputStream localJceInputStream2 = new JceInputStream(this._package.sBuffer);
      localJceInputStream2.setServerEncoding(this.encodeName);
      if (cache__tempdata == null)
      {
        cache__tempdata = new HashMap();
        HashMap localHashMap = new HashMap();
        localHashMap.put("", new byte[0]);
        cache__tempdata.put("", localHashMap);
      }
      this._data = localJceInputStream2.readMap(cache__tempdata, 0, false);
      this.cachedClassName = new HashMap();
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }

  public void decodeVersion3(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 4)
      throw new IllegalArgumentException("decode package must include size head");
    try
    {
      JceInputStream localJceInputStream1 = new JceInputStream(paramArrayOfByte, 4);
      localJceInputStream1.setServerEncoding(this.encodeName);
      readFrom(localJceInputStream1);
      JceInputStream localJceInputStream2 = new JceInputStream(this._package.sBuffer);
      localJceInputStream2.setServerEncoding(this.encodeName);
      if (newCache__tempdata == null)
      {
        newCache__tempdata = new HashMap();
        newCache__tempdata.put("", new byte[0]);
      }
      this._newData = localJceInputStream2.readMap(newCache__tempdata, 0, false);
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }

  public void display(StringBuilder paramStringBuilder, int paramInt)
  {
    this._package.display(paramStringBuilder, paramInt);
  }

  public byte[] encode()
  {
    if (this._package.iVersion == 2)
    {
      if (this._package.sServantName.equals(""))
        throw new IllegalArgumentException("servantName can not is null");
      if (this._package.sFuncName.equals(""))
        throw new IllegalArgumentException("funcName can not is null");
    }
    else
    {
      if (this._package.sServantName == null)
        this._package.sServantName = "";
      if (this._package.sFuncName == null)
        this._package.sFuncName = "";
    }
    JceOutputStream localJceOutputStream1 = new JceOutputStream(0);
    localJceOutputStream1.setServerEncoding(this.encodeName);
    if (this._package.iVersion == 2)
      localJceOutputStream1.write(this._data, 0);
    while (true)
    {
      this._package.sBuffer = JceUtil.getJceBufArray(localJceOutputStream1.getByteBuffer());
      JceOutputStream localJceOutputStream2 = new JceOutputStream(0);
      localJceOutputStream2.setServerEncoding(this.encodeName);
      writeTo(localJceOutputStream2);
      byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream2.getByteBuffer());
      int i = arrayOfByte.length;
      ByteBuffer localByteBuffer = ByteBuffer.allocate(i + 4);
      localByteBuffer.putInt(i + 4).put(arrayOfByte).flip();
      return localByteBuffer.array();
      localJceOutputStream1.write(this._newData, 0);
    }
  }

  public String getFuncName()
  {
    return this._package.sFuncName;
  }

  public int getOldRespIret()
  {
    return this.oldRespIret;
  }

  public int getRequestId()
  {
    return this._package.iRequestId;
  }

  public String getServantName()
  {
    return this._package.sServantName;
  }

  public <T> void put(String paramString, T paramT)
  {
    if (paramString.startsWith("."))
      throw new IllegalArgumentException("put name can not startwith . , now is " + paramString);
    super.put(paramString, paramT);
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    this._package.readFrom(paramJceInputStream);
  }

  public void setFuncName(String paramString)
  {
    this._package.sFuncName = paramString;
  }

  public void setOldRespIret(int paramInt)
  {
    this.oldRespIret = paramInt;
  }

  public void setRequestId(int paramInt)
  {
    this._package.iRequestId = paramInt;
  }

  public void setServantName(String paramString)
  {
    this._package.sServantName = paramString;
  }

  public void useVersion3()
  {
    super.useVersion3();
    this._package.iVersion = 3;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    this._package.writeTo(paramJceOutputStream);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.qq.jce.wup.UniPacket
 * JD-Core Version:    0.6.2
 */