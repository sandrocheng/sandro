package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RegReq extends JceStruct
{
  static ReqHeader cache_header;
  public ReqHeader header = null;
  public String md5pwd = "";
  public byte regMethod = 0;

  static
  {
    if (!RegReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RegReq()
  {
    setHeader(this.header);
    setMd5pwd(this.md5pwd);
    setRegMethod(this.regMethod);
  }

  public RegReq(ReqHeader paramReqHeader, String paramString, byte paramByte)
  {
    setHeader(paramReqHeader);
    setMd5pwd(paramString);
    setRegMethod(paramByte);
  }

  public final String className()
  {
    return "QQPIM.RegReq";
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
    localJceDisplayer.display(this.md5pwd, "md5pwd");
    localJceDisplayer.display(this.regMethod, "regMethod");
  }

  public final boolean equals(Object paramObject)
  {
    RegReq localRegReq = (RegReq)paramObject;
    if ((JceUtil.equals(this.header, localRegReq.header)) && (JceUtil.equals(this.md5pwd, localRegReq.md5pwd)) && (JceUtil.equals(this.regMethod, localRegReq.regMethod)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.RegReq";
  }

  public final ReqHeader getHeader()
  {
    return this.header;
  }

  public final String getMd5pwd()
  {
    return this.md5pwd;
  }

  public final byte getRegMethod()
  {
    return this.regMethod;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new ReqHeader();
    this.header = ((ReqHeader)paramJceInputStream.read(cache_header, 0, true));
    this.md5pwd = paramJceInputStream.readString(1, true);
    this.regMethod = paramJceInputStream.read(this.regMethod, 2, true);
  }

  public final void setHeader(ReqHeader paramReqHeader)
  {
    this.header = paramReqHeader;
  }

  public final void setMd5pwd(String paramString)
  {
    this.md5pwd = paramString;
  }

  public final void setRegMethod(byte paramByte)
  {
    this.regMethod = paramByte;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
    paramJceOutputStream.write(this.md5pwd, 1);
    paramJceOutputStream.write(this.regMethod, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RegReq
 * JD-Core Version:    0.6.2
 */