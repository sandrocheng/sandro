package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CPU extends JceStruct
  implements Cloneable
{
  public int maxfreq = 0;
  public int minfreq = 0;
  public String model = "";

  static
  {
    if (!CPU.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CPU()
  {
    setModel(this.model);
    setMaxfreq(this.maxfreq);
    setMinfreq(this.minfreq);
  }

  public CPU(String paramString, int paramInt1, int paramInt2)
  {
    setModel(paramString);
    setMaxfreq(paramInt1);
    setMinfreq(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.CPU";
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
    localJceDisplayer.display(this.maxfreq, "maxfreq");
    localJceDisplayer.display(this.minfreq, "minfreq");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CPU localCPU = (CPU)paramObject;
      boolean bool2 = JceUtil.equals(this.model, localCPU.model);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.maxfreq, localCPU.maxfreq);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.minfreq, localCPU.minfreq);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CPU";
  }

  public final int getMaxfreq()
  {
    return this.maxfreq;
  }

  public final int getMinfreq()
  {
    return this.minfreq;
  }

  public final String getModel()
  {
    return this.model;
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
    this.maxfreq = paramJceInputStream.read(this.maxfreq, 1, true);
    this.minfreq = paramJceInputStream.read(this.minfreq, 2, true);
  }

  public final void setMaxfreq(int paramInt)
  {
    this.maxfreq = paramInt;
  }

  public final void setMinfreq(int paramInt)
  {
    this.minfreq = paramInt;
  }

  public final void setModel(String paramString)
  {
    this.model = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.model, 0);
    paramJceOutputStream.write(this.maxfreq, 1);
    paramJceOutputStream.write(this.minfreq, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CPU
 * JD-Core Version:    0.6.2
 */