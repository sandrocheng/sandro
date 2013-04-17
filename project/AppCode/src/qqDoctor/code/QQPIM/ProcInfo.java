package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ProcInfo extends JceStruct
  implements Cloneable
{
  public String desc = "";
  public String file = "";
  public String uid = "";

  static
  {
    if (!ProcInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ProcInfo()
  {
    setFile(this.file);
    setDesc(this.desc);
    setUid(this.uid);
  }

  public ProcInfo(String paramString1, String paramString2, String paramString3)
  {
    setFile(paramString1);
    setDesc(paramString2);
    setUid(paramString3);
  }

  public final String className()
  {
    return "QQPIM.ProcInfo";
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
    localJceDisplayer.display(this.file, "file");
    localJceDisplayer.display(this.desc, "desc");
    localJceDisplayer.display(this.uid, "uid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ProcInfo localProcInfo = (ProcInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.file, localProcInfo.file);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.desc, localProcInfo.desc);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.uid, localProcInfo.uid);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ProcInfo";
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final String getFile()
  {
    return this.file;
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
    this.file = paramJceInputStream.readString(0, true);
    this.desc = paramJceInputStream.readString(1, false);
    this.uid = paramJceInputStream.readString(2, false);
  }

  public final void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public final void setFile(String paramString)
  {
    this.file = paramString;
  }

  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.file, 0);
    if (this.desc != null)
      paramJceOutputStream.write(this.desc, 1);
    if (this.uid != null)
      paramJceOutputStream.write(this.uid, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ProcInfo
 * JD-Core Version:    0.6.2
 */