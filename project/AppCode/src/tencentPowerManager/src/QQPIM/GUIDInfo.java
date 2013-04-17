package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class GUIDInfo extends JceStruct
  implements Cloneable
{
  public String guid = "";

  static
  {
    if (!GUIDInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public GUIDInfo()
  {
    setGuid(this.guid);
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.guid, "guid");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    GUIDInfo localGUIDInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.guid, localGUIDInfo.guid))
    {
      return bool;
      localGUIDInfo = (GUIDInfo)paramObject;
    }
  }

  public final String getGuid()
  {
    return this.guid;
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
    this.guid = paramJceInputStream.readString(0, true);
  }

  public final void setGuid(String paramString)
  {
    this.guid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.guid, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.GUIDInfo
 * JD-Core Version:    0.6.2
 */