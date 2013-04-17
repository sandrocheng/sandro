package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class OpenUIInfo extends JceStruct
  implements Cloneable
{
  public int uiid = 0;

  static
  {
    if (!OpenUIInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public OpenUIInfo()
  {
    setUiid(this.uiid);
  }

  public OpenUIInfo(int paramInt)
  {
    setUiid(paramInt);
  }

  public final String className()
  {
    return "QQPIM.OpenUIInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.uiid, "uiid");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    OpenUIInfo localOpenUIInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.uiid, localOpenUIInfo.uiid))
    {
      return bool;
      localOpenUIInfo = (OpenUIInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.OpenUIInfo";
  }

  public final int getUiid()
  {
    return this.uiid;
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
    this.uiid = paramJceInputStream.read(this.uiid, 0, true);
  }

  public final void setUiid(int paramInt)
  {
    this.uiid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uiid, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.OpenUIInfo
 * JD-Core Version:    0.6.2
 */