package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UrlCheckResponse extends JceStruct
{
  static int cache_mainHarmId;
  static int cache_subHarmId;
  public String desc = "";
  public int mainHarmId = 0;
  public int seq = 0;
  public int subHarmId = 0;
  public String url = "";

  static
  {
    if (!UrlCheckResponse.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UrlCheckResponse()
  {
    setUrl(this.url);
    setMainHarmId(this.mainHarmId);
    setSubHarmId(this.subHarmId);
    setSeq(this.seq);
    setDesc(this.desc);
  }

  public UrlCheckResponse(String paramString1, int paramInt1, int paramInt2, int paramInt3, String paramString2)
  {
    setUrl(paramString1);
    setMainHarmId(paramInt1);
    setSubHarmId(paramInt2);
    setSeq(paramInt3);
    setDesc(paramString2);
  }

  public final String className()
  {
    return "QQPIM.UrlCheckResponse";
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
    localJceDisplayer.display(this.mainHarmId, "mainHarmId");
    localJceDisplayer.display(this.subHarmId, "subHarmId");
    localJceDisplayer.display(this.seq, "seq");
    localJceDisplayer.display(this.desc, "desc");
  }

  public final boolean equals(Object paramObject)
  {
    UrlCheckResponse localUrlCheckResponse = (UrlCheckResponse)paramObject;
    if ((JceUtil.equals(this.url, localUrlCheckResponse.url)) && (JceUtil.equals(this.mainHarmId, localUrlCheckResponse.mainHarmId)) && (JceUtil.equals(this.subHarmId, localUrlCheckResponse.subHarmId)) && (JceUtil.equals(this.seq, localUrlCheckResponse.seq)) && (JceUtil.equals(this.desc, localUrlCheckResponse.desc)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getDesc()
  {
    return this.desc;
  }

  public final int getMainHarmId()
  {
    return this.mainHarmId;
  }

  public final int getSeq()
  {
    return this.seq;
  }

  public final int getSubHarmId()
  {
    return this.subHarmId;
  }

  public final String getUrl()
  {
    return this.url;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.url = paramJceInputStream.readString(0, true);
    this.mainHarmId = paramJceInputStream.read(this.mainHarmId, 1, true);
    this.subHarmId = paramJceInputStream.read(this.subHarmId, 2, false);
    this.seq = paramJceInputStream.read(this.seq, 3, false);
    this.desc = paramJceInputStream.readString(4, false);
  }

  public final void setDesc(String paramString)
  {
    this.desc = paramString;
  }

  public final void setMainHarmId(int paramInt)
  {
    this.mainHarmId = paramInt;
  }

  public final void setSeq(int paramInt)
  {
    this.seq = paramInt;
  }

  public final void setSubHarmId(int paramInt)
  {
    this.subHarmId = paramInt;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.url, 0);
    paramJceOutputStream.write(this.mainHarmId, 1);
    paramJceOutputStream.write(this.subHarmId, 2);
    paramJceOutputStream.write(this.seq, 3);
    if (this.desc != null)
      paramJceOutputStream.write(this.desc, 4);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.UrlCheckResponse
 * JD-Core Version:    0.6.2
 */