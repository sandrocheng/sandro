package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STReportBack extends JceStruct
  implements Cloneable
{
  public int nreserve = 0;

  static
  {
    if (!STReportBack.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STReportBack()
  {
    setNreserve(this.nreserve);
  }

  public STReportBack(int paramInt)
  {
    setNreserve(paramInt);
  }

  public final String className()
  {
    return "QQPIM.STReportBack";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.nreserve, "nreserve");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    STReportBack localSTReportBack;
    for (boolean bool = false; ; bool = JceUtil.equals(this.nreserve, localSTReportBack.nreserve))
    {
      return bool;
      localSTReportBack = (STReportBack)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STReportBack";
  }

  public final int getNreserve()
  {
    return this.nreserve;
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
    this.nreserve = paramJceInputStream.read(this.nreserve, 0, false);
  }

  public final void setNreserve(int paramInt)
  {
    this.nreserve = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nreserve, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STReportBack
 * JD-Core Version:    0.6.2
 */