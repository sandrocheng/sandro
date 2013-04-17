package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudFeature extends JceStruct
  implements Cloneable
{
  public long hashKey = 0L;
  public boolean isRom = false;

  static
  {
    if (!CloudFeature.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CloudFeature()
  {
    setHashKey(this.hashKey);
    setIsRom(this.isRom);
  }

  public CloudFeature(long paramLong, boolean paramBoolean)
  {
    setHashKey(paramLong);
    setIsRom(paramBoolean);
  }

  public final String className()
  {
    return "QQPIM.CloudFeature";
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
    localJceDisplayer.display(this.hashKey, "hashKey");
    localJceDisplayer.display(this.isRom, "isRom");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CloudFeature localCloudFeature = (CloudFeature)paramObject;
      boolean bool2 = JceUtil.equals(this.hashKey, localCloudFeature.hashKey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.isRom, localCloudFeature.isRom);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CloudFeature";
  }

  public final long getHashKey()
  {
    return this.hashKey;
  }

  public final boolean getIsRom()
  {
    return this.isRom;
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
    this.hashKey = paramJceInputStream.read(this.hashKey, 0, true);
    this.isRom = paramJceInputStream.read(this.isRom, 1, false);
  }

  public final void setHashKey(long paramLong)
  {
    this.hashKey = paramLong;
  }

  public final void setIsRom(boolean paramBoolean)
  {
    this.isRom = paramBoolean;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.hashKey, 0);
    paramJceOutputStream.write(this.isRom, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CloudFeature
 * JD-Core Version:    0.6.2
 */