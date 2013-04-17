package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PhoneInfoItem extends JceStruct
  implements Cloneable
{
  static byte[] cache_info;
  public byte[] info = null;
  public int infoid = 0;

  static
  {
    if (!PhoneInfoItem.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PhoneInfoItem()
  {
    setInfoid(this.infoid);
    setInfo(this.info);
  }

  public PhoneInfoItem(int paramInt, byte[] paramArrayOfByte)
  {
    setInfoid(paramInt);
    setInfo(paramArrayOfByte);
  }

  public final String className()
  {
    return "QQPIM.PhoneInfoItem";
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
    localJceDisplayer.display(this.infoid, "infoid");
    localJceDisplayer.display(this.info, "info");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      PhoneInfoItem localPhoneInfoItem = (PhoneInfoItem)paramObject;
      boolean bool2 = JceUtil.equals(this.infoid, localPhoneInfoItem.infoid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.info, localPhoneInfoItem.info);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.PhoneInfoItem";
  }

  public final byte[] getInfo()
  {
    return this.info;
  }

  public final int getInfoid()
  {
    return this.infoid;
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
    this.infoid = paramJceInputStream.read(this.infoid, 0, true);
    if (cache_info == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_info = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.info = paramJceInputStream.read(cache_info, 1, true);
  }

  public final void setInfo(byte[] paramArrayOfByte)
  {
    this.info = paramArrayOfByte;
  }

  public final void setInfoid(int paramInt)
  {
    this.infoid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.infoid, 0);
    paramJceOutputStream.write(this.info, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PhoneInfoItem
 * JD-Core Version:    0.6.2
 */