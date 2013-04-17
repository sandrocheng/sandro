package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Storage extends JceStruct
  implements Cloneable
{
  public int memory = 0;
  public int ram = 0;
  public int sdcard = 0;

  static
  {
    if (!Storage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Storage()
  {
    setRam(this.ram);
    setMemory(this.memory);
    setSdcard(this.sdcard);
  }

  public Storage(int paramInt1, int paramInt2, int paramInt3)
  {
    setRam(paramInt1);
    setMemory(paramInt2);
    setSdcard(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.Storage";
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
    localJceDisplayer.display(this.ram, "ram");
    localJceDisplayer.display(this.memory, "memory");
    localJceDisplayer.display(this.sdcard, "sdcard");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Storage localStorage = (Storage)paramObject;
      boolean bool2 = JceUtil.equals(this.ram, localStorage.ram);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.memory, localStorage.memory);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.sdcard, localStorage.sdcard);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.Storage";
  }

  public final int getMemory()
  {
    return this.memory;
  }

  public final int getRam()
  {
    return this.ram;
  }

  public final int getSdcard()
  {
    return this.sdcard;
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
    this.ram = paramJceInputStream.read(this.ram, 0, true);
    this.memory = paramJceInputStream.read(this.memory, 1, true);
    this.sdcard = paramJceInputStream.read(this.sdcard, 2, true);
  }

  public final void setMemory(int paramInt)
  {
    this.memory = paramInt;
  }

  public final void setRam(int paramInt)
  {
    this.ram = paramInt;
  }

  public final void setSdcard(int paramInt)
  {
    this.sdcard = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.ram, 0);
    paramJceOutputStream.write(this.memory, 1);
    paramJceOutputStream.write(this.sdcard, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.Storage
 * JD-Core Version:    0.6.2
 */