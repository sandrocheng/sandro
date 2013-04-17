package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UserActionTime extends JceStruct
  implements Cloneable
{
  static int cache_userAction;
  public int time = 0;
  public int userAction = 0;

  static
  {
    if (!UserActionTime.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UserActionTime()
  {
    setUserAction(this.userAction);
    setTime(this.time);
  }

  public UserActionTime(int paramInt1, int paramInt2)
  {
    setUserAction(paramInt1);
    setTime(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.UserActionTime";
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
    localJceDisplayer.display(this.userAction, "userAction");
    localJceDisplayer.display(this.time, "time");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UserActionTime localUserActionTime = (UserActionTime)paramObject;
      boolean bool2 = JceUtil.equals(this.userAction, localUserActionTime.userAction);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.time, localUserActionTime.time);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.UserActionTime";
  }

  public final int getTime()
  {
    return this.time;
  }

  public final int getUserAction()
  {
    return this.userAction;
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
    this.userAction = paramJceInputStream.read(this.userAction, 0, true);
    this.time = paramJceInputStream.read(this.time, 1, true);
  }

  public final void setTime(int paramInt)
  {
    this.time = paramInt;
  }

  public final void setUserAction(int paramInt)
  {
    this.userAction = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.userAction, 0);
    paramJceOutputStream.write(this.time, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UserActionTime
 * JD-Core Version:    0.6.2
 */