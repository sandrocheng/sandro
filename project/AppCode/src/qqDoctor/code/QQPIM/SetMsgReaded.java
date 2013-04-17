package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SetMsgReaded extends JceStruct
{
  public byte issetreaded = 0;

  static
  {
    if (!SetMsgReaded.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SetMsgReaded()
  {
    setIssetreaded(this.issetreaded);
  }

  public SetMsgReaded(byte paramByte)
  {
    setIssetreaded(paramByte);
  }

  public final String className()
  {
    return "QQPIM.SetMsgReaded";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.issetreaded, "issetreaded");
  }

  public final boolean equals(Object paramObject)
  {
    SetMsgReaded localSetMsgReaded = (SetMsgReaded)paramObject;
    return JceUtil.equals(this.issetreaded, localSetMsgReaded.issetreaded);
  }

  public final String fullClassName()
  {
    return "QQPIM.SetMsgReaded";
  }

  public final byte getIssetreaded()
  {
    return this.issetreaded;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.issetreaded = paramJceInputStream.read(this.issetreaded, 0, true);
  }

  public final void setIssetreaded(byte paramByte)
  {
    this.issetreaded = paramByte;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.issetreaded, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SetMsgReaded
 * JD-Core Version:    0.6.2
 */