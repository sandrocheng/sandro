package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VirusClientInfo extends JceStruct
  implements Cloneable
{
  public int engine_version = 2;
  public int timestamp = 0;
  public int version = 0;

  static
  {
    if (!VirusClientInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public VirusClientInfo()
  {
    setTimestamp(this.timestamp);
    setVersion(this.version);
    setEngine_version(this.engine_version);
  }

  public VirusClientInfo(int paramInt1, int paramInt2, int paramInt3)
  {
    setTimestamp(paramInt1);
    setVersion(paramInt2);
    setEngine_version(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.VirusClientInfo";
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
    localJceDisplayer.display(this.timestamp, "timestamp");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.engine_version, "engine_version");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      VirusClientInfo localVirusClientInfo = (VirusClientInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.timestamp, localVirusClientInfo.timestamp);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.version, localVirusClientInfo.version);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.engine_version, localVirusClientInfo.engine_version);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.VirusClientInfo";
  }

  public final int getEngine_version()
  {
    return this.engine_version;
  }

  public final int getTimestamp()
  {
    return this.timestamp;
  }

  public final int getVersion()
  {
    return this.version;
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
    this.timestamp = paramJceInputStream.read(this.timestamp, 0, true);
    this.version = paramJceInputStream.read(this.version, 1, true);
    this.engine_version = paramJceInputStream.read(this.engine_version, 2, false);
  }

  public final void setEngine_version(int paramInt)
  {
    this.engine_version = paramInt;
  }

  public final void setTimestamp(int paramInt)
  {
    this.timestamp = paramInt;
  }

  public final void setVersion(int paramInt)
  {
    this.version = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.timestamp, 0);
    paramJceOutputStream.write(this.version, 1);
    paramJceOutputStream.write(this.engine_version, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.VirusClientInfo
 * JD-Core Version:    0.6.2
 */