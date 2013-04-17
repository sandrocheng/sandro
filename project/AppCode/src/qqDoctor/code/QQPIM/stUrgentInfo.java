package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stUrgentInfo extends JceStruct
  implements Cloneable
{
  public String urgentphone = "";

  static
  {
    if (!stUrgentInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stUrgentInfo()
  {
    setUrgentphone(this.urgentphone);
  }

  public stUrgentInfo(String paramString)
  {
    setUrgentphone(paramString);
  }

  public final String className()
  {
    return "QQPIM.stUrgentInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.urgentphone, "urgentphone");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    stUrgentInfo localstUrgentInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.urgentphone, localstUrgentInfo.urgentphone))
    {
      return bool;
      localstUrgentInfo = (stUrgentInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stUrgentInfo";
  }

  public final String getUrgentphone()
  {
    return this.urgentphone;
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
    this.urgentphone = paramJceInputStream.readString(0, true);
  }

  public final void setUrgentphone(String paramString)
  {
    this.urgentphone = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.urgentphone, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stUrgentInfo
 * JD-Core Version:    0.6.2
 */