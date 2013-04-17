package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stAntiTheftKey extends JceStruct
  implements Cloneable
{
  public long ulkey = 0L;

  static
  {
    if (!stAntiTheftKey.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stAntiTheftKey()
  {
    setUlkey(this.ulkey);
  }

  public stAntiTheftKey(long paramLong)
  {
    setUlkey(paramLong);
  }

  public final String className()
  {
    return "QQPIM.stAntiTheftKey";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.ulkey, "ulkey");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    stAntiTheftKey localstAntiTheftKey;
    for (boolean bool = false; ; bool = JceUtil.equals(this.ulkey, localstAntiTheftKey.ulkey))
    {
      return bool;
      localstAntiTheftKey = (stAntiTheftKey)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stAntiTheftKey";
  }

  public final long getUlkey()
  {
    return this.ulkey;
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
    this.ulkey = paramJceInputStream.read(this.ulkey, 0, true);
  }

  public final void setUlkey(long paramLong)
  {
    this.ulkey = paramLong;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.ulkey, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stAntiTheftKey
 * JD-Core Version:    0.6.2
 */