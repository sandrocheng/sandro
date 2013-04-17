package graystrategy;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class GrayStrategy extends JceStruct
  implements Cloneable
{
  static AppUpdate cache_appUpdate;
  static UserAgreement cache_userAgreement;
  public boolean appAuthResult = true;
  public AppUpdate appUpdate = null;
  public String registerUrl = "";
  public int resCode = 0;
  public String resMsg = "";
  public String reserved = "";
  public boolean useAuthResult = true;
  public UserAgreement userAgreement = null;

  static
  {
    if (!GrayStrategy.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public GrayStrategy()
  {
    setAppAuthResult(this.appAuthResult);
    setUseAuthResult(this.useAuthResult);
    setResCode(this.resCode);
    setResMsg(this.resMsg);
    setRegisterUrl(this.registerUrl);
    setUserAgreement(this.userAgreement);
    setAppUpdate(this.appUpdate);
    setReserved(this.reserved);
  }

  public GrayStrategy(boolean paramBoolean1, boolean paramBoolean2, int paramInt, String paramString1, String paramString2, UserAgreement paramUserAgreement, AppUpdate paramAppUpdate, String paramString3)
  {
    setAppAuthResult(paramBoolean1);
    setUseAuthResult(paramBoolean2);
    setResCode(paramInt);
    setResMsg(paramString1);
    setRegisterUrl(paramString2);
    setUserAgreement(paramUserAgreement);
    setAppUpdate(paramAppUpdate);
    setReserved(paramString3);
  }

  public final String className()
  {
    return "graystrategy.GrayStrategy";
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
    localJceDisplayer.display(this.appAuthResult, "appAuthResult");
    localJceDisplayer.display(this.useAuthResult, "useAuthResult");
    localJceDisplayer.display(this.resCode, "resCode");
    localJceDisplayer.display(this.resMsg, "resMsg");
    localJceDisplayer.display(this.registerUrl, "registerUrl");
    localJceDisplayer.display(this.userAgreement, "userAgreement");
    localJceDisplayer.display(this.appUpdate, "appUpdate");
    localJceDisplayer.display(this.reserved, "reserved");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      GrayStrategy localGrayStrategy = (GrayStrategy)paramObject;
      boolean bool2 = JceUtil.equals(this.appAuthResult, localGrayStrategy.appAuthResult);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.useAuthResult, localGrayStrategy.useAuthResult);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.resCode, localGrayStrategy.resCode);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.resMsg, localGrayStrategy.resMsg);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.registerUrl, localGrayStrategy.registerUrl);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.userAgreement, localGrayStrategy.userAgreement);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.appUpdate, localGrayStrategy.appUpdate);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.reserved, localGrayStrategy.reserved);
                    bool1 = false;
                    if (bool9)
                      bool1 = true;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "graystrategy.GrayStrategy";
  }

  public final boolean getAppAuthResult()
  {
    return this.appAuthResult;
  }

  public final AppUpdate getAppUpdate()
  {
    return this.appUpdate;
  }

  public final String getRegisterUrl()
  {
    return this.registerUrl;
  }

  public final int getResCode()
  {
    return this.resCode;
  }

  public final String getResMsg()
  {
    return this.resMsg;
  }

  public final String getReserved()
  {
    return this.reserved;
  }

  public final boolean getUseAuthResult()
  {
    return this.useAuthResult;
  }

  public final UserAgreement getUserAgreement()
  {
    return this.userAgreement;
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
    this.appAuthResult = paramJceInputStream.read(this.appAuthResult, 0, true);
    this.useAuthResult = paramJceInputStream.read(this.useAuthResult, 1, true);
    this.resCode = paramJceInputStream.read(this.resCode, 2, true);
    this.resMsg = paramJceInputStream.readString(3, true);
    this.registerUrl = paramJceInputStream.readString(4, false);
    if (cache_userAgreement == null)
      cache_userAgreement = new UserAgreement();
    this.userAgreement = ((UserAgreement)paramJceInputStream.read(cache_userAgreement, 5, false));
    if (cache_appUpdate == null)
      cache_appUpdate = new AppUpdate();
    this.appUpdate = ((AppUpdate)paramJceInputStream.read(cache_appUpdate, 6, false));
    this.reserved = paramJceInputStream.readString(7, false);
  }

  public final void setAppAuthResult(boolean paramBoolean)
  {
    this.appAuthResult = paramBoolean;
  }

  public final void setAppUpdate(AppUpdate paramAppUpdate)
  {
    this.appUpdate = paramAppUpdate;
  }

  public final void setRegisterUrl(String paramString)
  {
    this.registerUrl = paramString;
  }

  public final void setResCode(int paramInt)
  {
    this.resCode = paramInt;
  }

  public final void setResMsg(String paramString)
  {
    this.resMsg = paramString;
  }

  public final void setReserved(String paramString)
  {
    this.reserved = paramString;
  }

  public final void setUseAuthResult(boolean paramBoolean)
  {
    this.useAuthResult = paramBoolean;
  }

  public final void setUserAgreement(UserAgreement paramUserAgreement)
  {
    this.userAgreement = paramUserAgreement;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.appAuthResult, 0);
    paramJceOutputStream.write(this.useAuthResult, 1);
    paramJceOutputStream.write(this.resCode, 2);
    paramJceOutputStream.write(this.resMsg, 3);
    if (this.registerUrl != null)
      paramJceOutputStream.write(this.registerUrl, 4);
    if (this.userAgreement != null)
      paramJceOutputStream.write(this.userAgreement, 5);
    if (this.appUpdate != null)
      paramJceOutputStream.write(this.appUpdate, 6);
    if (this.reserved != null)
      paramJceOutputStream.write(this.reserved, 7);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     graystrategy.GrayStrategy
 * JD-Core Version:    0.6.2
 */