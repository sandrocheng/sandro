package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class PKUserInfo extends JceStruct
  implements Cloneable
{
  static PhoneInfo cache_phoneinfo;
  public String addr = "";
  public PhoneInfo phoneinfo = null;

  static
  {
    if (!PKUserInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public PKUserInfo()
  {
    setPhoneinfo(this.phoneinfo);
    setAddr(this.addr);
  }

  public PKUserInfo(PhoneInfo paramPhoneInfo, String paramString)
  {
    setPhoneinfo(paramPhoneInfo);
    setAddr(paramString);
  }

  public final String className()
  {
    return "QQPIM.PKUserInfo";
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
    localJceDisplayer.display(this.phoneinfo, "phoneinfo");
    localJceDisplayer.display(this.addr, "addr");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      PKUserInfo localPKUserInfo = (PKUserInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.phoneinfo, localPKUserInfo.phoneinfo);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.addr, localPKUserInfo.addr);
        bool1 = false;
        if (bool3)
          bool1 = true;
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.PKUserInfo";
  }

  public final String getAddr()
  {
    return this.addr;
  }

  public final PhoneInfo getPhoneinfo()
  {
    return this.phoneinfo;
  }

  public final int hashCode()
  {
    try
    {
      throw new Exception("Need define key first!");
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return 0;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    if (cache_phoneinfo == null)
      cache_phoneinfo = new PhoneInfo();
    this.phoneinfo = ((PhoneInfo)paramJceInputStream.read(cache_phoneinfo, 0, true));
    this.addr = paramJceInputStream.readString(1, false);
  }

  public final void setAddr(String paramString)
  {
    this.addr = paramString;
  }

  public final void setPhoneinfo(PhoneInfo paramPhoneInfo)
  {
    this.phoneinfo = paramPhoneInfo;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.phoneinfo, 0);
    if (this.addr != null)
      paramJceOutputStream.write(this.addr, 1);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.PKUserInfo
 * JD-Core Version:    0.6.2
 */