package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PimPwdSetReq extends JceStruct
{
  static AccInfo cache_userInfo;
  public String pimPwd = "";
  public AccInfo userInfo = null;

  static
  {
    if (!PimPwdSetReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PimPwdSetReq()
  {
    setUserInfo(this.userInfo);
    setPimPwd(this.pimPwd);
  }

  public PimPwdSetReq(AccInfo paramAccInfo, String paramString)
  {
    setUserInfo(paramAccInfo);
    setPimPwd(paramString);
  }

  public final String className()
  {
    return "WUPSYNC.PimPwdSetReq";
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
    localJceDisplayer.display(this.userInfo, "userInfo");
    localJceDisplayer.display(this.pimPwd, "pimPwd");
  }

  public final boolean equals(Object paramObject)
  {
    PimPwdSetReq localPimPwdSetReq = (PimPwdSetReq)paramObject;
    if ((JceUtil.equals(this.userInfo, localPimPwdSetReq.userInfo)) && (JceUtil.equals(this.pimPwd, localPimPwdSetReq.pimPwd)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getPimPwd()
  {
    return this.pimPwd;
  }

  public final AccInfo getUserInfo()
  {
    return this.userInfo;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_userInfo == null)
      cache_userInfo = new AccInfo();
    this.userInfo = ((AccInfo)paramJceInputStream.read(cache_userInfo, 0, true));
    this.pimPwd = paramJceInputStream.readString(1, true);
  }

  public final void setPimPwd(String paramString)
  {
    this.pimPwd = paramString;
  }

  public final void setUserInfo(AccInfo paramAccInfo)
  {
    this.userInfo = paramAccInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.userInfo, 0);
    paramJceOutputStream.write(this.pimPwd, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.PimPwdSetReq
 * JD-Core Version:    0.6.2
 */