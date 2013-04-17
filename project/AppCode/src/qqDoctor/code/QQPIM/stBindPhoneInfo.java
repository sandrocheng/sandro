package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class stBindPhoneInfo extends JceStruct
  implements Cloneable
{
  public int bindtime = 0;
  public String changephone = "";
  public short changesim = 0;
  public int chsimtime = 0;
  public String imei = "";
  public String memo = "";
  public String phonenum = "";
  public short status = 0;
  public short subplatform = 0;
  public String ua = "";
  public long uin = 0L;
  public String urgentphone = "";
  public String useragent = "";

  static
  {
    if (!stBindPhoneInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public stBindPhoneInfo()
  {
    setImei(this.imei);
    setStatus(this.status);
    setPhonenum(this.phonenum);
    setMemo(this.memo);
    setUin(this.uin);
    setChangesim(this.changesim);
    setChsimtime(this.chsimtime);
    setChangephone(this.changephone);
    setSubplatform(this.subplatform);
    setBindtime(this.bindtime);
    setUa(this.ua);
    setUseragent(this.useragent);
    setUrgentphone(this.urgentphone);
  }

  public stBindPhoneInfo(String paramString1, short paramShort1, String paramString2, String paramString3, long paramLong, short paramShort2, int paramInt1, String paramString4, short paramShort3, int paramInt2, String paramString5, String paramString6, String paramString7)
  {
    setImei(paramString1);
    setStatus(paramShort1);
    setPhonenum(paramString2);
    setMemo(paramString3);
    setUin(paramLong);
    setChangesim(paramShort2);
    setChsimtime(paramInt1);
    setChangephone(paramString4);
    setSubplatform(paramShort3);
    setBindtime(paramInt2);
    setUa(paramString5);
    setUseragent(paramString6);
    setUrgentphone(paramString7);
  }

  public final String className()
  {
    return "QQPIM.stBindPhoneInfo";
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
    localJceDisplayer.display(this.imei, "imei");
    localJceDisplayer.display(this.status, "status");
    localJceDisplayer.display(this.phonenum, "phonenum");
    localJceDisplayer.display(this.memo, "memo");
    localJceDisplayer.display(this.uin, "uin");
    localJceDisplayer.display(this.changesim, "changesim");
    localJceDisplayer.display(this.chsimtime, "chsimtime");
    localJceDisplayer.display(this.changephone, "changephone");
    localJceDisplayer.display(this.subplatform, "subplatform");
    localJceDisplayer.display(this.bindtime, "bindtime");
    localJceDisplayer.display(this.ua, "ua");
    localJceDisplayer.display(this.useragent, "useragent");
    localJceDisplayer.display(this.urgentphone, "urgentphone");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      stBindPhoneInfo localstBindPhoneInfo = (stBindPhoneInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.imei, localstBindPhoneInfo.imei);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.status, localstBindPhoneInfo.status);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.phonenum, localstBindPhoneInfo.phonenum);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.memo, localstBindPhoneInfo.memo);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.uin, localstBindPhoneInfo.uin);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.changesim, localstBindPhoneInfo.changesim);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.chsimtime, localstBindPhoneInfo.chsimtime);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.changephone, localstBindPhoneInfo.changephone);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.subplatform, localstBindPhoneInfo.subplatform);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.bindtime, localstBindPhoneInfo.bindtime);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.ua, localstBindPhoneInfo.ua);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.useragent, localstBindPhoneInfo.useragent);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.urgentphone, localstBindPhoneInfo.urgentphone);
                              bool1 = false;
                              if (bool14)
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
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.stBindPhoneInfo";
  }

  public final int getBindtime()
  {
    return this.bindtime;
  }

  public final String getChangephone()
  {
    return this.changephone;
  }

  public final short getChangesim()
  {
    return this.changesim;
  }

  public final int getChsimtime()
  {
    return this.chsimtime;
  }

  public final String getImei()
  {
    return this.imei;
  }

  public final String getMemo()
  {
    return this.memo;
  }

  public final String getPhonenum()
  {
    return this.phonenum;
  }

  public final short getStatus()
  {
    return this.status;
  }

  public final short getSubplatform()
  {
    return this.subplatform;
  }

  public final String getUa()
  {
    return this.ua;
  }

  public final long getUin()
  {
    return this.uin;
  }

  public final String getUrgentphone()
  {
    return this.urgentphone;
  }

  public final String getUseragent()
  {
    return this.useragent;
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
    this.imei = paramJceInputStream.readString(0, true);
    this.status = paramJceInputStream.read(this.status, 1, true);
    this.phonenum = paramJceInputStream.readString(2, false);
    this.memo = paramJceInputStream.readString(3, false);
    this.uin = paramJceInputStream.read(this.uin, 4, false);
    this.changesim = paramJceInputStream.read(this.changesim, 5, false);
    this.chsimtime = paramJceInputStream.read(this.chsimtime, 6, false);
    this.changephone = paramJceInputStream.readString(8, false);
    this.subplatform = paramJceInputStream.read(this.subplatform, 9, false);
    this.bindtime = paramJceInputStream.read(this.bindtime, 10, false);
    this.ua = paramJceInputStream.readString(11, false);
    this.useragent = paramJceInputStream.readString(12, false);
    this.urgentphone = paramJceInputStream.readString(13, false);
  }

  public final void setBindtime(int paramInt)
  {
    this.bindtime = paramInt;
  }

  public final void setChangephone(String paramString)
  {
    this.changephone = paramString;
  }

  public final void setChangesim(short paramShort)
  {
    this.changesim = paramShort;
  }

  public final void setChsimtime(int paramInt)
  {
    this.chsimtime = paramInt;
  }

  public final void setImei(String paramString)
  {
    this.imei = paramString;
  }

  public final void setMemo(String paramString)
  {
    this.memo = paramString;
  }

  public final void setPhonenum(String paramString)
  {
    this.phonenum = paramString;
  }

  public final void setStatus(short paramShort)
  {
    this.status = paramShort;
  }

  public final void setSubplatform(short paramShort)
  {
    this.subplatform = paramShort;
  }

  public final void setUa(String paramString)
  {
    this.ua = paramString;
  }

  public final void setUin(long paramLong)
  {
    this.uin = paramLong;
  }

  public final void setUrgentphone(String paramString)
  {
    this.urgentphone = paramString;
  }

  public final void setUseragent(String paramString)
  {
    this.useragent = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.imei, 0);
    paramJceOutputStream.write(this.status, 1);
    if (this.phonenum != null)
      paramJceOutputStream.write(this.phonenum, 2);
    if (this.memo != null)
      paramJceOutputStream.write(this.memo, 3);
    paramJceOutputStream.write(this.uin, 4);
    paramJceOutputStream.write(this.changesim, 5);
    paramJceOutputStream.write(this.chsimtime, 6);
    if (this.changephone != null)
      paramJceOutputStream.write(this.changephone, 8);
    paramJceOutputStream.write(this.subplatform, 9);
    paramJceOutputStream.write(this.bindtime, 10);
    if (this.ua != null)
      paramJceOutputStream.write(this.ua, 11);
    if (this.useragent != null)
      paramJceOutputStream.write(this.useragent, 12);
    if (this.urgentphone != null)
      paramJceOutputStream.write(this.urgentphone, 13);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.stBindPhoneInfo
 * JD-Core Version:    0.6.2
 */