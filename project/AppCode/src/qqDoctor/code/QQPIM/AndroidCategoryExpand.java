package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AndroidCategoryExpand extends JceStruct
  implements Cloneable
{
  static int cache_ispush;
  public int agree = 0;
  public int createtime = 0;
  public int disagree = 0;
  public int ispush = ECategoryPushType.CPUSH_NONE.value();
  public int updatetime = 0;

  static
  {
    if (!AndroidCategoryExpand.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public AndroidCategoryExpand()
  {
    setCreatetime(this.createtime);
    setAgree(this.agree);
    setDisagree(this.disagree);
    setIspush(this.ispush);
    setUpdatetime(this.updatetime);
  }

  public AndroidCategoryExpand(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    setCreatetime(paramInt1);
    setAgree(paramInt2);
    setDisagree(paramInt3);
    setIspush(paramInt4);
    setUpdatetime(paramInt5);
  }

  public final String className()
  {
    return "QQPIM.AndroidCategoryExpand";
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
    localJceDisplayer.display(this.createtime, "createtime");
    localJceDisplayer.display(this.agree, "agree");
    localJceDisplayer.display(this.disagree, "disagree");
    localJceDisplayer.display(this.ispush, "ispush");
    localJceDisplayer.display(this.updatetime, "updatetime");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      AndroidCategoryExpand localAndroidCategoryExpand = (AndroidCategoryExpand)paramObject;
      boolean bool2 = JceUtil.equals(this.createtime, localAndroidCategoryExpand.createtime);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.agree, localAndroidCategoryExpand.agree);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.disagree, localAndroidCategoryExpand.disagree);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.ispush, localAndroidCategoryExpand.ispush);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.updatetime, localAndroidCategoryExpand.updatetime);
              bool1 = false;
              if (bool6)
                bool1 = true;
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.AndroidCategoryExpand";
  }

  public final int getAgree()
  {
    return this.agree;
  }

  public final int getCreatetime()
  {
    return this.createtime;
  }

  public final int getDisagree()
  {
    return this.disagree;
  }

  public final int getIspush()
  {
    return this.ispush;
  }

  public final int getUpdatetime()
  {
    return this.updatetime;
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
    this.createtime = paramJceInputStream.read(this.createtime, 0, false);
    this.agree = paramJceInputStream.read(this.agree, 1, false);
    this.disagree = paramJceInputStream.read(this.disagree, 2, false);
    this.ispush = paramJceInputStream.read(this.ispush, 3, false);
    this.updatetime = paramJceInputStream.read(this.updatetime, 4, false);
  }

  public final void setAgree(int paramInt)
  {
    this.agree = paramInt;
  }

  public final void setCreatetime(int paramInt)
  {
    this.createtime = paramInt;
  }

  public final void setDisagree(int paramInt)
  {
    this.disagree = paramInt;
  }

  public final void setIspush(int paramInt)
  {
    this.ispush = paramInt;
  }

  public final void setUpdatetime(int paramInt)
  {
    this.updatetime = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.createtime, 0);
    paramJceOutputStream.write(this.agree, 1);
    paramJceOutputStream.write(this.disagree, 2);
    paramJceOutputStream.write(this.ispush, 3);
    paramJceOutputStream.write(this.updatetime, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.AndroidCategoryExpand
 * JD-Core Version:    0.6.2
 */