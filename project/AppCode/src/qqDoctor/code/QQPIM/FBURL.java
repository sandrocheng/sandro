package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class FBURL extends JceStruct
  implements Cloneable
{
  public String content = "";
  public String phone = "";
  public String url = "";

  static
  {
    if (!FBURL.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public FBURL()
  {
    setUrl(this.url);
    setPhone(this.phone);
    setContent(this.content);
  }

  public FBURL(String paramString1, String paramString2, String paramString3)
  {
    setUrl(paramString1);
    setPhone(paramString2);
    setContent(paramString3);
  }

  public final String className()
  {
    return "QQPIM.FBURL";
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
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.phone, "phone");
    localJceDisplayer.display(this.content, "content");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      FBURL localFBURL = (FBURL)paramObject;
      boolean bool2 = JceUtil.equals(this.url, localFBURL.url);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.phone, localFBURL.phone);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.content, localFBURL.content);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.FBURL";
  }

  public final String getContent()
  {
    return this.content;
  }

  public final String getPhone()
  {
    return this.phone;
  }

  public final String getUrl()
  {
    return this.url;
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
    this.url = paramJceInputStream.readString(0, true);
    this.phone = paramJceInputStream.readString(1, true);
    this.content = paramJceInputStream.readString(2, true);
  }

  public final void setContent(String paramString)
  {
    this.content = paramString;
  }

  public final void setPhone(String paramString)
  {
    this.phone = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.url, 0);
    paramJceOutputStream.write(this.phone, 1);
    paramJceOutputStream.write(this.content, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.FBURL
 * JD-Core Version:    0.6.2
 */