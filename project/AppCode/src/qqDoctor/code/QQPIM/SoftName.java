package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftName extends JceStruct
  implements Cloneable
{
  public String softname = "";
  public String uid = "";

  static
  {
    if (!SoftName.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftName()
  {
    setUid(this.uid);
    setSoftname(this.softname);
  }

  public SoftName(String paramString1, String paramString2)
  {
    setUid(paramString1);
    setSoftname(paramString2);
  }

  public final String className()
  {
    return "QQPIM.SoftName";
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
    localJceDisplayer.display(this.uid, "uid");
    localJceDisplayer.display(this.softname, "softname");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftName localSoftName = (SoftName)paramObject;
      boolean bool2 = JceUtil.equals(this.uid, localSoftName.uid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.softname, localSoftName.softname);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SoftName";
  }

  public final String getSoftname()
  {
    return this.softname;
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
    this.softname = paramJceInputStream.readString(1, true);
  }

  public final void setSoftname(String paramString)
  {
    this.softname = paramString;
  }

  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uid, 0);
    paramJceOutputStream.write(this.softname, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftName
 * JD-Core Version:    0.6.2
 */