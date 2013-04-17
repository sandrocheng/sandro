package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ProductVersion extends JceStruct
  implements Cloneable
{
  public int cversion = 0;
  public int hotfix = 0;
  public int pversion = 0;

  static
  {
    if (!ProductVersion.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ProductVersion()
  {
    setPversion(this.pversion);
    setCversion(this.cversion);
    setHotfix(this.hotfix);
  }

  public ProductVersion(int paramInt1, int paramInt2, int paramInt3)
  {
    setPversion(paramInt1);
    setCversion(paramInt2);
    setHotfix(paramInt3);
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
    localJceDisplayer.display(this.pversion, "pversion");
    localJceDisplayer.display(this.cversion, "cversion");
    localJceDisplayer.display(this.hotfix, "hotfix");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ProductVersion localProductVersion = (ProductVersion)paramObject;
      boolean bool2 = JceUtil.equals(this.pversion, localProductVersion.pversion);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.cversion, localProductVersion.cversion);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.hotfix, localProductVersion.hotfix);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final int getCversion()
  {
    return this.cversion;
  }

  public final int getHotfix()
  {
    return this.hotfix;
  }

  public final int getPversion()
  {
    return this.pversion;
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
    this.pversion = paramJceInputStream.read(this.pversion, 1, true);
    this.cversion = paramJceInputStream.read(this.cversion, 2, true);
    this.hotfix = paramJceInputStream.read(this.hotfix, 3, true);
  }

  public final void setCversion(int paramInt)
  {
    this.cversion = paramInt;
  }

  public final void setHotfix(int paramInt)
  {
    this.hotfix = paramInt;
  }

  public final void setPversion(int paramInt)
  {
    this.pversion = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.pversion, 1);
    paramJceOutputStream.write(this.cversion, 2);
    paramJceOutputStream.write(this.hotfix, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.ProductVersion
 * JD-Core Version:    0.6.2
 */