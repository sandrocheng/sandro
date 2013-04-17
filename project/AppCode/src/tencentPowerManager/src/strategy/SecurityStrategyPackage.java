package strategy;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SecurityStrategyPackage extends JceStruct
{
  private String a = "";
  private String b = "";
  private int c = 0;
  private int d = 0;

  static
  {
    if (!SecurityStrategyPackage.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      e = bool;
      return;
    }
  }

  public final String a()
  {
    return this.a;
  }

  public final int b()
  {
    return this.c;
  }

  public final int c()
  {
    return this.d;
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
        bool = e;
        Object localObject1 = null;
      }
      while (bool);
    }
    throw new AssertionError();
  }

  public final void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.a, "encryKey");
    localJceDisplayer.display(this.b, "encryPublicKey");
    localJceDisplayer.display(this.c, "encryAlgorithm");
    localJceDisplayer.display(this.d, "zipAlgorithm");
  }

  public final boolean equals(Object paramObject)
  {
    SecurityStrategyPackage localSecurityStrategyPackage = (SecurityStrategyPackage)paramObject;
    if ((JceUtil.equals(this.a, localSecurityStrategyPackage.a)) && (JceUtil.equals(this.b, localSecurityStrategyPackage.b)) && (JceUtil.equals(this.c, localSecurityStrategyPackage.c)) && (JceUtil.equals(this.d, localSecurityStrategyPackage.d)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.a = paramJceInputStream.readString(0, true);
    this.b = paramJceInputStream.readString(1, true);
    this.c = paramJceInputStream.read(this.c, 2, false);
    this.d = paramJceInputStream.read(this.d, 3, false);
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.a, 0);
    paramJceOutputStream.write(this.b, 1);
    paramJceOutputStream.write(this.c, 2);
    paramJceOutputStream.write(this.d, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     strategy.SecurityStrategyPackage
 * JD-Core Version:    0.6.2
 */