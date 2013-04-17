package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class CmdInfoRes extends JceStruct
  implements Cloneable
{
  static ArrayList<CloudInfoRes> cache_infores;
  public ArrayList<CloudInfoRes> infores = null;

  static
  {
    if (!CmdInfoRes.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CmdInfoRes()
  {
    setInfores(this.infores);
  }

  public CmdInfoRes(ArrayList<CloudInfoRes> paramArrayList)
  {
    setInfores(paramArrayList);
  }

  public final String className()
  {
    return "QQPIM.CmdInfoRes";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.infores, "infores");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    CmdInfoRes localCmdInfoRes;
    for (boolean bool = false; ; bool = JceUtil.equals(this.infores, localCmdInfoRes.infores))
    {
      return bool;
      localCmdInfoRes = (CmdInfoRes)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CmdInfoRes";
  }

  public final ArrayList<CloudInfoRes> getInfores()
  {
    return this.infores;
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
    if (cache_infores == null)
    {
      cache_infores = new ArrayList();
      CloudInfoRes localCloudInfoRes = new CloudInfoRes();
      cache_infores.add(localCloudInfoRes);
    }
    setInfores((ArrayList)paramJceInputStream.read(cache_infores, 1, true));
  }

  public final void setInfores(ArrayList<CloudInfoRes> paramArrayList)
  {
    this.infores = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.infores, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CmdInfoRes
 * JD-Core Version:    0.6.2
 */