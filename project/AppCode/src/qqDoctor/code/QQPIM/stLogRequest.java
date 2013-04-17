package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stLogRequest extends JceStruct
  implements Cloneable
{
  public String imei = "";
  public long uin = 0L;

  static
  {
    if (!stLogRequest.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stLogRequest()
  {
    setUin(this.uin);
    setImei(this.imei);
  }

  public stLogRequest(long paramLong, String paramString)
  {
    setUin(paramLong);
    setImei(paramString);
  }

  public final String className()
  {
    return "QQPIM.stLogRequest";
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
    localJceDisplayer.display(this.uin, "uin");
    localJceDisplayer.display(this.imei, "imei");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      stLogRequest localstLogRequest = (stLogRequest)paramObject;
      boolean bool2 = JceUtil.equals(this.uin, localstLogRequest.uin);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.imei, localstLogRequest.imei);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stLogRequest";
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final long getUin()
  {
    return this.uin;
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
    this.uin = paramJceInputStream.read(this.uin, 0, true);
    this.imei = paramJceInputStream.readString(1, false);
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setUin(long paramLong)
  {
    this.uin = paramLong;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uin, 0);
    if (this.imei != null)
      paramJceOutputStream.write(this.imei, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stLogRequest
 * JD-Core Version:    0.6.2
 */