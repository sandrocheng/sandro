package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class LoginStatReq extends JceStruct
{
  static AccInfo cache_userInfo;
  public AccInfo userInfo = null;

  static
  {
    if (!LoginStatReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public LoginStatReq()
  {
    setUserInfo(this.userInfo);
  }

  public LoginStatReq(AccInfo paramAccInfo)
  {
    setUserInfo(paramAccInfo);
  }

  public final String className()
  {
    return "WUPSYNC.LoginStatReq";
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
    new JceDisplayer(paramStringBuilder, paramInt).display(this.userInfo, "userInfo");
  }

  public final boolean equals(Object paramObject)
  {
    LoginStatReq localLoginStatReq = (LoginStatReq)paramObject;
    return JceUtil.equals(this.userInfo, localLoginStatReq.userInfo);
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
  }

  public final void setUserInfo(AccInfo paramAccInfo)
  {
    this.userInfo = paramAccInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.userInfo, 0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.LoginStatReq
 * JD-Core Version:    0.6.2
 */