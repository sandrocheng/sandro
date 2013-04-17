package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TopRankInfo extends JceStruct
  implements Cloneable
{
  public String model = "";
  public String os = "";
  public int score = 0;
  public String user = "";

  static
  {
    if (!TopRankInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TopRankInfo()
  {
    setUser(this.user);
    setModel(this.model);
    setOs(this.os);
    setScore(this.score);
  }

  public TopRankInfo(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    setUser(paramString1);
    setModel(paramString2);
    setOs(paramString3);
    setScore(paramInt);
  }

  public final String className()
  {
    return "QQPIM.TopRankInfo";
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
    localJceDisplayer.display(this.user, "user");
    localJceDisplayer.display(this.model, "model");
    localJceDisplayer.display(this.os, "os");
    localJceDisplayer.display(this.score, "score");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TopRankInfo localTopRankInfo = (TopRankInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.user, localTopRankInfo.user);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.model, localTopRankInfo.model);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.os, localTopRankInfo.os);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.score, localTopRankInfo.score);
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
    return "QQPIM.TopRankInfo";
  }

  public final String getModel()
  {
    return this.model;
  }

  public final String getOs()
  {
    return this.os;
  }

  public final int getScore()
  {
    return this.score;
  }

  public final String getUser()
  {
    return this.user;
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
    this.user = paramJceInputStream.readString(0, true);
    this.model = paramJceInputStream.readString(1, true);
    this.os = paramJceInputStream.readString(2, true);
    this.score = paramJceInputStream.read(this.score, 3, true);
  }

  public final void setModel(String paramString)
  {
    this.model = paramString;
  }

  public final void setOs(String paramString)
  {
    this.os = paramString;
  }

  public final void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public final void setUser(String paramString)
  {
    this.user = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.user, 0);
    paramJceOutputStream.write(this.model, 1);
    paramJceOutputStream.write(this.os, 2);
    paramJceOutputStream.write(this.score, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TopRankInfo
 * JD-Core Version:    0.6.2
 */