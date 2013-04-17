package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SPhoneType extends JceStruct
  implements Cloneable
{
  static int cache_phonetype;
  public int phonetype = 0;

  static
  {
    if (!SPhoneType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SPhoneType()
  {
    setPhonetype(this.phonetype);
  }

  public SPhoneType(int paramInt)
  {
    setPhonetype(paramInt);
  }

  public final String className()
  {
    return "QQPIM.SPhoneType";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.phonetype, "phonetype");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    SPhoneType localSPhoneType;
    for (boolean bool = false; ; bool = JceUtil.equals(this.phonetype, localSPhoneType.phonetype))
    {
      return bool;
      localSPhoneType = (SPhoneType)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SPhoneType";
  }

  public final int getPhonetype()
  {
    return this.phonetype;
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
    this.phonetype = paramJceInputStream.read(this.phonetype, 0, true);
  }

  public final void setPhonetype(int paramInt)
  {
    this.phonetype = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.phonetype, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SPhoneType
 * JD-Core Version:    0.6.2
 */