package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Status extends JceStruct
{
  static byte[] cache_extmsg;
  public short aid = 0;
  public byte[] extmsg = null;
  public short result = 0;

  static
  {
    if (!Status.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Status()
  {
    setAid(this.aid);
    setResult(this.result);
    setExtmsg(this.extmsg);
  }

  public Status(short paramShort1, short paramShort2, byte[] paramArrayOfByte)
  {
    setAid(paramShort1);
    setResult(paramShort2);
    setExtmsg(paramArrayOfByte);
  }

  public final String className()
  {
    return "WUPSYNC.Status";
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
    localJceDisplayer.display(this.aid, "aid");
    localJceDisplayer.display(this.result, "result");
    localJceDisplayer.display(this.extmsg, "extmsg");
  }

  public final boolean equals(Object paramObject)
  {
    Status localStatus = (Status)paramObject;
    if ((JceUtil.equals(this.aid, localStatus.aid)) && (JceUtil.equals(this.result, localStatus.result)) && (JceUtil.equals(this.extmsg, localStatus.extmsg)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final short getAid()
  {
    return this.aid;
  }

  public final byte[] getExtmsg()
  {
    return this.extmsg;
  }

  public final short getResult()
  {
    return this.result;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.aid = paramJceInputStream.read(this.aid, 0, true);
    this.result = paramJceInputStream.read(this.result, 1, true);
    if (cache_extmsg == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_extmsg = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.extmsg = paramJceInputStream.read(cache_extmsg, 2, false);
  }

  public final void setAid(short paramShort)
  {
    this.aid = paramShort;
  }

  public final void setExtmsg(byte[] paramArrayOfByte)
  {
    this.extmsg = paramArrayOfByte;
  }

  public final void setResult(short paramShort)
  {
    this.result = paramShort;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.aid, 0);
    paramJceOutputStream.write(this.result, 1);
    if (this.extmsg != null)
      paramJceOutputStream.write(this.extmsg, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.Status
 * JD-Core Version:    0.6.2
 */