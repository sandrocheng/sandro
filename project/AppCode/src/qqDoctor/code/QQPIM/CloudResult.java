package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CloudResult extends JceStruct
  implements Cloneable
{
  static int cache_safeType;
  public long hashKey = 0L;
  public int safeType = 0;

  static
  {
    if (!CloudResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CloudResult()
  {
    setHashKey(this.hashKey);
    setSafeType(this.safeType);
  }

  public CloudResult(long paramLong, int paramInt)
  {
    setHashKey(paramLong);
    setSafeType(paramInt);
  }

  public final String className()
  {
    return "QQPIM.CloudResult";
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
    localJceDisplayer.display(this.safeType, "safeType");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CloudResult localCloudResult = (CloudResult)paramObject;
      boolean bool2 = JceUtil.equals(this.hashKey, localCloudResult.hashKey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.safeType, localCloudResult.safeType);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CloudResult";
  }

  public final long getHashKey()
  {
    return this.hashKey;
  }

  public final int getSafeType()
  {
    return this.safeType;
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
    this.safeType = paramJceInputStream.read(this.safeType, 1, true);
  }

  public final void setHashKey(long paramLong)
  {
    this.hashKey = paramLong;
  }

  public final void setSafeType(int paramInt)
  {
    this.safeType = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.hashKey, 0);
    paramJceOutputStream.write(this.safeType, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CloudResult
 * JD-Core Version:    0.6.2
 */