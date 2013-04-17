package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stAntiTheftResult extends JceStruct
  implements Cloneable
{
  public double latitude = 0.0D;
  public double longitude = 0.0D;
  public int result = 0;

  static
  {
    if (!stAntiTheftResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stAntiTheftResult()
  {
    setResult(this.result);
    setLongitude(this.longitude);
    setLatitude(this.latitude);
  }

  public stAntiTheftResult(int paramInt, double paramDouble1, double paramDouble2)
  {
    setResult(paramInt);
    setLongitude(paramDouble1);
    setLatitude(paramDouble2);
  }

  public final String className()
  {
    return "QQPIM.stAntiTheftResult";
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
    localJceDisplayer.display(this.result, "result");
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
      stAntiTheftResult localstAntiTheftResult = (stAntiTheftResult)paramObject;
      boolean bool2 = JceUtil.equals(this.result, localstAntiTheftResult.result);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.longitude, localstAntiTheftResult.longitude);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.latitude, localstAntiTheftResult.latitude);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stAntiTheftResult";
  }

  public final double getLatitude()
  {
    return this.latitude;
  }

  public final double getLongitude()
  {
    return this.longitude;
  }

  public final int getResult()
  {
    return this.result;
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
    this.result = paramJceInputStream.read(this.result, 0, true);
    this.longitude = paramJceInputStream.read(this.longitude, 1, false);
    this.latitude = paramJceInputStream.read(this.latitude, 2, false);
  }

  public final void setLatitude(double paramDouble)
  {
    this.latitude = paramDouble;
  }

  public final void setLongitude(double paramDouble)
  {
    this.longitude = paramDouble;
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
    paramJceOutputStream.write(this.longitude, 1);
    paramJceOutputStream.write(this.latitude, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stAntiTheftResult
 * JD-Core Version:    0.6.2
 */