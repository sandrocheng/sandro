package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LoginResp extends JceStruct
{
  static RespHeader cache_header;
  public RespHeader header = null;
  public String loginKey = "";

  static
  {
    if (!LoginResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public LoginResp()
  {
    setHeader(this.header);
    setLoginKey(this.loginKey);
  }

  public LoginResp(RespHeader paramRespHeader, String paramString)
  {
    setHeader(paramRespHeader);
    setLoginKey(paramString);
  }

  public final String className()
  {
    return "QQPIM.LoginResp";
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
    localJceDisplayer.display(this.loginKey, "loginKey");
  }

  public final boolean equals(Object paramObject)
  {
    LoginResp localLoginResp = (LoginResp)paramObject;
    if ((JceUtil.equals(this.header, localLoginResp.header)) && (JceUtil.equals(this.loginKey, localLoginResp.loginKey)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.LoginResp";
  }

  public final RespHeader getHeader()
  {
    return this.header;
  }

  public final String getLoginKey()
  {
    return this.loginKey;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new RespHeader();
    this.header = ((RespHeader)paramJceInputStream.read(cache_header, 0, true));
    this.loginKey = paramJceInputStream.readString(1, false);
  }

  public final void setHeader(RespHeader paramRespHeader)
  {
    this.header = paramRespHeader;
  }

  public final void setLoginKey(String paramString)
  {
    this.loginKey = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
    if (this.loginKey != null)
      paramJceOutputStream.write(this.loginKey, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.LoginResp
 * JD-Core Version:    0.6.2
 */