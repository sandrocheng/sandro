package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STQuery extends JceStruct
  implements Cloneable
{
  public String nArea = "";
  public String nOperator = "";
  public int nQuerytype = 0;
  public String nType = "";

  static
  {
    if (!STQuery.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STQuery()
  {
    setNArea(this.nArea);
    setNOperator(this.nOperator);
    setNType(this.nType);
    setNQuerytype(this.nQuerytype);
  }

  public STQuery(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    setNArea(paramString1);
    setNOperator(paramString2);
    setNType(paramString3);
    setNQuerytype(paramInt);
  }

  public final String className()
  {
    return "QQPIM.STQuery";
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
    localJceDisplayer.display(this.nArea, "nArea");
    localJceDisplayer.display(this.nOperator, "nOperator");
    localJceDisplayer.display(this.nType, "nType");
    localJceDisplayer.display(this.nQuerytype, "nQuerytype");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STQuery localSTQuery = (STQuery)paramObject;
      boolean bool2 = JceUtil.equals(this.nArea, localSTQuery.nArea);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.nOperator, localSTQuery.nOperator);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.nType, localSTQuery.nType);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.nQuerytype, localSTQuery.nQuerytype);
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
    return "QQPIM.STQuery";
  }

  public final String getNArea()
  {
    return this.nArea;
  }

  public final String getNOperator()
  {
    return this.nOperator;
  }

  public final int getNQuerytype()
  {
    return this.nQuerytype;
  }

  public final String getNType()
  {
    return this.nType;
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
    this.nArea = paramJceInputStream.readString(0, true);
    this.nOperator = paramJceInputStream.readString(1, true);
    this.nType = paramJceInputStream.readString(2, true);
    this.nQuerytype = paramJceInputStream.read(this.nQuerytype, 3, true);
  }

  public final void setNArea(String paramString)
  {
    this.nArea = paramString;
  }

  public final void setNOperator(String paramString)
  {
    this.nOperator = paramString;
  }

  public final void setNQuerytype(int paramInt)
  {
    this.nQuerytype = paramInt;
  }

  public final void setNType(String paramString)
  {
    this.nType = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nArea, 0);
    paramJceOutputStream.write(this.nOperator, 1);
    paramJceOutputStream.write(this.nType, 2);
    paramJceOutputStream.write(this.nQuerytype, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STQuery
 * JD-Core Version:    0.6.2
 */