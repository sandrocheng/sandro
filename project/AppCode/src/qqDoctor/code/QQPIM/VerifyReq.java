package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class VerifyReq extends JceStruct
{
  static ReqHeader cache_header;
  public ReqHeader header = null;
  public String verifyCode = "";

  static
  {
    if (!VerifyReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public VerifyReq()
  {
    setHeader(this.header);
    setVerifyCode(this.verifyCode);
  }

  public VerifyReq(ReqHeader paramReqHeader, String paramString)
  {
    setHeader(paramReqHeader);
    setVerifyCode(paramString);
  }

  public final String className()
  {
    return "QQPIM.VerifyReq";
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
    localJceDisplayer.display(this.header, "header");
    localJceDisplayer.display(this.verifyCode, "verifyCode");
  }

  public final boolean equals(Object paramObject)
  {
    VerifyReq localVerifyReq = (VerifyReq)paramObject;
    if ((JceUtil.equals(this.header, localVerifyReq.header)) && (JceUtil.equals(this.verifyCode, localVerifyReq.verifyCode)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.VerifyReq";
  }

  public final ReqHeader getHeader()
  {
    return this.header;
  }

  public final String getVerifyCode()
  {
    return this.verifyCode;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new ReqHeader();
    this.header = ((ReqHeader)paramJceInputStream.read(cache_header, 0, true));
    this.verifyCode = paramJceInputStream.readString(1, true);
  }

  public final void setHeader(ReqHeader paramReqHeader)
  {
    this.header = paramReqHeader;
  }

  public final void setVerifyCode(String paramString)
  {
    this.verifyCode = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
    paramJceOutputStream.write(this.verifyCode, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.VerifyReq
 * JD-Core Version:    0.6.2
 */