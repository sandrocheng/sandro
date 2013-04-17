package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LogSetInfo extends JceStruct
  implements Cloneable
{
  public boolean islogcat = true;
  public boolean islogfile = true;
  public short loglevel = 0;
  public int uploadtype = 0;

  static
  {
    if (!LogSetInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public LogSetInfo()
  {
    setIslogcat(this.islogcat);
    setIslogfile(this.islogfile);
    setLoglevel(this.loglevel);
    setUploadtype(this.uploadtype);
  }

  public LogSetInfo(boolean paramBoolean1, boolean paramBoolean2, short paramShort, int paramInt)
  {
    setIslogcat(paramBoolean1);
    setIslogfile(paramBoolean2);
    setLoglevel(paramShort);
    setUploadtype(paramInt);
  }

  public final String className()
  {
    return "QQPIM.LogSetInfo";
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
    localJceDisplayer.display(this.islogcat, "islogcat");
    localJceDisplayer.display(this.islogfile, "islogfile");
    localJceDisplayer.display(this.loglevel, "loglevel");
    localJceDisplayer.display(this.uploadtype, "uploadtype");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      LogSetInfo localLogSetInfo = (LogSetInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.islogcat, localLogSetInfo.islogcat);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.islogfile, localLogSetInfo.islogfile);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.loglevel, localLogSetInfo.loglevel);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.uploadtype, localLogSetInfo.uploadtype);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.LogSetInfo";
  }

  public final boolean getIslogcat()
  {
    return this.islogcat;
  }

  public final boolean getIslogfile()
  {
    return this.islogfile;
  }

  public final short getLoglevel()
  {
    return this.loglevel;
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
    this.islogcat = paramJceInputStream.read(this.islogcat, 0, true);
    this.islogfile = paramJceInputStream.read(this.islogfile, 1, true);
    this.loglevel = paramJceInputStream.read(this.loglevel, 2, false);
    this.uploadtype = paramJceInputStream.read(this.uploadtype, 3, false);
  }

  public final void setIslogcat(boolean paramBoolean)
  {
    this.islogcat = paramBoolean;
  }

  public final void setIslogfile(boolean paramBoolean)
  {
    this.islogfile = paramBoolean;
  }

  public final void setLoglevel(short paramShort)
  {
    this.loglevel = paramShort;
  }

  public final void setUploadtype(int paramInt)
  {
    this.uploadtype = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.islogcat, 0);
    paramJceOutputStream.write(this.islogfile, 1);
    paramJceOutputStream.write(this.loglevel, 2);
    paramJceOutputStream.write(this.uploadtype, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.LogSetInfo
 * JD-Core Version:    0.6.2
 */