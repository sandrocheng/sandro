package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RespHeader extends JceStruct
{
  public String extmsg = "";
  public int result = 0;

  static
  {
    if (!RespHeader.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RespHeader()
  {
    setResult(this.result);
    setExtmsg(this.extmsg);
  }

  public RespHeader(int paramInt, String paramString)
  {
    setResult(paramInt);
    setExtmsg(paramString);
  }

  public final String className()
  {
    return "QQPIM.RespHeader";
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
    localJceDisplayer.display(this.result, "result");
    localJceDisplayer.display(this.extmsg, "extmsg");
  }

  public final boolean equals(Object paramObject)
  {
    RespHeader localRespHeader = (RespHeader)paramObject;
    if ((JceUtil.equals(this.result, localRespHeader.result)) && (JceUtil.equals(this.extmsg, localRespHeader.extmsg)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String fullClassName()
  {
    return "QQPIM.RespHeader";
  }

  public final String getExtmsg()
  {
    return this.extmsg;
  }

  public final int getResult()
  {
    return this.result;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.result = paramJceInputStream.read(this.result, 0, true);
    this.extmsg = paramJceInputStream.readString(1, false);
  }

  public final void setExtmsg(String paramString)
  {
    this.extmsg = paramString;
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
    if (this.extmsg != null)
      paramJceOutputStream.write(this.extmsg, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.RespHeader
 * JD-Core Version:    0.6.2
 */