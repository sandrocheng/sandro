package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STCodeResult extends JceStruct
  implements Cloneable
{
  static ArrayList<STQueryInfo> cache_queryinfo;
  public ArrayList<STQueryInfo> queryinfo = null;
  public String strSimetype = "";

  static
  {
    if (!STCodeResult.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STCodeResult()
  {
    setStrSimetype(this.strSimetype);
    setQueryinfo(this.queryinfo);
  }

  public STCodeResult(String paramString, ArrayList<STQueryInfo> paramArrayList)
  {
    setStrSimetype(paramString);
    setQueryinfo(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.STCodeResult";
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
    localJceDisplayer.display(this.strSimetype, "strSimetype");
    localJceDisplayer.display(this.queryinfo, "queryinfo");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STCodeResult localSTCodeResult = (STCodeResult)paramObject;
      boolean bool2 = JceUtil.equals(this.strSimetype, localSTCodeResult.strSimetype);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.queryinfo, localSTCodeResult.queryinfo);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STCodeResult";
  }

  public final ArrayList<STQueryInfo> getQueryinfo()
  {
    return this.queryinfo;
  }

  public final String getStrSimetype()
  {
    return this.strSimetype;
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
    this.strSimetype = paramJceInputStream.readString(0, false);
    if (cache_queryinfo == null)
    {
      cache_queryinfo = new ArrayList();
      STQueryInfo localSTQueryInfo = new STQueryInfo();
      cache_queryinfo.add(localSTQueryInfo);
    }
    setQueryinfo((ArrayList)paramJceInputStream.read(cache_queryinfo, 1, false));
  }

  public final void setQueryinfo(ArrayList<STQueryInfo> paramArrayList)
  {
    this.queryinfo = paramArrayList;
  }

  public final void setStrSimetype(String paramString)
  {
    this.strSimetype = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.strSimetype != null)
      paramJceOutputStream.write(this.strSimetype, 0);
    if (this.queryinfo != null)
      paramJceOutputStream.write(this.queryinfo, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STCodeResult
 * JD-Core Version:    0.6.2
 */