package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RankInfo extends JceStruct
  implements Cloneable
{
  public int modelrank = 0;
  public int modeltotal = 0;
  public int rank = 0;
  public int total = 0;

  static
  {
    if (!RankInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RankInfo()
  {
    setRank(this.rank);
    setModelrank(this.modelrank);
    setTotal(this.total);
    setModeltotal(this.modeltotal);
  }

  public RankInfo(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    setRank(paramInt1);
    setModelrank(paramInt2);
    setTotal(paramInt3);
    setModeltotal(paramInt4);
  }

  public final String className()
  {
    return "QQPIM.RankInfo";
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
    localJceDisplayer.display(this.rank, "rank");
    localJceDisplayer.display(this.modelrank, "modelrank");
    localJceDisplayer.display(this.total, "total");
    localJceDisplayer.display(this.modeltotal, "modeltotal");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      RankInfo localRankInfo = (RankInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.rank, localRankInfo.rank);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.modelrank, localRankInfo.modelrank);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.total, localRankInfo.total);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.modeltotal, localRankInfo.modeltotal);
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
    return "QQPIM.RankInfo";
  }

  public final int getModelrank()
  {
    return this.modelrank;
  }

  public final int getModeltotal()
  {
    return this.modeltotal;
  }

  public final int getRank()
  {
    return this.rank;
  }

  public final int getTotal()
  {
    return this.total;
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
    this.rank = paramJceInputStream.read(this.rank, 0, true);
    this.modelrank = paramJceInputStream.read(this.modelrank, 1, true);
    this.total = paramJceInputStream.read(this.total, 2, true);
    this.modeltotal = paramJceInputStream.read(this.modeltotal, 3, true);
  }

  public final void setModelrank(int paramInt)
  {
    this.modelrank = paramInt;
  }

  public final void setModeltotal(int paramInt)
  {
    this.modeltotal = paramInt;
  }

  public final void setRank(int paramInt)
  {
    this.rank = paramInt;
  }

  public final void setTotal(int paramInt)
  {
    this.total = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.rank, 0);
    paramJceOutputStream.write(this.modelrank, 1);
    paramJceOutputStream.write(this.total, 2);
    paramJceOutputStream.write(this.modeltotal, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RankInfo
 * JD-Core Version:    0.6.2
 */