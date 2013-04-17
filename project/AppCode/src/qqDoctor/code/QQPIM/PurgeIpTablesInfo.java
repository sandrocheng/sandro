package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PurgeIpTablesInfo extends JceStruct
  implements Cloneable
{
  public String uid = "";

  static
  {
    if (!PurgeIpTablesInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PurgeIpTablesInfo()
  {
    setUid(this.uid);
  }

  public PurgeIpTablesInfo(String paramString)
  {
    setUid(paramString);
  }

  public final String className()
  {
    return "QQPIM.PurgeIpTablesInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.uid, "uid");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    PurgeIpTablesInfo localPurgeIpTablesInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.uid, localPurgeIpTablesInfo.uid))
    {
      return bool;
      localPurgeIpTablesInfo = (PurgeIpTablesInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.PurgeIpTablesInfo";
  }

  public final String getUid()
  {
    return this.uid;
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
    this.uid = paramJceInputStream.readString(0, true);
  }

  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uid, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PurgeIpTablesInfo
 * JD-Core Version:    0.6.2
 */