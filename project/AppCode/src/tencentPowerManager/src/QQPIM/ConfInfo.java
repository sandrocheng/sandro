package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ConfInfo extends JceStruct
  implements Cloneable
{
  public String checksum = "";
  public String filename = "";
  public int gettype = 0;
  public int pfutimestamp = 0;
  public int timestamp = 0;
  public int version = 0;

  static
  {
    if (!ConfInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ConfInfo()
  {
    setFilename(this.filename);
    setChecksum(this.checksum);
    setTimestamp(this.timestamp);
    setPfutimestamp(this.pfutimestamp);
    setGettype(this.gettype);
    setVersion(this.version);
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
    localJceDisplayer.display(this.filename, "filename");
    localJceDisplayer.display(this.checksum, "checksum");
    localJceDisplayer.display(this.timestamp, "timestamp");
    localJceDisplayer.display(this.pfutimestamp, "pfutimestamp");
    localJceDisplayer.display(this.gettype, "gettype");
    localJceDisplayer.display(this.version, "version");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ConfInfo localConfInfo = (ConfInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.filename, localConfInfo.filename);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.checksum, localConfInfo.checksum);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.timestamp, localConfInfo.timestamp);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.pfutimestamp, localConfInfo.pfutimestamp);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.gettype, localConfInfo.gettype);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.version, localConfInfo.version);
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

  public final int getTimestamp()
  {
    return this.timestamp;
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
    this.filename = paramJceInputStream.readString(0, true);
    this.checksum = paramJceInputStream.readString(1, true);
    this.timestamp = paramJceInputStream.read(this.timestamp, 2, true);
    this.pfutimestamp = paramJceInputStream.read(this.pfutimestamp, 3, false);
    this.gettype = paramJceInputStream.read(this.gettype, 4, false);
    this.version = paramJceInputStream.read(this.version, 5, false);
  }

  public final void setChecksum(String paramString)
  {
    this.checksum = paramString;
  }

  public final void setFilename(String paramString)
  {
    this.filename = paramString;
  }

  public final void setGettype(int paramInt)
  {
    this.gettype = paramInt;
  }

  public final void setPfutimestamp(int paramInt)
  {
    this.pfutimestamp = paramInt;
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
    paramJceOutputStream.write(this.filename, 0);
    paramJceOutputStream.write(this.checksum, 1);
    paramJceOutputStream.write(this.timestamp, 2);
    paramJceOutputStream.write(this.pfutimestamp, 3);
    paramJceOutputStream.write(this.gettype, 4);
    paramJceOutputStream.write(this.version, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.ConfInfo
 * JD-Core Version:    0.6.2
 */