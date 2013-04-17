package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STVecCodeResult extends JceStruct
  implements Cloneable
{
  static ArrayList<STCodeResult> cache_queryresult;
  public ArrayList<STCodeResult> queryresult = null;

  static
  {
    if (!STVecCodeResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STVecCodeResult()
  {
    setQueryresult(this.queryresult);
  }

  public STVecCodeResult(ArrayList<STCodeResult> paramArrayList)
  {
    setQueryresult(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.STVecCodeResult";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.queryresult, "queryresult");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    STVecCodeResult localSTVecCodeResult;
    for (boolean bool = false; ; bool = JceUtil.equals(this.queryresult, localSTVecCodeResult.queryresult))
    {
      return bool;
      localSTVecCodeResult = (STVecCodeResult)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STVecCodeResult";
  }

  public final ArrayList<STCodeResult> getQueryresult()
  {
    return this.queryresult;
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
    if (cache_queryresult == null)
    {
      cache_queryresult = new ArrayList();
      STCodeResult localSTCodeResult = new STCodeResult();
      cache_queryresult.add(localSTCodeResult);
    }
    setQueryresult((ArrayList)paramJceInputStream.read(cache_queryresult, 0, false));
  }

  public final void setQueryresult(ArrayList<STCodeResult> paramArrayList)
  {
    this.queryresult = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.queryresult != null)
      paramJceOutputStream.write(this.queryresult, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STVecCodeResult
 * JD-Core Version:    0.6.2
 */