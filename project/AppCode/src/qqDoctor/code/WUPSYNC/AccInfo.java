package WUPSYNC;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class AccInfo extends JceStruct
{
  static int cache_accType;
  public String LC = "";
  public String acc = "";
  public int accType = 0;
  public String loginKey = "";

  static
  {
    if (!AccInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public AccInfo()
  {
    setAccType(this.accType);
    setAcc(this.acc);
    setLoginKey(this.loginKey);
    setLC(this.LC);
  }

  public AccInfo(int paramInt, String paramString1, String paramString2, String paramString3)
  {
    setAccType(paramInt);
    setAcc(paramString1);
    setLoginKey(paramString2);
    setLC(paramString3);
  }

  public final String className()
  {
    return "WUPSYNC.AccInfo";
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
    localJceDisplayer.display(this.accType, "accType");
    localJceDisplayer.display(this.acc, "acc");
    localJceDisplayer.display(this.loginKey, "loginKey");
    localJceDisplayer.display(this.LC, "LC");
  }

  public final boolean equals(Object paramObject)
  {
    AccInfo localAccInfo = (AccInfo)paramObject;
    if ((JceUtil.equals(this.accType, localAccInfo.accType)) && (JceUtil.equals(this.acc, localAccInfo.acc)) && (JceUtil.equals(this.loginKey, localAccInfo.loginKey)) && (JceUtil.equals(this.LC, localAccInfo.LC)));
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final String getAcc()
  {
    return this.acc;
  }

  public final int getAccType()
  {
    return this.accType;
  }

  public final String getLC()
  {
    return this.LC;
  }

  public final String getLoginKey()
  {
    return this.loginKey;
  }

  public final void readFrom(JceInputStream paramJceInputStream)
  {
    this.accType = paramJceInputStream.read(this.accType, 0, true);
    this.acc = paramJceInputStream.readString(1, true);
    this.loginKey = paramJceInputStream.readString(2, true);
    this.LC = paramJceInputStream.readString(3, true);
  }

  public final void setAcc(String paramString)
  {
    this.acc = paramString;
  }

  public final void setAccType(int paramInt)
  {
    this.accType = paramInt;
  }

  public final void setLC(String paramString)
  {
    this.LC = paramString;
  }

  public final void setLoginKey(String paramString)
  {
    this.loginKey = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.accType, 0);
    paramJceOutputStream.write(this.acc, 1);
    paramJceOutputStream.write(this.loginKey, 2);
    paramJceOutputStream.write(this.LC, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     WUPSYNC.AccInfo
 * JD-Core Version:    0.6.2
 */