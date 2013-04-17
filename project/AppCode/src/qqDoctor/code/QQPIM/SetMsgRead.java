package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SetMsgRead extends JceStruct
  implements Cloneable
{
  public byte issetread = 0;

  static
  {
    if (!SetMsgRead.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SetMsgRead()
  {
    setIssetread(this.issetread);
  }

  public SetMsgRead(byte paramByte)
  {
    setIssetread(paramByte);
  }

  public final String className()
  {
    return "QQPIM.SetMsgRead";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.issetread, "issetread");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    SetMsgRead localSetMsgRead;
    for (boolean bool = false; ; bool = JceUtil.equals(this.issetread, localSetMsgRead.issetread))
    {
      return bool;
      localSetMsgRead = (SetMsgRead)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SetMsgRead";
  }

  public final byte getIssetread()
  {
    return this.issetread;
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
    this.issetread = paramJceInputStream.read(this.issetread, 0, true);
  }

  public final void setIssetread(byte paramByte)
  {
    this.issetread = paramByte;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.issetread, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SetMsgRead
 * JD-Core Version:    0.6.2
 */