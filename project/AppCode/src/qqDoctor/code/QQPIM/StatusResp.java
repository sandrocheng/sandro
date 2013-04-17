package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class StatusResp extends JceStruct
{
  static RespHeader cache_header;
  public RespHeader header = null;
  public String mobileno = "";

  static
  {
    if (!StatusResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public StatusResp()
  {
    setHeader(this.header);
    setMobileno(this.mobileno);
  }

  public StatusResp(RespHeader paramRespHeader, String paramString)
  {
    setHeader(paramRespHeader);
    setMobileno(paramString);
  }

  public final String className()
  {
    return "QQPIM.StatusResp";
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
    localJceDisplayer.display(this.mobileno, "mobileno");
  }

  public final boolean equals(Object paramObject)
  {
    StatusResp localStatusResp = (StatusResp)paramObject;
    if ((JceUtil.equals(this.header, localStatusResp.header)) && (JceUtil.equals(this.mobileno, localStatusResp.mobileno)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.StatusResp";
  }

  public final RespHeader getHeader()
  {
    return this.header;
  }

  public final String getMobileno()
  {
    return this.mobileno;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new RespHeader();
    this.header = ((RespHeader)paramJceInputStream.read(cache_header, 0, true));
    this.mobileno = paramJceInputStream.readString(1, true);
  }

  public final void setHeader(RespHeader paramRespHeader)
  {
    this.header = paramRespHeader;
  }

  public final void setMobileno(String paramString)
  {
    this.mobileno = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
    paramJceOutputStream.write(this.mobileno, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.StatusResp
 * JD-Core Version:    0.6.2
 */