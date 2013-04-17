package com.qq.jce.wup;

import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceUtil;
import java.nio.ByteBuffer;
import java.util.HashMap;
import puw.e;

public class UniPacket extends UniAttribute
{
  static HashMap<String, byte[]> b = null;
  static HashMap<String, HashMap<String, byte[]>> c = null;
  protected e a = new e();
  private int j = 0;

  public UniPacket()
  {
    this.a.a = 2;
  }

  public UniPacket(boolean paramBoolean)
  {
    if (paramBoolean)
      useVersion3();
    while (true)
    {
      return;
      this.a.a = 2;
    }
  }

  public byte[] createOldRespEncode()
  {
    JceOutputStream localJceOutputStream1 = new JceOutputStream(0);
    localJceOutputStream1.setServerEncoding(this.h);
    localJceOutputStream1.write(this.f, 0);
    byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream1.getByteBuffer());
    JceOutputStream localJceOutputStream2 = new JceOutputStream(0);
    localJceOutputStream2.setServerEncoding(this.h);
    localJceOutputStream2.write(this.a.a, 1);
    localJceOutputStream2.write(this.a.b, 2);
    localJceOutputStream2.write(this.a.d, 3);
    localJceOutputStream2.write(this.a.c, 4);
    localJceOutputStream2.write(this.j, 5);
    localJceOutputStream2.write(arrayOfByte, 6);
    localJceOutputStream2.write(this.a.j, 7);
    return JceUtil.getJceBufArray(localJceOutputStream2.getByteBuffer());
  }

  public UniPacket createResponse()
  {
    UniPacket localUniPacket = new UniPacket();
    localUniPacket.setRequestId(getRequestId());
    localUniPacket.setServantName(getServantName());
    localUniPacket.setFuncName(getFuncName());
    localUniPacket.setEncodeName(this.h);
    return localUniPacket;
  }

  public void decode(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length < 4)
      throw new IllegalArgumentException("decode package must include size head");
    try
    {
      JceInputStream localJceInputStream1 = new JceInputStream(paramArrayOfByte, 4);
      localJceInputStream1.setServerEncoding(this.h);
      readFrom(localJceInputStream1);
      if (this.a.a == 3)
      {
        JceInputStream localJceInputStream2 = new JceInputStream(this.a.g);
        localJceInputStream2.setServerEncoding(this.h);
        if (b == null)
        {
          b = new HashMap();
          b.put("", new byte[0]);
        }
        this.d = localJceInputStream2.readMap(b, 0, false);
      }
      else
      {
        JceInputStream localJceInputStream3 = new JceInputStream(this.a.g);
        localJceInputStream3.setServerEncoding(this.h);
        if (c == null)
        {
          c = new HashMap();
          HashMap localHashMap = new HashMap();
          localHashMap.put("", new byte[0]);
          c.put("", localHashMap);
        }
        this.f = localJceInputStream3.readMap(c, 0, false);
        this.g = new HashMap();
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
      localJceInputStream1.setServerEncoding(this.h);
      readFrom(localJceInputStream1);
      JceInputStream localJceInputStream2 = new JceInputStream(this.a.g);
      localJceInputStream2.setServerEncoding(this.h);
      if (c == null)
      {
        c = new HashMap();
        HashMap localHashMap = new HashMap();
        localHashMap.put("", new byte[0]);
        c.put("", localHashMap);
      }
      this.f = localJceInputStream2.readMap(c, 0, false);
      this.g = new HashMap();
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
      localJceInputStream1.setServerEncoding(this.h);
      readFrom(localJceInputStream1);
      JceInputStream localJceInputStream2 = new JceInputStream(this.a.g);
      localJceInputStream2.setServerEncoding(this.h);
      if (b == null)
      {
        b = new HashMap();
        b.put("", new byte[0]);
      }
      this.d = localJceInputStream2.readMap(b, 0, false);
      return;
    }
    catch (Exception localException)
    {
      throw new RuntimeException(localException);
    }
  }

  public void display(StringBuilder paramStringBuilder, int paramInt)
  {
    this.a.display(paramStringBuilder, paramInt);
  }

  public byte[] encode()
  {
    if (this.a.a == 2)
    {
      if (this.a.e.equals(""))
        throw new IllegalArgumentException("servantName can not is null");
      if (this.a.f.equals(""))
        throw new IllegalArgumentException("funcName can not is null");
    }
    else
    {
      if (this.a.e == null)
        this.a.e = "";
      if (this.a.f == null)
        this.a.f = "";
    }
    JceOutputStream localJceOutputStream1 = new JceOutputStream(0);
    localJceOutputStream1.setServerEncoding(this.h);
    if (this.a.a == 2)
      localJceOutputStream1.write(this.f, 0);
    while (true)
    {
      this.a.g = JceUtil.getJceBufArray(localJceOutputStream1.getByteBuffer());
      JceOutputStream localJceOutputStream2 = new JceOutputStream(0);
      localJceOutputStream2.setServerEncoding(this.h);
      writeTo(localJceOutputStream2);
      byte[] arrayOfByte = JceUtil.getJceBufArray(localJceOutputStream2.getByteBuffer());
      int i = arrayOfByte.length;
      ByteBuffer localByteBuffer = ByteBuffer.allocate(i + 4);
      localByteBuffer.putInt(i + 4).put(arrayOfByte).flip();
      return localByteBuffer.array();
      localJceOutputStream1.write(this.d, 0);
    }
  }

  public String getFuncName()
  {
    return this.a.f;
  }

  public int getOldRespIret()
  {
    return this.j;
  }

  public int getRequestId()
  {
    return this.a.d;
  }

  public String getServantName()
  {
    return this.a.e;
  }

  public <T> void put(String paramString, T paramT)
  {
    if (paramString.startsWith("."))
      throw new IllegalArgumentException("put name can not startwith . , now is " + paramString);
    super.put(paramString, paramT);
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    this.a.readFrom(paramJceInputStream);
  }

  public void setFuncName(String paramString)
  {
    this.a.f = paramString;
  }

  public void setOldRespIret(int paramInt)
  {
    this.j = paramInt;
  }

  public void setRequestId(int paramInt)
  {
    this.a.d = paramInt;
  }

  public void setServantName(String paramString)
  {
    this.a.e = paramString;
  }

  public void useVersion3()
  {
    super.useVersion3();
    this.a.a = 3;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    this.a.writeTo(paramJceOutputStream);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.qq.jce.wup.UniPacket
 * JD-Core Version:    0.6.2
 */