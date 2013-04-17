package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class ScoreInfo extends JceStruct
  implements Cloneable
{
  public int score = 0;
  public String scoredetail = "";
  public String user = "";

  static
  {
    if (!ScoreInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public ScoreInfo()
  {
    setUser(this.user);
    setScore(this.score);
    setScoredetail(this.scoredetail);
  }

  public ScoreInfo(String paramString1, int paramInt, String paramString2)
  {
    setUser(paramString1);
    setScore(paramInt);
    setScoredetail(paramString2);
  }

  public final String className()
  {
    return "QQPIM.ScoreInfo";
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
    localJceDisplayer.display(this.score, "score");
    localJceDisplayer.display(this.scoredetail, "scoredetail");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      ScoreInfo localScoreInfo = (ScoreInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.user, localScoreInfo.user);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.score, localScoreInfo.score);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.scoredetail, localScoreInfo.scoredetail);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.ScoreInfo";
  }

  public final int getScore()
  {
    return this.score;
  }

  public final String getScoredetail()
  {
    return this.scoredetail;
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
    this.score = paramJceInputStream.read(this.score, 1, true);
    this.scoredetail = paramJceInputStream.readString(2, true);
  }

  public final void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public final void setScoredetail(String paramString)
  {
    this.scoredetail = paramString;
  }

  public final void setUser(String paramString)
  {
    this.user = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.user, 0);
    paramJceOutputStream.write(this.score, 1);
    paramJceOutputStream.write(this.scoredetail, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.ScoreInfo
 * JD-Core Version:    0.6.2
 */