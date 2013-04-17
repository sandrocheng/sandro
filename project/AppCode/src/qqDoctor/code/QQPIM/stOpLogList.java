package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stOpLogList extends JceStruct
  implements Cloneable
{
  public short cmd = 0;
  public double latitude = 0.0D;
  public double longitude = 0.0D;
  public String phone = "";
  public int reqtime = 0;
  public short result = -1;
  public int resulttime = 0;
  public long ulkey = 0L;

  static
  {
    if (!stOpLogList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stOpLogList()
  {
    setUlkey(this.ulkey);
    setCmd(this.cmd);
    setReqtime(this.reqtime);
    setPhone(this.phone);
    setResult(this.result);
    setResulttime(this.resulttime);
    setLongitude(this.longitude);
    setLatitude(this.latitude);
  }

  public stOpLogList(long paramLong, short paramShort1, int paramInt1, String paramString, short paramShort2, int paramInt2, double paramDouble1, double paramDouble2)
  {
    setUlkey(paramLong);
    setCmd(paramShort1);
    setReqtime(paramInt1);
    setPhone(paramString);
    setResult(paramShort2);
    setResulttime(paramInt2);
    setLongitude(paramDouble1);
    setLatitude(paramDouble2);
  }

  public final String className()
  {
    return "QQPIM.stOpLogList";
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
    localJceDisplayer.display(this.ulkey, "ulkey");
    localJceDisplayer.display(this.cmd, "cmd");
    localJceDisplayer.display(this.reqtime, "reqtime");
    localJceDisplayer.display(this.phone, "phone");
    localJceDisplayer.display(this.result, "result");
    localJceDisplayer.display(this.resulttime, "resulttime");
    localJceDisplayer.display(this.longitude, "longitude");
    localJceDisplayer.display(this.latitude, "latitude");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      stOpLogList localstOpLogList = (stOpLogList)paramObject;
      boolean bool2 = JceUtil.equals(this.ulkey, localstOpLogList.ulkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.cmd, localstOpLogList.cmd);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.reqtime, localstOpLogList.reqtime);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.phone, localstOpLogList.phone);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.result, localstOpLogList.result);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.resulttime, localstOpLogList.resulttime);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.longitude, localstOpLogList.longitude);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.latitude, localstOpLogList.latitude);
                    bool1 = false;
                    if (bool9)
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

  public final String fullClassName()
  {
    return "QQPIM.stOpLogList";
  }

  public final short getCmd()
  {
    return this.cmd;
  }

  public final double getLatitude()
  {
    return this.latitude;
  }

  public final double getLongitude()
  {
    return this.longitude;
  }

  public final String getPhone()
  {
    return this.phone;
  }

  public final int getReqtime()
  {
    return this.reqtime;
  }

  public final short getResult()
  {
    return this.result;
  }

  public final int getResulttime()
  {
    return this.resulttime;
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
    this.cmd = paramJceInputStream.read(this.cmd, 1, false);
    this.reqtime = paramJceInputStream.read(this.reqtime, 2, false);
    this.phone = paramJceInputStream.readString(3, false);
    this.result = paramJceInputStream.read(this.result, 4, false);
    this.resulttime = paramJceInputStream.read(this.resulttime, 5, false);
    this.longitude = paramJceInputStream.read(this.longitude, 6, false);
    this.latitude = paramJceInputStream.read(this.latitude, 7, false);
  }

  public final void setCmd(short paramShort)
  {
    this.cmd = paramShort;
  }

  public final void setLatitude(double paramDouble)
  {
    this.latitude = paramDouble;
  }

  public final void setLongitude(double paramDouble)
  {
    this.longitude = paramDouble;
  }

  public final void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public final void setReqtime(int paramInt)
  {
    this.reqtime = paramInt;
  }

  public final void setResult(short paramShort)
  {
    this.result = paramShort;
  }

  public final void setResulttime(int paramInt)
  {
    this.resulttime = paramInt;
  }

  public final void setUlkey(long paramLong)
  {
    this.ulkey = paramLong;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.ulkey, 0);
    paramJceOutputStream.write(this.cmd, 1);
    paramJceOutputStream.write(this.reqtime, 2);
    if (this.phone != null)
      paramJceOutputStream.write(this.phone, 3);
    paramJceOutputStream.write(this.result, 4);
    paramJceOutputStream.write(this.resulttime, 5);
    paramJceOutputStream.write(this.longitude, 6);
    paramJceOutputStream.write(this.latitude, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stOpLogList
 * JD-Core Version:    0.6.2
 */