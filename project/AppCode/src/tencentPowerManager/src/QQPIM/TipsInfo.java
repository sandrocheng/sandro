package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TipsInfo extends JceStruct
  implements Cloneable
{
  public int atype = 0;
  public String msg = "";
  public String title = "";
  public int type = 0;

  static
  {
    if (!TipsInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TipsInfo()
  {
    setTitle(this.title);
    setMsg(this.msg);
    setType(this.type);
    setAtype(this.atype);
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
    localJceDisplayer.display(this.msg, "msg");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.atype, "atype");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TipsInfo localTipsInfo = (TipsInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.title, localTipsInfo.title);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.msg, localTipsInfo.msg);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.type, localTipsInfo.type);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.atype, localTipsInfo.atype);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final int getAtype()
  {
    return this.atype;
  }

  public final String getMsg()
  {
    return this.msg;
  }

  public final String getTitle()
  {
    return this.title;
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
    this.msg = paramJceInputStream.readString(1, true);
    this.type = paramJceInputStream.read(this.type, 2, true);
    this.atype = paramJceInputStream.read(this.atype, 3, true);
  }

  public final void setAtype(int paramInt)
  {
    this.atype = paramInt;
  }

  public final void setMsg(String paramString)
  {
    this.msg = paramString;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setType(int paramInt)
  {
    this.type = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.title, 0);
    paramJceOutputStream.write(this.msg, 1);
    paramJceOutputStream.write(this.type, 2);
    paramJceOutputStream.write(this.atype, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     QQPIM.TipsInfo
 * JD-Core Version:    0.6.2
 */