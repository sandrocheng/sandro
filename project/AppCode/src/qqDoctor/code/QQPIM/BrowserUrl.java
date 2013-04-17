package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class BrowserUrl extends JceStruct
  implements Cloneable
{
  public int fileSize = 0;
  public String headMd5 = "";
  public String url = "";

  static
  {
    if (!BrowserUrl.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public BrowserUrl()
  {
    setUrl(this.url);
    setHeadMd5(this.headMd5);
    setFileSize(this.fileSize);
  }

  public BrowserUrl(String paramString1, String paramString2, int paramInt)
  {
    setUrl(paramString1);
    setHeadMd5(paramString2);
    setFileSize(paramInt);
  }

  public final String className()
  {
    return "QQPIM.BrowserUrl";
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
    localJceDisplayer.display(this.headMd5, "headMd5");
    localJceDisplayer.display(this.fileSize, "fileSize");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      BrowserUrl localBrowserUrl = (BrowserUrl)paramObject;
      boolean bool2 = JceUtil.equals(this.url, localBrowserUrl.url);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.headMd5, localBrowserUrl.headMd5);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.fileSize, localBrowserUrl.fileSize);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.BrowserUrl";
  }

  public final int getFileSize()
  {
    return this.fileSize;
  }

  public final String getHeadMd5()
  {
    return this.headMd5;
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
    this.headMd5 = paramJceInputStream.readString(1, true);
    this.fileSize = paramJceInputStream.read(this.fileSize, 2, false);
  }

  public final void setFileSize(int paramInt)
  {
    this.fileSize = paramInt;
  }

  public final void setHeadMd5(String paramString)
  {
    this.headMd5 = paramString;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.url, 0);
    paramJceOutputStream.write(this.headMd5, 1);
    paramJceOutputStream.write(this.fileSize, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.BrowserUrl
 * JD-Core Version:    0.6.2
 */