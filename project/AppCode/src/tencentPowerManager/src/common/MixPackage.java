package common;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.HashMap;
import java.util.Map;

public final class MixPackage extends JceStruct
{
  private static Map b;
  private Map a = null;

  static
  {
    if (!MixPackage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      c = bool;
      return;
    }
  }

  public final Map a()
  {
    return this.a;
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
        bool = c;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    new JceDisplayer(paramStringBuilder, paramInt).display(this.a, "mixMap");
  }

  public final boolean equals(Object paramObject)
  {
    MixPackage localMixPackage = (MixPackage)paramObject;
    return JceUtil.equals(this.a, localMixPackage.a);
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (b == null)
    {
      b = new HashMap();
      Integer localInteger = Integer.valueOf(0);
      byte[] arrayOfByte = { 0 };
      b.put(localInteger, arrayOfByte);
    }
    this.a = ((Map)paramJceInputStream.read(b, 0, true));
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     common.MixPackage
 * JD-Core Version:    0.6.2
 */