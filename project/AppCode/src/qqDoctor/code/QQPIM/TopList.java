package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class TopList extends JceStruct
  implements Cloneable
{
  static ArrayList<ModelMarkInfo> cache_markinfos;
  public ArrayList<ModelMarkInfo> markinfos = null;
  public int modelmarkid = 0;

  static
  {
    if (!TopList.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TopList()
  {
    setModelmarkid(this.modelmarkid);
    setMarkinfos(this.markinfos);
  }

  public TopList(int paramInt, ArrayList<ModelMarkInfo> paramArrayList)
  {
    setModelmarkid(paramInt);
    setMarkinfos(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.TopList";
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
    localJceDisplayer.display(this.modelmarkid, "modelmarkid");
    localJceDisplayer.display(this.markinfos, "markinfos");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TopList localTopList = (TopList)paramObject;
      boolean bool2 = JceUtil.equals(this.modelmarkid, localTopList.modelmarkid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.markinfos, localTopList.markinfos);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.TopList";
  }

  public final ArrayList<ModelMarkInfo> getMarkinfos()
  {
    return this.markinfos;
  }

  public final int getModelmarkid()
  {
    return this.modelmarkid;
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
    this.modelmarkid = paramJceInputStream.read(this.modelmarkid, 0, true);
    if (cache_markinfos == null)
    {
      cache_markinfos = new ArrayList();
      ModelMarkInfo localModelMarkInfo = new ModelMarkInfo();
      cache_markinfos.add(localModelMarkInfo);
    }
    setMarkinfos((ArrayList)paramJceInputStream.read(cache_markinfos, 1, true));
  }

  public final void setMarkinfos(ArrayList<ModelMarkInfo> paramArrayList)
  {
    this.markinfos = paramArrayList;
  }

  public final void setModelmarkid(int paramInt)
  {
    this.modelmarkid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.modelmarkid, 0);
    paramJceOutputStream.write(this.markinfos, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TopList
 * JD-Core Version:    0.6.2
 */