package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class SoftList extends JceStruct
  implements Cloneable
{
  static ArrayList<SoftElementInfo> cache_vctSofts;
  public ArrayList<SoftElementInfo> vctSofts = null;

  static
  {
    if (!SoftList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftList()
  {
    setVctSofts(this.vctSofts);
  }

  public SoftList(ArrayList<SoftElementInfo> paramArrayList)
  {
    setVctSofts(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.SoftList";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.vctSofts, "vctSofts");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    SoftList localSoftList;
    for (boolean bool = false; ; bool = JceUtil.equals(this.vctSofts, localSoftList.vctSofts))
    {
      return bool;
      localSoftList = (SoftList)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.SoftList";
  }

  public final ArrayList<SoftElementInfo> getVctSofts()
  {
    return this.vctSofts;
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
    if (cache_vctSofts == null)
    {
      cache_vctSofts = new ArrayList();
      SoftElementInfo localSoftElementInfo = new SoftElementInfo();
      cache_vctSofts.add(localSoftElementInfo);
    }
    setVctSofts((ArrayList)paramJceInputStream.read(cache_vctSofts, 0, true));
  }

  public final void setVctSofts(ArrayList<SoftElementInfo> paramArrayList)
  {
    this.vctSofts = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.vctSofts, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftList
 * JD-Core Version:    0.6.2
 */