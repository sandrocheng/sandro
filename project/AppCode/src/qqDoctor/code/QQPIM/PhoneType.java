package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PhoneType extends JceStruct
  implements Cloneable
{
  static int cache_phonetype;
  static int cache_subplatform;
  public int phonetype = 0;
  public int subplatform = ESubPlatform.ESP_NONE.value();

  static
  {
    if (!PhoneType.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PhoneType()
  {
    setPhonetype(this.phonetype);
    setSubplatform(this.subplatform);
  }

  public PhoneType(int paramInt1, int paramInt2)
  {
    setPhonetype(paramInt1);
    setSubplatform(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.PhoneType";
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
    localJceDisplayer.display(this.phonetype, "phonetype");
    localJceDisplayer.display(this.subplatform, "subplatform");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      PhoneType localPhoneType = (PhoneType)paramObject;
      boolean bool2 = JceUtil.equals(this.phonetype, localPhoneType.phonetype);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.subplatform, localPhoneType.subplatform);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.PhoneType";
  }

  public final int getPhonetype()
  {
    return this.phonetype;
  }

  public final int getSubplatform()
  {
    return this.subplatform;
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
    this.subplatform = paramJceInputStream.read(this.subplatform, 1, false);
  }

  public final void setPhonetype(int paramInt)
  {
    this.phonetype = paramInt;
  }

  public final void setSubplatform(int paramInt)
  {
    this.subplatform = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.phonetype, 0);
    paramJceOutputStream.write(this.subplatform, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PhoneType
 * JD-Core Version:    0.6.2
 */