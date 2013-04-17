package graystrategy;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class UserAgreement extends JceStruct
  implements Cloneable
{
  static byte[] cache_data;
  public int agreementId = 0;
  public byte[] data = null;
  public String userAgreeDetailUrl = "";

  static
  {
    if (!UserAgreement.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public UserAgreement()
  {
    setAgreementId(this.agreementId);
    setUserAgreeDetailUrl(this.userAgreeDetailUrl);
    setData(this.data);
  }

  public UserAgreement(int paramInt, String paramString, byte[] paramArrayOfByte)
  {
    setAgreementId(paramInt);
    setUserAgreeDetailUrl(paramString);
    setData(paramArrayOfByte);
  }

  public final String className()
  {
    return "graystrategy.UserAgreement";
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
    localJceDisplayer.display(this.agreementId, "agreementId");
    localJceDisplayer.display(this.userAgreeDetailUrl, "userAgreeDetailUrl");
    localJceDisplayer.display(this.data, "data");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      UserAgreement localUserAgreement = (UserAgreement)paramObject;
      boolean bool2 = JceUtil.equals(this.agreementId, localUserAgreement.agreementId);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.userAgreeDetailUrl, localUserAgreement.userAgreeDetailUrl);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.data, localUserAgreement.data);
          bool1 = false;
          if (bool4)
            bool1 = true;
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "graystrategy.UserAgreement";
  }

  public final int getAgreementId()
  {
    return this.agreementId;
  }

  public final byte[] getData()
  {
    return this.data;
  }

  public final String getUserAgreeDetailUrl()
  {
    return this.userAgreeDetailUrl;
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
    this.agreementId = paramJceInputStream.read(this.agreementId, 0, true);
    this.userAgreeDetailUrl = paramJceInputStream.readString(1, true);
    if (cache_data == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_data = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.data = paramJceInputStream.read(cache_data, 2, false);
  }

  public final void setAgreementId(int paramInt)
  {
    this.agreementId = paramInt;
  }

  public final void setData(byte[] paramArrayOfByte)
  {
    this.data = paramArrayOfByte;
  }

  public final void setUserAgreeDetailUrl(String paramString)
  {
    this.userAgreeDetailUrl = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.agreementId, 0);
    paramJceOutputStream.write(this.userAgreeDetailUrl, 1);
    if (this.data != null)
      paramJceOutputStream.write(this.data, 2);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     graystrategy.UserAgreement
 * JD-Core Version:    0.6.2
 */