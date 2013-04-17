package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftScore extends JceStruct
  implements Cloneable
{
  public int score = 0;
  public String softname = "";
  public String uid = "";
  public int user_num = 0;

  static
  {
    if (!SoftScore.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftScore()
  {
    setSoftname(this.softname);
    setScore(this.score);
    setUser_num(this.user_num);
    setUid(this.uid);
  }

  public SoftScore(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    setSoftname(paramString1);
    setScore(paramInt1);
    setUser_num(paramInt2);
    setUid(paramString2);
  }

  public final String className()
  {
    return "QQPIM.SoftScore";
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
    localJceDisplayer.display(this.softname, "softname");
    localJceDisplayer.display(this.score, "score");
    localJceDisplayer.display(this.user_num, "user_num");
    localJceDisplayer.display(this.uid, "uid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftScore localSoftScore = (SoftScore)paramObject;
      boolean bool2 = JceUtil.equals(this.softname, localSoftScore.softname);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.score, localSoftScore.score);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.user_num, localSoftScore.user_num);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.uid, localSoftScore.uid);
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
    return "QQPIM.SoftScore";
  }

  public final int getScore()
  {
    return this.score;
  }

  public final String getSoftname()
  {
    return this.softname;
  }

  public final String getUid()
  {
    return this.uid;
  }

  public final int getUser_num()
  {
    return this.user_num;
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
    this.softname = paramJceInputStream.readString(0, true);
    this.score = paramJceInputStream.read(this.score, 1, false);
    this.user_num = paramJceInputStream.read(this.user_num, 2, false);
    this.uid = paramJceInputStream.readString(3, false);
  }

  public final void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public final void setSoftname(String paramString)
  {
    this.softname = paramString;
  }

  public final void setUid(String paramString)
  {
    this.uid = paramString;
  }

  public final void setUser_num(int paramInt)
  {
    this.user_num = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softname, 0);
    paramJceOutputStream.write(this.score, 1);
    paramJceOutputStream.write(this.user_num, 2);
    if (this.uid != null)
      paramJceOutputStream.write(this.uid, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftScore
 * JD-Core Version:    0.6.2
 */