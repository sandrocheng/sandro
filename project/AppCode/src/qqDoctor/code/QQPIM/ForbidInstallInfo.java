package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ForbidInstallInfo extends JceStruct
  implements Cloneable
{
  public int option = 0;
  public String uid = "";

  static
  {
    if (!ForbidInstallInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ForbidInstallInfo()
  {
    setOption(this.option);
    setUid(this.uid);
  }

  public ForbidInstallInfo(int paramInt, String paramString)
  {
    setOption(paramInt);
    setUid(paramString);
  }

  public final String className()
  {
    return "QQPIM.ForbidInstallInfo";
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
    localJceDisplayer.display(this.option, "option");
    localJceDisplayer.display(this.uid, "uid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ForbidInstallInfo localForbidInstallInfo = (ForbidInstallInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.option, localForbidInstallInfo.option);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.uid, localForbidInstallInfo.uid);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ForbidInstallInfo";
  }

  public final int getOption()
  {
    return this.option;
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
    this.option = paramJceInputStream.read(this.option, 0, true);
    this.uid = paramJceInputStream.readString(1, true);
  }

  public final void setOption(int paramInt)
  {
    this.option = paramInt;
  }

  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.option, 0);
    paramJceOutputStream.write(this.uid, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ForbidInstallInfo
 * JD-Core Version:    0.6.2
 */