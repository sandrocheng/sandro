package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class VECReportError extends JceStruct
  implements Cloneable
{
  static ArrayList<STReportError> cache_queryinfo;
  public ArrayList<STReportError> queryinfo = null;

  static
  {
    if (!VECReportError.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public VECReportError()
  {
    setQueryinfo(this.queryinfo);
  }

  public VECReportError(ArrayList<STReportError> paramArrayList)
  {
    setQueryinfo(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.VECReportError";
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
    VECReportError localVECReportError;
    for (boolean bool = false; ; bool = JceUtil.equals(this.queryinfo, localVECReportError.queryinfo))
    {
      return bool;
      localVECReportError = (VECReportError)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.VECReportError";
  }

  public final ArrayList<STReportError> getQueryinfo()
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
      STReportError localSTReportError = new STReportError();
      cache_queryinfo.add(localSTReportError);
    }
    setQueryinfo((ArrayList)paramJceInputStream.read(cache_queryinfo, 0, true));
  }

  public final void setQueryinfo(ArrayList<STReportError> paramArrayList)
  {
    this.queryinfo = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.queryinfo, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.VECReportError
 * JD-Core Version:    0.6.2
 */