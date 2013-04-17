package graystrategy;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Attachment extends JceStruct
  implements Cloneable
{
  static byte[] cache_data;
  public long createTime = 0L;
  public byte[] data = null;
  public String fileName = "";
  public byte type = 0;

  static
  {
    if (!Attachment.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Attachment()
  {
    setType(this.type);
    setData(this.data);
    setFileName(this.fileName);
    setCreateTime(this.createTime);
  }

  public Attachment(byte paramByte, byte[] paramArrayOfByte, String paramString, long paramLong)
  {
    setType(paramByte);
    setData(paramArrayOfByte);
    setFileName(paramString);
    setCreateTime(paramLong);
  }

  public final String className()
  {
    return "graystrategy.Attachment";
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
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.data, "data");
    localJceDisplayer.display(this.fileName, "fileName");
    localJceDisplayer.display(this.createTime, "createTime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Attachment localAttachment = (Attachment)paramObject;
      boolean bool2 = JceUtil.equals(this.type, localAttachment.type);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.data, localAttachment.data);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.fileName, localAttachment.fileName);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.createTime, localAttachment.createTime);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "graystrategy.Attachment";
  }

  public final long getCreateTime()
  {
    return this.createTime;
  }

  public final byte[] getData()
  {
    return this.data;
  }

  public final String getFileName()
  {
    return this.fileName;
  }

  public final byte getType()
  {
    return this.type;
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
    this.type = paramJceInputStream.read(this.type, 0, true);
    if (cache_data == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_data = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.data = paramJceInputStream.read(cache_data, 1, true);
    this.fileName = paramJceInputStream.readString(2, false);
    this.createTime = paramJceInputStream.read(this.createTime, 3, false);
  }

  public final void setCreateTime(long paramLong)
  {
    this.createTime = paramLong;
  }

  public final void setData(byte[] paramArrayOfByte)
  {
    this.data = paramArrayOfByte;
  }

  public final void setFileName(String paramString)
  {
    this.fileName = paramString;
  }

  public final void setType(byte paramByte)
  {
    this.type = paramByte;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.type, 0);
    paramJceOutputStream.write(this.data, 1);
    if (this.fileName != null)
      paramJceOutputStream.write(this.fileName, 2);
    paramJceOutputStream.write(this.createTime, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     graystrategy.Attachment
 * JD-Core Version:    0.6.2
 */