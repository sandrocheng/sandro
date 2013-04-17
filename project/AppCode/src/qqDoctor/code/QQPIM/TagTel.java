package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TagTel extends JceStruct
  implements Cloneable
{
  public int black = 0;
  public String phonenum = "";
  public String tagmsg = "";
  public int tagtype = 0;
  public int white = 0;

  static
  {
    if (!TagTel.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TagTel()
  {
    setPhonenum(this.phonenum);
    setWhite(this.white);
    setBlack(this.black);
    setTagtype(this.tagtype);
    setTagmsg(this.tagmsg);
  }

  public TagTel(String paramString1, int paramInt1, int paramInt2, int paramInt3, String paramString2)
  {
    setPhonenum(paramString1);
    setWhite(paramInt1);
    setBlack(paramInt2);
    setTagtype(paramInt3);
    setTagmsg(paramString2);
  }

  public final String className()
  {
    return "QQPIM.TagTel";
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
    localJceDisplayer.display(this.phonenum, "phonenum");
    localJceDisplayer.display(this.white, "white");
    localJceDisplayer.display(this.black, "black");
    localJceDisplayer.display(this.tagtype, "tagtype");
    localJceDisplayer.display(this.tagmsg, "tagmsg");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TagTel localTagTel = (TagTel)paramObject;
      boolean bool2 = JceUtil.equals(this.phonenum, localTagTel.phonenum);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.white, localTagTel.white);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.black, localTagTel.black);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.tagtype, localTagTel.tagtype);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.tagmsg, localTagTel.tagmsg);
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
    return "QQPIM.TagTel";
  }

  public final int getBlack()
  {
    return this.black;
  }

  public final String getPhonenum()
  {
    return this.phonenum;
  }

  public final String getTagmsg()
  {
    return this.tagmsg;
  }

  public final int getTagtype()
  {
    return this.tagtype;
  }

  public final int getWhite()
  {
    return this.white;
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
    this.phonenum = paramJceInputStream.readString(0, true);
    this.white = paramJceInputStream.read(this.white, 1, false);
    this.black = paramJceInputStream.read(this.black, 2, false);
    this.tagtype = paramJceInputStream.read(this.tagtype, 3, false);
    this.tagmsg = paramJceInputStream.readString(4, false);
  }

  public final void setBlack(int paramInt)
  {
    this.black = paramInt;
  }

  public final void setPhonenum(String paramString)
  {
    this.phonenum = paramString;
  }

  public final void setTagmsg(String paramString)
  {
    this.tagmsg = paramString;
  }

  public final void setTagtype(int paramInt)
  {
    this.tagtype = paramInt;
  }

  public final void setWhite(int paramInt)
  {
    this.white = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.phonenum, 0);
    paramJceOutputStream.write(this.white, 1);
    paramJceOutputStream.write(this.black, 2);
    paramJceOutputStream.write(this.tagtype, 3);
    if (this.tagmsg != null)
      paramJceOutputStream.write(this.tagmsg, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TagTel
 * JD-Core Version:    0.6.2
 */