package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class InitResp extends JceStruct
{
  static int cache_result;
  static int cache_syncType;
  public short maxCount = 0;
  public int maxSize = 0;
  public int result = 0;
  public byte resyncPhoto = 0;
  public String sid = "";
  public int syncType = 0;

  static
  {
    if (!InitResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public InitResp()
  {
    setResult(this.result);
    setSid(this.sid);
    setSyncType(this.syncType);
    setMaxSize(this.maxSize);
    setMaxCount(this.maxCount);
    setResyncPhoto(this.resyncPhoto);
  }

  public InitResp(int paramInt1, String paramString, int paramInt2, int paramInt3, short paramShort, byte paramByte)
  {
    setResult(paramInt1);
    setSid(paramString);
    setSyncType(paramInt2);
    setMaxSize(paramInt3);
    setMaxCount(paramShort);
    setResyncPhoto(paramByte);
  }

  public final String className()
  {
    return "WUPSYNC.InitResp";
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
    localJceDisplayer.display(this.result, "result");
    localJceDisplayer.display(this.sid, "sid");
    localJceDisplayer.display(this.syncType, "syncType");
    localJceDisplayer.display(this.maxSize, "maxSize");
    localJceDisplayer.display(this.maxCount, "maxCount");
    localJceDisplayer.display(this.resyncPhoto, "resyncPhoto");
  }

  public final boolean equals(Object paramObject)
  {
    InitResp localInitResp = (InitResp)paramObject;
    if ((JceUtil.equals(this.result, localInitResp.result)) && (JceUtil.equals(this.sid, localInitResp.sid)) && (JceUtil.equals(this.syncType, localInitResp.syncType)) && (JceUtil.equals(this.maxSize, localInitResp.maxSize)) && (JceUtil.equals(this.maxCount, localInitResp.maxCount)) && (JceUtil.equals(this.resyncPhoto, localInitResp.resyncPhoto)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final short getMaxCount()
  {
    return this.maxCount;
  }

  public final int getMaxSize()
  {
    return this.maxSize;
  }

  public final int getResult()
  {
    return this.result;
  }

  public final byte getResyncPhoto()
  {
    return this.resyncPhoto;
  }

  public final String getSid()
  {
    return this.sid;
  }

  public final int getSyncType()
  {
    return this.syncType;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.result = paramJceInputStream.read(this.result, 0, true);
    this.sid = paramJceInputStream.readString(1, true);
    this.syncType = paramJceInputStream.read(this.syncType, 2, true);
    this.maxSize = paramJceInputStream.read(this.maxSize, 3, true);
    this.maxCount = paramJceInputStream.read(this.maxCount, 4, true);
    this.resyncPhoto = paramJceInputStream.read(this.resyncPhoto, 5, true);
  }

  public final void setMaxCount(short paramShort)
  {
    this.maxCount = paramShort;
  }

  public final void setMaxSize(int paramInt)
  {
    this.maxSize = paramInt;
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void setResyncPhoto(byte paramByte)
  {
    this.resyncPhoto = paramByte;
  }

  public final void setSid(String paramString)
  {
    this.sid = paramString;
  }

  public final void setSyncType(int paramInt)
  {
    this.syncType = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
    paramJceOutputStream.write(this.sid, 1);
    paramJceOutputStream.write(this.syncType, 2);
    paramJceOutputStream.write(this.maxSize, 3);
    paramJceOutputStream.write(this.maxCount, 4);
    paramJceOutputStream.write(this.resyncPhoto, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.InitResp
 * JD-Core Version:    0.6.2
 */