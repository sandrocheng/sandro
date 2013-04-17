package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VirusUpdateInfo extends JceStruct
  implements Cloneable
{
  public String description = "";
  public int level = 0;
  public String newestvirus = "";
  public String version = "";

  static
  {
    if (!VirusUpdateInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public VirusUpdateInfo()
  {
    setVersion(this.version);
    setNewestvirus(this.newestvirus);
    setLevel(this.level);
    setDescription(this.description);
  }

  public VirusUpdateInfo(String paramString1, String paramString2, int paramInt, String paramString3)
  {
    setVersion(paramString1);
    setNewestvirus(paramString2);
    setLevel(paramInt);
    setDescription(paramString3);
  }

  public final String className()
  {
    return "QQPIM.VirusUpdateInfo";
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
    localJceDisplayer.display(this.version, "version");
    localJceDisplayer.display(this.newestvirus, "newestvirus");
    localJceDisplayer.display(this.level, "level");
    localJceDisplayer.display(this.description, "description");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      VirusUpdateInfo localVirusUpdateInfo = (VirusUpdateInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.version, localVirusUpdateInfo.version);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.newestvirus, localVirusUpdateInfo.newestvirus);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.level, localVirusUpdateInfo.level);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.description, localVirusUpdateInfo.description);
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
    return "QQPIM.VirusUpdateInfo";
  }

  public final String getDescription()
  {
    return this.description;
  }

  public final int getLevel()
  {
    return this.level;
  }

  public final String getNewestvirus()
  {
    return this.newestvirus;
  }

  public final String getVersion()
  {
    return this.version;
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
    this.version = paramJceInputStream.readString(0, true);
    this.newestvirus = paramJceInputStream.readString(1, true);
    this.level = paramJceInputStream.read(this.level, 2, true);
    this.description = paramJceInputStream.readString(3, true);
  }

  public final void setDescription(String paramString)
  {
    this.description = paramString;
  }

  public final void setLevel(int paramInt)
  {
    this.level = paramInt;
  }

  public final void setNewestvirus(String paramString)
  {
    this.newestvirus = paramString;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.version, 0);
    paramJceOutputStream.write(this.newestvirus, 1);
    paramJceOutputStream.write(this.level, 2);
    paramJceOutputStream.write(this.description, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.VirusUpdateInfo
 * JD-Core Version:    0.6.2
 */