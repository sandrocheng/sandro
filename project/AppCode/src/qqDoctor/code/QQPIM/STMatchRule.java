package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STMatchRule extends JceStruct
  implements Cloneable
{
  public String postfix = "";
  public String prefix = "";
  public int type = 0;
  public int unit = 0;

  static
  {
    if (!STMatchRule.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STMatchRule()
  {
    setUnit(this.unit);
    setType(this.type);
    setPrefix(this.prefix);
    setPostfix(this.postfix);
  }

  public STMatchRule(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    setUnit(paramInt1);
    setType(paramInt2);
    setPrefix(paramString1);
    setPostfix(paramString2);
  }

  public final String className()
  {
    return "QQPIM.STMatchRule";
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
    localJceDisplayer.display(this.unit, "unit");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.prefix, "prefix");
    localJceDisplayer.display(this.postfix, "postfix");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STMatchRule localSTMatchRule = (STMatchRule)paramObject;
      boolean bool2 = JceUtil.equals(this.unit, localSTMatchRule.unit);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.type, localSTMatchRule.type);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.prefix, localSTMatchRule.prefix);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.postfix, localSTMatchRule.postfix);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STMatchRule";
  }

  public final String getPostfix()
  {
    return this.postfix;
  }

  public final String getPrefix()
  {
    return this.prefix;
  }

  public final int getType()
  {
    return this.type;
  }

  public final int getUnit()
  {
    return this.unit;
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
    this.unit = paramJceInputStream.read(this.unit, 0, true);
    this.type = paramJceInputStream.read(this.type, 1, true);
    this.prefix = paramJceInputStream.readString(2, true);
    this.postfix = paramJceInputStream.readString(3, false);
  }

  public final void setPostfix(String paramString)
  {
    this.postfix = paramString;
  }

  public final void setPrefix(String paramString)
  {
    this.prefix = paramString;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void setUnit(int paramInt)
  {
    this.unit = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.unit, 0);
    paramJceOutputStream.write(this.type, 1);
    paramJceOutputStream.write(this.prefix, 2);
    if (this.postfix != null)
      paramJceOutputStream.write(this.postfix, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STMatchRule
 * JD-Core Version:    0.6.2
 */