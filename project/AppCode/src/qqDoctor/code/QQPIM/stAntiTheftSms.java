package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stAntiTheftSms extends JceStruct
  implements Cloneable
{
  public int cmd = 0;
  public String imei = "";
  public String phonenum = "";
  public long uin = 0L;

  static
  {
    if (!stAntiTheftSms.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stAntiTheftSms()
  {
    setCmd(this.cmd);
    setPhonenum(this.phonenum);
    setImei(this.imei);
    setUin(this.uin);
  }

  public stAntiTheftSms(int paramInt, String paramString1, String paramString2, long paramLong)
  {
    setCmd(paramInt);
    setPhonenum(paramString1);
    setImei(paramString2);
    setUin(paramLong);
  }

  public final String className()
  {
    return "QQPIM.stAntiTheftSms";
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
    localJceDisplayer.display(this.cmd, "cmd");
    localJceDisplayer.display(this.phonenum, "phonenum");
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.uin, "uin");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      stAntiTheftSms localstAntiTheftSms = (stAntiTheftSms)paramObject;
      boolean bool2 = JceUtil.equals(this.cmd, localstAntiTheftSms.cmd);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.phonenum, localstAntiTheftSms.phonenum);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.imei, localstAntiTheftSms.imei);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.uin, localstAntiTheftSms.uin);
            bool1 = false;
            if (bool5)
              bool1 = true;
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stAntiTheftSms";
  }

  public final int getCmd()
  {
    return this.cmd;
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final String getPhonenum()
  {
    return this.phonenum;
  }

  public final long getUin()
  {
    return this.uin;
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
    this.cmd = paramJceInputStream.read(this.cmd, 0, true);
    this.phonenum = paramJceInputStream.readString(1, true);
    this.imei = paramJceInputStream.readString(2, false);
    this.uin = paramJceInputStream.read(this.uin, 3, false);
  }

  public final void setCmd(int paramInt)
  {
    this.cmd = paramInt;
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setPhonenum(String paramString)
  {
    this.phonenum = paramString;
  }

  public final void setUin(long paramLong)
  {
    this.uin = paramLong;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.cmd, 0);
    paramJceOutputStream.write(this.phonenum, 1);
    if (this.imei != null)
      paramJceOutputStream.write(this.imei, 2);
    paramJceOutputStream.write(this.uin, 3);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stAntiTheftSms
 * JD-Core Version:    0.6.2
 */