package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ConfSrc extends JceStruct
  implements Cloneable
{
  static byte[] cache_data;
  public String checksum = "";
  public byte[] data = null;
  public String filename = "";
  public int isincreupdate = 0;
  public String iuchecksum = "";
  public int rnum = 0;
  public int size = 0;
  public int timestamp = 0;
  public String url = "";

  static
  {
    if (!ConfSrc.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ConfSrc()
  {
    setFilename(this.filename);
    setChecksum(this.checksum);
    setTimestamp(this.timestamp);
    setUrl(this.url);
    setIsincreupdate(this.isincreupdate);
    setIuchecksum(this.iuchecksum);
    setData(this.data);
    setRnum(this.rnum);
    setSize(this.size);
  }

  public ConfSrc(String paramString1, String paramString2, int paramInt1, String paramString3, int paramInt2, String paramString4, byte[] paramArrayOfByte, int paramInt3, int paramInt4)
  {
    setFilename(paramString1);
    setChecksum(paramString2);
    setTimestamp(paramInt1);
    setUrl(paramString3);
    setIsincreupdate(paramInt2);
    setIuchecksum(paramString4);
    setData(paramArrayOfByte);
    setRnum(paramInt3);
    setSize(paramInt4);
  }

  public final String className()
  {
    return "QQPIM.ConfSrc";
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
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.isincreupdate, "isincreupdate");
    localJceDisplayer.display(this.iuchecksum, "iuchecksum");
    localJceDisplayer.display(this.data, "data");
    localJceDisplayer.display(this.rnum, "rnum");
    localJceDisplayer.display(this.size, "size");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ConfSrc localConfSrc = (ConfSrc)paramObject;
      boolean bool2 = JceUtil.equals(this.filename, localConfSrc.filename);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.checksum, localConfSrc.checksum);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.timestamp, localConfSrc.timestamp);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.url, localConfSrc.url);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.isincreupdate, localConfSrc.isincreupdate);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.iuchecksum, localConfSrc.iuchecksum);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.data, localConfSrc.data);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.rnum, localConfSrc.rnum);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.size, localConfSrc.size);
                      bool1 = false;
                      if (bool10)
                        bool1 = true;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ConfSrc";
  }

  public final String getChecksum()
  {
    return this.checksum;
  }

  public final byte[] getData()
  {
    return this.data;
  }

  public final String getFilename()
  {
    return this.filename;
  }

  public final int getIsincreupdate()
  {
    return this.isincreupdate;
  }

  public final String getIuchecksum()
  {
    return this.iuchecksum;
  }

  public final int getRnum()
  {
    return this.rnum;
  }

  public final int getSize()
  {
    return this.size;
  }

  public final int getTimestamp()
  {
    return this.timestamp;
  }

  public final String getUrl()
  {
    return this.url;
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
    this.url = paramJceInputStream.readString(3, true);
    this.isincreupdate = paramJceInputStream.read(this.isincreupdate, 4, false);
    this.iuchecksum = paramJceInputStream.readString(5, false);
    if (cache_data == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_data = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.data = paramJceInputStream.read(cache_data, 6, false);
    this.rnum = paramJceInputStream.read(this.rnum, 7, false);
    this.size = paramJceInputStream.read(this.size, 8, false);
  }

  public final void setChecksum(String paramString)
  {
    this.checksum = paramString;
  }

  public final void setData(byte[] paramArrayOfByte)
  {
    this.data = paramArrayOfByte;
  }

  public final void setFilename(String paramString)
  {
    this.filename = paramString;
  }

  public final void setIsincreupdate(int paramInt)
  {
    this.isincreupdate = paramInt;
  }

  public final void setIuchecksum(String paramString)
  {
    this.iuchecksum = paramString;
  }

  public final void setRnum(int paramInt)
  {
    this.rnum = paramInt;
  }

  public final void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public final void setTimestamp(int paramInt)
  {
    this.timestamp = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.filename, 0);
    paramJceOutputStream.write(this.checksum, 1);
    paramJceOutputStream.write(this.timestamp, 2);
    paramJceOutputStream.write(this.url, 3);
    paramJceOutputStream.write(this.isincreupdate, 4);
    if (this.iuchecksum != null)
      paramJceOutputStream.write(this.iuchecksum, 5);
    if (this.data != null)
      paramJceOutputStream.write(this.data, 6);
    paramJceOutputStream.write(this.rnum, 7);
    paramJceOutputStream.write(this.size, 8);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ConfSrc
 * JD-Core Version:    0.6.2
 */