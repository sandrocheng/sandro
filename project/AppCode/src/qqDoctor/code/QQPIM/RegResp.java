package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RegResp extends JceStruct
{
  static RespHeader cache_header;
  public String accessNum = "";
  public RespHeader header = null;
  public byte regMethod = 0;
  public String verifyCode = "";

  static
  {
    if (!RegResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RegResp()
  {
    setHeader(this.header);
    setRegMethod(this.regMethod);
    setAccessNum(this.accessNum);
    setVerifyCode(this.verifyCode);
  }

  public RegResp(RespHeader paramRespHeader, byte paramByte, String paramString1, String paramString2)
  {
    setHeader(paramRespHeader);
    setRegMethod(paramByte);
    setAccessNum(paramString1);
    setVerifyCode(paramString2);
  }

  public final String className()
  {
    return "QQPIM.RegResp";
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
    localJceDisplayer.display(this.regMethod, "regMethod");
    localJceDisplayer.display(this.accessNum, "accessNum");
    localJceDisplayer.display(this.verifyCode, "verifyCode");
  }

  public final boolean equals(Object paramObject)
  {
    RegResp localRegResp = (RegResp)paramObject;
    if ((JceUtil.equals(this.header, localRegResp.header)) && (JceUtil.equals(this.regMethod, localRegResp.regMethod)) && (JceUtil.equals(this.accessNum, localRegResp.accessNum)) && (JceUtil.equals(this.verifyCode, localRegResp.verifyCode)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.RegResp";
  }

  public final String getAccessNum()
  {
    return this.accessNum;
  }

  public final RespHeader getHeader()
  {
    return this.header;
  }

  public final byte getRegMethod()
  {
    return this.regMethod;
  }

  public final String getVerifyCode()
  {
    return this.verifyCode;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new RespHeader();
    this.header = ((RespHeader)paramJceInputStream.read(cache_header, 0, true));
    this.regMethod = paramJceInputStream.read(this.regMethod, 1, true);
    this.accessNum = paramJceInputStream.readString(2, false);
    this.verifyCode = paramJceInputStream.readString(3, false);
  }

  public final void setAccessNum(String paramString)
  {
    this.accessNum = paramString;
  }

  public final void setHeader(RespHeader paramRespHeader)
  {
    this.header = paramRespHeader;
  }

  public final void setRegMethod(byte paramByte)
  {
    this.regMethod = paramByte;
  }

  public final void setVerifyCode(String paramString)
  {
    this.verifyCode = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
    paramJceOutputStream.write(this.regMethod, 1);
    if (this.accessNum != null)
      paramJceOutputStream.write(this.accessNum, 2);
    if (this.verifyCode != null)
      paramJceOutputStream.write(this.verifyCode, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RegResp
 * JD-Core Version:    0.6.2
 */