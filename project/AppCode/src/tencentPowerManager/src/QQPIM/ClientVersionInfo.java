package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ClientVersionInfo extends JceStruct
  implements Cloneable
{
  public String checksum = "";
  public int id = 0;
  public String info = "";
  public int version = 0;

  static
  {
    if (!ClientVersionInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ClientVersionInfo()
  {
    setId(this.id);
    setVersion(this.version);
    setInfo(this.info);
    setChecksum(this.checksum);
  }

  public ClientVersionInfo(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    setId(paramInt1);
    setVersion(paramInt2);
    setInfo(paramString1);
    setChecksum(paramString2);
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
    localJceDisplayer.display(this.id, "id");
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.info, "info");
    localJceDisplayer.display(this.checksum, "checksum");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ClientVersionInfo localClientVersionInfo = (ClientVersionInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.id, localClientVersionInfo.id);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.version, localClientVersionInfo.version);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.info, localClientVersionInfo.info);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.checksum, localClientVersionInfo.checksum);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
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
    this.id = paramJceInputStream.read(this.id, 0, true);
    this.version = paramJceInputStream.read(this.version, 1, true);
    this.info = paramJceInputStream.readString(2, false);
    this.checksum = paramJceInputStream.readString(3, false);
  }

  public final void setChecksum(String paramString)
  {
    this.checksum = paramString;
  }

  public final void setId(int paramInt)
  {
    this.id = paramInt;
  }

  public final void setInfo(String paramString)
  {
    this.info = paramString;
  }

  public final void setVersion(int paramInt)
  {
    this.version = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.id, 0);
    paramJceOutputStream.write(this.version, 1);
    if (this.info != null)
      paramJceOutputStream.write(this.info, 2);
    if (this.checksum != null)
      paramJceOutputStream.write(this.checksum, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.ClientVersionInfo
 * JD-Core Version:    0.6.2
 */