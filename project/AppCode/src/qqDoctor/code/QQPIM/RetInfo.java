package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RetInfo extends JceStruct
  implements Cloneable
{
  public String strtime_sec = "";
  public int time = 0;

  static
  {
    if (!RetInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RetInfo()
  {
    setTime(this.time);
    setStrtime_sec(this.strtime_sec);
  }

  public RetInfo(int paramInt, String paramString)
  {
    setTime(paramInt);
    setStrtime_sec(paramString);
  }

  public final String className()
  {
    return "QQPIM.RetInfo";
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
    localJceDisplayer.display(this.time, "time");
    localJceDisplayer.display(this.strtime_sec, "strtime_sec");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      RetInfo localRetInfo = (RetInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.time, localRetInfo.time);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.strtime_sec, localRetInfo.strtime_sec);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.RetInfo";
  }

  public final String getStrtime_sec()
  {
    return this.strtime_sec;
  }

  public final int getTime()
  {
    return this.time;
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
    this.time = paramJceInputStream.read(this.time, 0, false);
    this.strtime_sec = paramJceInputStream.readString(1, false);
  }

  public final void setStrtime_sec(String paramString)
  {
    this.strtime_sec = paramString;
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.time, 0);
    if (this.strtime_sec != null)
      paramJceOutputStream.write(this.strtime_sec, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RetInfo
 * JD-Core Version:    0.6.2
 */