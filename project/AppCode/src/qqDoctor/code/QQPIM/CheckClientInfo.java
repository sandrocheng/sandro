package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CheckClientInfo extends JceStruct
  implements Cloneable
{
  static int cache_connectType;
  public int connectType = 0;
  public int engineVersion = 0;
  public String guid = "";
  public String imei = "";
  public String imsi = "";
  public boolean isRoot = false;

  static
  {
    if (!CheckClientInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CheckClientInfo()
  {
    setEngineVersion(this.engineVersion);
    setGuid(this.guid);
    setImei(this.imei);
    setImsi(this.imsi);
    setConnectType(this.connectType);
    setIsRoot(this.isRoot);
  }

  public CheckClientInfo(int paramInt1, String paramString1, String paramString2, String paramString3, int paramInt2, boolean paramBoolean)
  {
    setEngineVersion(paramInt1);
    setGuid(paramString1);
    setImei(paramString2);
    setImsi(paramString3);
    setConnectType(paramInt2);
    setIsRoot(paramBoolean);
  }

  public final String className()
  {
    return "QQPIM.CheckClientInfo";
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
    localJceDisplayer.display(this.engineVersion, "engineVersion");
    localJceDisplayer.display(this.guid, "guid");
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.imsi, "imsi");
    localJceDisplayer.display(this.connectType, "connectType");
    localJceDisplayer.display(this.isRoot, "isRoot");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CheckClientInfo localCheckClientInfo = (CheckClientInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.engineVersion, localCheckClientInfo.engineVersion);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.guid, localCheckClientInfo.guid);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.imei, localCheckClientInfo.imei);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.imsi, localCheckClientInfo.imsi);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.connectType, localCheckClientInfo.connectType);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.isRoot, localCheckClientInfo.isRoot);
                bool1 = false;
                if (bool7)
                  bool1 = true;
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CheckClientInfo";
  }

  public final int getConnectType()
  {
    return this.connectType;
  }

  public final int getEngineVersion()
  {
    return this.engineVersion;
  }

  public final String getGuid()
  {
    return this.guid;
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final String getImsi()
  {
    return this.imsi;
  }

  public final boolean getIsRoot()
  {
    return this.isRoot;
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
    this.engineVersion = paramJceInputStream.read(this.engineVersion, 0, true);
    this.guid = paramJceInputStream.readString(1, true);
    this.imei = paramJceInputStream.readString(2, false);
    this.imsi = paramJceInputStream.readString(3, false);
    this.connectType = paramJceInputStream.read(this.connectType, 4, false);
    this.isRoot = paramJceInputStream.read(this.isRoot, 5, false);
  }

  public final void setConnectType(int paramInt)
  {
    this.connectType = paramInt;
  }

  public final void setEngineVersion(int paramInt)
  {
    this.engineVersion = paramInt;
  }

  public final void setGuid(String paramString)
  {
    this.guid = paramString;
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setImsi(String paramString)
  {
    this.imsi = paramString;
  }

  public final void setIsRoot(boolean paramBoolean)
  {
    this.isRoot = paramBoolean;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.engineVersion, 0);
    paramJceOutputStream.write(this.guid, 1);
    if (this.imei != null)
      paramJceOutputStream.write(this.imei, 2);
    if (this.imsi != null)
      paramJceOutputStream.write(this.imsi, 3);
    paramJceOutputStream.write(this.connectType, 4);
    paramJceOutputStream.write(this.isRoot, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CheckClientInfo
 * JD-Core Version:    0.6.2
 */