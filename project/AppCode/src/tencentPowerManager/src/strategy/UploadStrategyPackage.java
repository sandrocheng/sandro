package strategy;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.HashMap;
import java.util.Map;

public final class UploadStrategyPackage extends JceStruct
{
  private static Map f;
  private int a = 0;
  private int b = 0;
  private int c = 0;
  private String d = "";
  private Map e = null;

  static
  {
    if (!UploadStrategyPackage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      g = bool;
      return;
    }
  }

  public final int a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.b;
  }

  public final int c()
  {
    return this.c;
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
        bool = g;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final String d()
  {
    return this.d;
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "testCount");
    localJceDisplayer.display(this.b, "maxPackageSize");
    localJceDisplayer.display(this.c, "uploadStrategy");
    localJceDisplayer.display(this.d, "uploadServer");
    localJceDisplayer.display(this.e, "moduleStrategy");
  }

  public final Map e()
  {
    return this.e;
  }

  public final boolean equals(Object paramObject)
  {
    UploadStrategyPackage localUploadStrategyPackage = (UploadStrategyPackage)paramObject;
    if ((JceUtil.equals(this.a, localUploadStrategyPackage.a)) && (JceUtil.equals(this.b, localUploadStrategyPackage.b)) && (JceUtil.equals(this.c, localUploadStrategyPackage.c)) && (JceUtil.equals(this.d, localUploadStrategyPackage.d)) && (JceUtil.equals(this.e, localUploadStrategyPackage.e)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.read(this.a, 0, false);
    this.b = paramJceInputStream.read(this.b, 1, true);
    this.c = paramJceInputStream.read(this.c, 2, false);
    this.d = paramJceInputStream.readString(3, false);
    if (f == null)
    {
      f = new HashMap();
      Integer localInteger = Integer.valueOf(0);
      Boolean localBoolean = Boolean.valueOf(false);
      f.put(localInteger, localBoolean);
    }
    this.e = ((Map)paramJceInputStream.read(f, 4, true));
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
    if (this.d != null)
      paramJceOutputStream.write(this.d, 3);
    paramJceOutputStream.write(this.e, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     strategy.UploadStrategyPackage
 * JD-Core Version:    0.6.2
 */