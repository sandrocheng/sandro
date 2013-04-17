package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UploadFile extends JceStruct
  implements Cloneable
{
  public int pos = 0;
  public int size = 0;

  static
  {
    if (!UploadFile.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UploadFile()
  {
    setPos(this.pos);
    setSize(this.size);
  }

  public UploadFile(int paramInt1, int paramInt2)
  {
    setPos(paramInt1);
    setSize(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.UploadFile";
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
    localJceDisplayer.display(this.pos, "pos");
    localJceDisplayer.display(this.size, "size");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UploadFile localUploadFile = (UploadFile)paramObject;
      boolean bool2 = JceUtil.equals(this.pos, localUploadFile.pos);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.size, localUploadFile.size);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.UploadFile";
  }

  public final int getPos()
  {
    return this.pos;
  }

  public final int getSize()
  {
    return this.size;
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
    this.pos = paramJceInputStream.read(this.pos, 0, true);
    this.size = paramJceInputStream.read(this.size, 1, true);
  }

  public final void setPos(int paramInt)
  {
    this.pos = paramInt;
  }

  public final void setSize(int paramInt)
  {
    this.size = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.pos, 0);
    paramJceOutputStream.write(this.size, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UploadFile
 * JD-Core Version:    0.6.2
 */