package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ServerUpdateInfo extends JceStruct
  implements Cloneable
{
  static int cache_action;
  static int cache_time;
  static int cache_type;
  public int action = 0;
  public String message = "";
  public int nextcheckinterval = 0;
  public int time = 0;
  public int type = 0;

  static
  {
    if (!ServerUpdateInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ServerUpdateInfo()
  {
    setAction(this.action);
    setType(this.type);
    setMessage(this.message);
    setTime(this.time);
    setNextcheckinterval(this.nextcheckinterval);
  }

  public ServerUpdateInfo(int paramInt1, int paramInt2, String paramString, int paramInt3, int paramInt4)
  {
    setAction(paramInt1);
    setType(paramInt2);
    setMessage(paramString);
    setTime(paramInt3);
    setNextcheckinterval(paramInt4);
  }

  public final String className()
  {
    return "QQPIM.ServerUpdateInfo";
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
    localJceDisplayer.display(this.action, "action");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.message, "message");
    localJceDisplayer.display(this.time, "time");
    localJceDisplayer.display(this.nextcheckinterval, "nextcheckinterval");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ServerUpdateInfo localServerUpdateInfo = (ServerUpdateInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.action, localServerUpdateInfo.action);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.type, localServerUpdateInfo.type);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.message, localServerUpdateInfo.message);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.time, localServerUpdateInfo.time);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.nextcheckinterval, localServerUpdateInfo.nextcheckinterval);
              bool1 = false;
              if (bool6)
                bool1 = true;
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ServerUpdateInfo";
  }

  public final int getAction()
  {
    return this.action;
  }

  public final String getMessage()
  {
    return this.message;
  }

  public final int getNextcheckinterval()
  {
    return this.nextcheckinterval;
  }

  public final int getTime()
  {
    return this.time;
  }

  public final int getType()
  {
    return this.type;
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
    this.action = paramJceInputStream.read(this.action, 0, true);
    this.type = paramJceInputStream.read(this.type, 1, true);
    this.message = paramJceInputStream.readString(2, true);
    this.time = paramJceInputStream.read(this.time, 3, false);
    this.nextcheckinterval = paramJceInputStream.read(this.nextcheckinterval, 4, false);
  }

  public final void setAction(int paramInt)
  {
    this.action = paramInt;
  }

  public final void setMessage(String paramString)
  {
    this.message = paramString;
  }

  public final void setNextcheckinterval(int paramInt)
  {
    this.nextcheckinterval = paramInt;
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.action, 0);
    paramJceOutputStream.write(this.type, 1);
    paramJceOutputStream.write(this.message, 2);
    paramJceOutputStream.write(this.time, 3);
    paramJceOutputStream.write(this.nextcheckinterval, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ServerUpdateInfo
 * JD-Core Version:    0.6.2
 */