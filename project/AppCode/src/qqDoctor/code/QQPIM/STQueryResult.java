package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STQueryResult extends JceStruct
  implements Cloneable
{
  static ArrayList<STQueryInfo> cache_queryinfo;
  public ArrayList<STQueryInfo> queryinfo = null;

  static
  {
    if (!STQueryResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STQueryResult()
  {
    setQueryinfo(this.queryinfo);
  }

  public STQueryResult(ArrayList<STQueryInfo> paramArrayList)
  {
    setQueryinfo(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.STQueryResult";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.queryinfo, "queryinfo");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    STQueryResult localSTQueryResult;
    for (boolean bool = false; ; bool = JceUtil.equals(this.queryinfo, localSTQueryResult.queryinfo))
    {
      return bool;
      localSTQueryResult = (STQueryResult)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STQueryResult";
  }

  public final ArrayList<STQueryInfo> getQueryinfo()
  {
    return this.queryinfo;
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
    if (cache_queryinfo == null)
    {
      cache_queryinfo = new ArrayList();
      STQueryInfo localSTQueryInfo = new STQueryInfo();
      cache_queryinfo.add(localSTQueryInfo);
    }
    setQueryinfo((ArrayList)paramJceInputStream.read(cache_queryinfo, 0, false));
  }

  public final void setQueryinfo(ArrayList<STQueryInfo> paramArrayList)
  {
    this.queryinfo = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.queryinfo != null)
      paramJceOutputStream.write(this.queryinfo, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STQueryResult
 * JD-Core Version:    0.6.2
 */