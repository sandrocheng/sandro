package LBSAPIProtocol;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class RspHeader extends JceStruct
{
  static int cache_eResult;
  public int eResult = 0;
  public short shVersion = 1;
  public String strErrMsg = "";

  static
  {
    if (!RspHeader.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public RspHeader()
  {
    setShVersion(this.shVersion);
    setEResult(this.eResult);
    setStrErrMsg(this.strErrMsg);
  }

  public RspHeader(short paramShort, int paramInt, String paramString)
  {
    setShVersion(paramShort);
    setEResult(paramInt);
    setStrErrMsg(paramString);
  }

  public String className()
  {
    return "LBSAPIProtocol.RspHeader";
  }

  public Object clone()
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

  public void display(StringBuilder paramStringBuilder, int paramInt)
  {
    JceDisplayer localJceDisplayer = new JceDisplayer(paramStringBuilder, paramInt);
    localJceDisplayer.display(this.shVersion, "shVersion");
    localJceDisplayer.display(this.eResult, "eResult");
    localJceDisplayer.display(this.strErrMsg, "strErrMsg");
  }

  public boolean equals(Object paramObject)
  {
    RspHeader localRspHeader = (RspHeader)paramObject;
    if ((JceUtil.equals(this.shVersion, localRspHeader.shVersion)) && (JceUtil.equals(this.eResult, localRspHeader.eResult)) && (JceUtil.equals(this.strErrMsg, localRspHeader.strErrMsg)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public int getEResult()
  {
    return this.eResult;
  }

  public short getShVersion()
  {
    return this.shVersion;
  }

  public String getStrErrMsg()
  {
    return this.strErrMsg;
  }

  public void readFrom(JceInputStream paramJceInputStream)
  {
    setShVersion(paramJceInputStream.read(this.shVersion, 0, true));
    setEResult(paramJceInputStream.read(this.eResult, 1, true));
    setStrErrMsg(paramJceInputStream.readString(2, true));
  }

  public void setEResult(int paramInt)
  {
    this.eResult = paramInt;
  }

  public void setShVersion(short paramShort)
  {
    this.shVersion = paramShort;
  }

  public void setStrErrMsg(String paramString)
  {
    this.strErrMsg = paramString;
  }

  public void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.shVersion, 0);
    paramJceOutputStream.write(this.eResult, 1);
    paramJceOutputStream.write(this.strErrMsg, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     LBSAPIProtocol.RspHeader
 * JD-Core Version:    0.6.2
 */