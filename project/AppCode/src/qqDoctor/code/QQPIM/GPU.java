package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class GPU extends JceStruct
  implements Cloneable
{
  public String model = "";
  public String version = "";

  static
  {
    if (!GPU.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public GPU()
  {
    setModel(this.model);
    setVersion(this.version);
  }

  public GPU(String paramString1, String paramString2)
  {
    setModel(paramString1);
    setVersion(paramString2);
  }

  public final String className()
  {
    return "QQPIM.GPU";
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
    localJceDisplayer.display(this.model, "model");
    localJceDisplayer.display(this.version, "version");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      GPU localGPU = (GPU)paramObject;
      boolean bool2 = JceUtil.equals(this.model, localGPU.model);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.version, localGPU.version);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.GPU";
  }

  public final String getModel()
  {
    return this.model;
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
    this.model = paramJceInputStream.readString(0, true);
    this.version = paramJceInputStream.readString(1, true);
  }

  public final void setModel(String paramString)
  {
    this.model = paramString;
  }

  public final void setVersion(String paramString)
  {
    this.version = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.model, 0);
    paramJceOutputStream.write(this.version, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.GPU
 * JD-Core Version:    0.6.2
 */