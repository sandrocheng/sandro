package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class Comment extends JceStruct
  implements Cloneable
{
  public String comment = "";
  public int score = 0;
  public String title = "";
  public String user = "";

  static
  {
    if (!Comment.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public Comment()
  {
    setTitle(this.title);
    setComment(this.comment);
    setUser(this.user);
    setScore(this.score);
  }

  public Comment(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    setTitle(paramString1);
    setComment(paramString2);
    setUser(paramString3);
    setScore(paramInt);
  }

  public final String className()
  {
    return "QQPIM.Comment";
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
    localJceDisplayer.display(this.title, "title");
    localJceDisplayer.display(this.comment, "comment");
    localJceDisplayer.display(this.user, "user");
    localJceDisplayer.display(this.score, "score");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      Comment localComment = (Comment)paramObject;
      boolean bool2 = JceUtil.equals(this.title, localComment.title);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.comment, localComment.comment);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.user, localComment.user);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.score, localComment.score);
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
    return "QQPIM.Comment";
  }

  public final String getComment()
  {
    return this.comment;
  }

  public final int getScore()
  {
    return this.score;
  }

  public final String getTitle()
  {
    return this.title;
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
    this.title = paramJceInputStream.readString(0, true);
    this.comment = paramJceInputStream.readString(1, true);
    this.user = paramJceInputStream.readString(2, true);
    this.score = paramJceInputStream.read(this.score, 3, true);
  }

  public final void setComment(String paramString)
  {
    this.comment = paramString;
  }

  public final void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setUser(String paramString)
  {
    this.user = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.title, 0);
    paramJceOutputStream.write(this.comment, 1);
    paramJceOutputStream.write(this.user, 2);
    paramJceOutputStream.write(this.score, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.Comment
 * JD-Core Version:    0.6.2
 */