package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class CommentInfo extends JceStruct
  implements Cloneable
{
  static SoftKey cache_softkey;
  public String comment = "";
  public int score = 0;
  public SoftKey softkey = null;

  static
  {
    if (!CommentInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public CommentInfo()
  {
    setSoftkey(this.softkey);
    setScore(this.score);
    setComment(this.comment);
  }

  public CommentInfo(SoftKey paramSoftKey, int paramInt, String paramString)
  {
    setSoftkey(paramSoftKey);
    setScore(paramInt);
    setComment(paramString);
  }

  public final String className()
  {
    return "QQPIM.CommentInfo";
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
    localJceDisplayer.display(this.softkey, "softkey");
    localJceDisplayer.display(this.score, "score");
    localJceDisplayer.display(this.comment, "comment");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      CommentInfo localCommentInfo = (CommentInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.softkey, localCommentInfo.softkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.score, localCommentInfo.score);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.comment, localCommentInfo.comment);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.CommentInfo";
  }

  public final String getComment()
  {
    return this.comment;
  }

  public final int getScore()
  {
    return this.score;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
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
    if (cache_softkey == null)
      cache_softkey = new SoftKey();
    this.softkey = ((SoftKey)paramJceInputStream.read(cache_softkey, 0, true));
    this.score = paramJceInputStream.read(this.score, 1, false);
    this.comment = paramJceInputStream.readString(2, false);
  }

  public final void setComment(String paramString)
  {
    this.comment = paramString;
  }

  public final void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softkey, 0);
    paramJceOutputStream.write(this.score, 1);
    if (this.comment != null)
      paramJceOutputStream.write(this.comment, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.CommentInfo
 * JD-Core Version:    0.6.2
 */