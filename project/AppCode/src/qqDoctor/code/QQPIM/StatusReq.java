package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class StatusReq extends JceStruct
{
  static ReqHeader cache_header;
  public ReqHeader header = null;

  static
  {
    if (!StatusReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public StatusReq()
  {
    setHeader(this.header);
  }

  public StatusReq(ReqHeader paramReqHeader)
  {
    setHeader(paramReqHeader);
  }

  public final String className()
  {
    return "QQPIM.StatusReq";
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
    StatusReq localStatusReq = (StatusReq)paramObject;
    return JceUtil.equals(this.header, localStatusReq.header);
  }

  public final String fullClassName()
  {
    return "QQPIM.StatusReq";
  }

  public final ReqHeader getHeader()
  {
    return this.header;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_header == null)
      cache_header = new ReqHeader();
    this.header = ((ReqHeader)paramJceInputStream.read(cache_header, 0, true));
  }

  public final void setHeader(ReqHeader paramReqHeader)
  {
    this.header = paramReqHeader;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.header, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.StatusReq
 * JD-Core Version:    0.6.2
 */