package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VerifyResp extends JceStruct
{
  static RespHeader cache_header;
  public RespHeader header = null;

  static
  {
    if (!VerifyResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public VerifyResp()
  {
    setHeader(this.header);
  }

  public VerifyResp(RespHeader paramRespHeader)
  {
    setHeader(paramRespHeader);
  }

  public final String className()
  {
    return "QQPIM.VerifyResp";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.header, "header");
  }

  public final boolean equals(Object paramObject)
  {
    VerifyResp localVerifyResp = (VerifyResp)paramObject;
    return JceUtil.equals(this.header, localVerifyResp.header);
  }

  public final String fullClassName()
  {
    return "QQPIM.VerifyResp";
  }

  public final RespHeader getHeader()
  {
    return this.header;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new RespHeader();
    this.header = ((RespHeader)paramJceInputStream.read(cache_header, 0, true));
  }

  public final void setHeader(RespHeader paramRespHeader)
  {
    this.header = paramRespHeader;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.VerifyResp
 * JD-Core Version:    0.6.2
 */