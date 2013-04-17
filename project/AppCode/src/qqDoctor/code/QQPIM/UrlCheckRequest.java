package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UrlCheckRequest extends JceStruct
{
  public String ext = "";
  public int seq = 0;
  public String url = "";

  static
  {
    if (!UrlCheckRequest.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UrlCheckRequest()
  {
    setUrl(this.url);
    setExt(this.ext);
    setSeq(this.seq);
  }

  public UrlCheckRequest(String paramString1, String paramString2, int paramInt)
  {
    setUrl(paramString1);
    setExt(paramString2);
    setSeq(paramInt);
  }

  public final String className()
  {
    return "QQPIM.UrlCheckRequest";
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
    localJceDisplayer.display(this.ext, "ext");
    localJceDisplayer.display(this.seq, "seq");
  }

  public final boolean equals(Object paramObject)
  {
    UrlCheckRequest localUrlCheckRequest = (UrlCheckRequest)paramObject;
    if ((JceUtil.equals(this.url, localUrlCheckRequest.url)) && (JceUtil.equals(this.ext, localUrlCheckRequest.ext)) && (JceUtil.equals(this.seq, localUrlCheckRequest.seq)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getExt()
  {
    return this.ext;
  }

  public final int getSeq()
  {
    return this.seq;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.url = paramJceInputStream.readString(0, true);
    this.ext = paramJceInputStream.readString(1, false);
    this.seq = paramJceInputStream.read(this.seq, 2, false);
  }

  public final void setExt(String paramString)
  {
    this.ext = paramString;
  }

  public final void setSeq(int paramInt)
  {
    this.seq = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.url, 0);
    if (this.ext != null)
      paramJceOutputStream.write(this.ext, 1);
    paramJceOutputStream.write(this.seq, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UrlCheckRequest
 * JD-Core Version:    0.6.2
 */