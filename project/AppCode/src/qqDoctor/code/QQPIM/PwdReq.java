package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PwdReq extends JceStruct
{
  static ReqHeader cache_header;
  public ReqHeader header = null;
  public String newmd5pwd = "";
  public String oldmd5pwd = "";

  static
  {
    if (!PwdReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PwdReq()
  {
    setHeader(this.header);
    setOldmd5pwd(this.oldmd5pwd);
    setNewmd5pwd(this.newmd5pwd);
  }

  public PwdReq(ReqHeader paramReqHeader, String paramString1, String paramString2)
  {
    setHeader(paramReqHeader);
    setOldmd5pwd(paramString1);
    setNewmd5pwd(paramString2);
  }

  public final String className()
  {
    return "QQPIM.PwdReq";
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
    localJceDisplayer.display(this.oldmd5pwd, "oldmd5pwd");
    localJceDisplayer.display(this.newmd5pwd, "newmd5pwd");
  }

  public final boolean equals(Object paramObject)
  {
    PwdReq localPwdReq = (PwdReq)paramObject;
    if ((JceUtil.equals(this.header, localPwdReq.header)) && (JceUtil.equals(this.oldmd5pwd, localPwdReq.oldmd5pwd)) && (JceUtil.equals(this.newmd5pwd, localPwdReq.newmd5pwd)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.PwdReq";
  }

  public final ReqHeader getHeader()
  {
    return this.header;
  }

  public final String getNewmd5pwd()
  {
    return this.newmd5pwd;
  }

  public final String getOldmd5pwd()
  {
    return this.oldmd5pwd;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new ReqHeader();
    this.header = ((ReqHeader)paramJceInputStream.read(cache_header, 0, true));
    this.oldmd5pwd = paramJceInputStream.readString(1, true);
    this.newmd5pwd = paramJceInputStream.readString(2, true);
  }

  public final void setHeader(ReqHeader paramReqHeader)
  {
    this.header = paramReqHeader;
  }

  public final void setNewmd5pwd(String paramString)
  {
    this.newmd5pwd = paramString;
  }

  public final void setOldmd5pwd(String paramString)
  {
    this.oldmd5pwd = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
    paramJceOutputStream.write(this.oldmd5pwd, 1);
    paramJceOutputStream.write(this.newmd5pwd, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PwdReq
 * JD-Core Version:    0.6.2
 */