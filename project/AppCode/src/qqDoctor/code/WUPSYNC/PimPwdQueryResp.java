package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PimPwdQueryResp extends JceStruct
{
  static int cache_result;
  public int result = 0;

  static
  {
    if (!PimPwdQueryResp.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PimPwdQueryResp()
  {
    setResult(this.result);
  }

  public PimPwdQueryResp(int paramInt)
  {
    setResult(paramInt);
  }

  public final String className()
  {
    return "WUPSYNC.PimPwdQueryResp";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.result, "result");
  }

  public final boolean equals(Object paramObject)
  {
    PimPwdQueryResp localPimPwdQueryResp = (PimPwdQueryResp)paramObject;
    return JceUtil.equals(this.result, localPimPwdQueryResp.result);
  }

  public final int getResult()
  {
    return this.result;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.result = paramJceInputStream.read(this.result, 0, true);
  }

  public final void setResult(int paramInt)
  {
    this.result = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.result, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.PimPwdQueryResp
 * JD-Core Version:    0.6.2
 */