package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CrashSetInfo extends JceStruct
  implements Cloneable
{
  public int crashdata = 0;
  public int uploadtype = 0;

  static
  {
    if (!CrashSetInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CrashSetInfo()
  {
    setUploadtype(this.uploadtype);
    setCrashdata(this.crashdata);
  }

  public CrashSetInfo(int paramInt1, int paramInt2)
  {
    setUploadtype(paramInt1);
    setCrashdata(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.CrashSetInfo";
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
    localJceDisplayer.display(this.uploadtype, "uploadtype");
    localJceDisplayer.display(this.crashdata, "crashdata");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CrashSetInfo localCrashSetInfo = (CrashSetInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.uploadtype, localCrashSetInfo.uploadtype);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.crashdata, localCrashSetInfo.crashdata);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CrashSetInfo";
  }

  public final int getCrashdata()
  {
    return this.crashdata;
  }

  public final int getUploadtype()
  {
    return this.uploadtype;
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
    this.uploadtype = paramJceInputStream.read(this.uploadtype, 0, true);
    this.crashdata = paramJceInputStream.read(this.crashdata, 1, true);
  }

  public final void setCrashdata(int paramInt)
  {
    this.crashdata = paramInt;
  }

  public final void setUploadtype(int paramInt)
  {
    this.uploadtype = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uploadtype, 0);
    paramJceOutputStream.write(this.crashdata, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CrashSetInfo
 * JD-Core Version:    0.6.2
 */