package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class BrowserResult extends JceStruct
  implements Cloneable
{
  static int cache_safeType;
  public String checkAdvise = "";
  public String checkDesc = "";
  public int safeType = 0;

  static
  {
    if (!BrowserResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public BrowserResult()
  {
    setSafeType(this.safeType);
    setCheckDesc(this.checkDesc);
    setCheckAdvise(this.checkAdvise);
  }

  public BrowserResult(int paramInt, String paramString1, String paramString2)
  {
    setSafeType(paramInt);
    setCheckDesc(paramString1);
    setCheckAdvise(paramString2);
  }

  public final String className()
  {
    return "QQPIM.BrowserResult";
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
    localJceDisplayer.display(this.safeType, "safeType");
    localJceDisplayer.display(this.checkDesc, "checkDesc");
    localJceDisplayer.display(this.checkAdvise, "checkAdvise");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      BrowserResult localBrowserResult = (BrowserResult)paramObject;
      boolean bool2 = JceUtil.equals(this.safeType, localBrowserResult.safeType);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.checkDesc, localBrowserResult.checkDesc);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.checkAdvise, localBrowserResult.checkAdvise);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.BrowserResult";
  }

  public final String getCheckAdvise()
  {
    return this.checkAdvise;
  }

  public final String getCheckDesc()
  {
    return this.checkDesc;
  }

  public final int getSafeType()
  {
    return this.safeType;
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
    this.safeType = paramJceInputStream.read(this.safeType, 0, true);
    this.checkDesc = paramJceInputStream.readString(1, false);
    this.checkAdvise = paramJceInputStream.readString(2, false);
  }

  public final void setCheckAdvise(String paramString)
  {
    this.checkAdvise = paramString;
  }

  public final void setCheckDesc(String paramString)
  {
    this.checkDesc = paramString;
  }

  public final void setSafeType(int paramInt)
  {
    this.safeType = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.safeType, 0);
    if (this.checkDesc != null)
      paramJceOutputStream.write(this.checkDesc, 1);
    if (this.checkAdvise != null)
      paramJceOutputStream.write(this.checkAdvise, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.BrowserResult
 * JD-Core Version:    0.6.2
 */