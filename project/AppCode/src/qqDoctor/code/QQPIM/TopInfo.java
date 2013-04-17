package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TopInfo extends JceStruct
  implements Cloneable
{
  static int cache_ranktype;
  static int cache_timetype;
  public int ranktype = 0;
  public int timetype = 0;
  public int topn = 0;

  static
  {
    if (!TopInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TopInfo()
  {
    setTopn(this.topn);
    setRanktype(this.ranktype);
    setTimetype(this.timetype);
  }

  public TopInfo(int paramInt1, int paramInt2, int paramInt3)
  {
    setTopn(paramInt1);
    setRanktype(paramInt2);
    setTimetype(paramInt3);
  }

  public final String className()
  {
    return "QQPIM.TopInfo";
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
    localJceDisplayer.display(this.topn, "topn");
    localJceDisplayer.display(this.ranktype, "ranktype");
    localJceDisplayer.display(this.timetype, "timetype");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TopInfo localTopInfo = (TopInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.topn, localTopInfo.topn);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.ranktype, localTopInfo.ranktype);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.timetype, localTopInfo.timetype);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.TopInfo";
  }

  public final int getRanktype()
  {
    return this.ranktype;
  }

  public final int getTimetype()
  {
    return this.timetype;
  }

  public final int getTopn()
  {
    return this.topn;
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
    this.topn = paramJceInputStream.read(this.topn, 0, true);
    this.ranktype = paramJceInputStream.read(this.ranktype, 1, true);
    this.timetype = paramJceInputStream.read(this.timetype, 2, true);
  }

  public final void setRanktype(int paramInt)
  {
    this.ranktype = paramInt;
  }

  public final void setTimetype(int paramInt)
  {
    this.timetype = paramInt;
  }

  public final void setTopn(int paramInt)
  {
    this.topn = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.topn, 0);
    paramJceOutputStream.write(this.ranktype, 1);
    paramJceOutputStream.write(this.timetype, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TopInfo
 * JD-Core Version:    0.6.2
 */