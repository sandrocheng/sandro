package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class OpenLinkInfo extends JceStruct
  implements Cloneable
{
  public String url = "";

  static
  {
    if (!OpenLinkInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public OpenLinkInfo()
  {
    setUrl(this.url);
  }

  public OpenLinkInfo(String paramString)
  {
    setUrl(paramString);
  }

  public final String className()
  {
    return "QQPIM.OpenLinkInfo";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.url, "url");
  }

  public final boolean equals(Object paramObject)
  {
    if (paramObject == null);
    OpenLinkInfo localOpenLinkInfo;
    for (boolean bool = false; ; bool = JceUtil.equals(this.url, localOpenLinkInfo.url))
    {
      return bool;
      localOpenLinkInfo = (OpenLinkInfo)paramObject;
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.OpenLinkInfo";
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
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.url, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.OpenLinkInfo
 * JD-Core Version:    0.6.2
 */