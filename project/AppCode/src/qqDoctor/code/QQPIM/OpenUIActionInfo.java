package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class OpenUIActionInfo extends JceStruct
  implements Cloneable
{
  public int action = 0;
  public String msg = "";
  public String title = "";
  public int uiid = 0;

  static
  {
    if (!OpenUIActionInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public OpenUIActionInfo()
  {
    setUiid(this.uiid);
    setAction(this.action);
    setTitle(this.title);
    setMsg(this.msg);
  }

  public OpenUIActionInfo(int paramInt1, int paramInt2, String paramString1, String paramString2)
  {
    setUiid(paramInt1);
    setAction(paramInt2);
    setTitle(paramString1);
    setMsg(paramString2);
  }

  public final String className()
  {
    return "QQPIM.OpenUIActionInfo";
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
    localJceDisplayer.display(this.uiid, "uiid");
    localJceDisplayer.display(this.action, "action");
    localJceDisplayer.display(this.title, "title");
    localJceDisplayer.display(this.msg, "msg");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      OpenUIActionInfo localOpenUIActionInfo = (OpenUIActionInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.uiid, localOpenUIActionInfo.uiid);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.action, localOpenUIActionInfo.action);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.title, localOpenUIActionInfo.title);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.msg, localOpenUIActionInfo.msg);
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
    return "QQPIM.OpenUIActionInfo";
  }

  public final int getAction()
  {
    return this.action;
  }

  public final String getMsg()
  {
    return this.msg;
  }

  public final String getTitle()
  {
    return this.title;
  }

  public final int getUiid()
  {
    return this.uiid;
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
    this.uiid = paramJceInputStream.read(this.uiid, 0, true);
    this.action = paramJceInputStream.read(this.action, 1, false);
    this.title = paramJceInputStream.readString(2, false);
    this.msg = paramJceInputStream.readString(3, false);
  }

  public final void setAction(int paramInt)
  {
    this.action = paramInt;
  }

  public final void setMsg(String paramString)
  {
    this.msg = paramString;
  }

  public final void setTitle(String paramString)
  {
    this.title = paramString;
  }

  public final void setUiid(int paramInt)
  {
    this.uiid = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.uiid, 0);
    paramJceOutputStream.write(this.action, 1);
    if (this.title != null)
      paramJceOutputStream.write(this.title, 2);
    if (this.msg != null)
      paramJceOutputStream.write(this.msg, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.OpenUIActionInfo
 * JD-Core Version:    0.6.2
 */