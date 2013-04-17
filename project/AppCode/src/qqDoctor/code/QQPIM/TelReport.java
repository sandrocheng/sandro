package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class TelReport extends JceStruct
  implements Cloneable
{
  static int cache_clientlogic;
  static int cache_teltype;
  static int cache_useraction;
  public int calltime = 0;
  public int clientlogic = ETelClientLogic.ETCL_LOGIC_MIN.value();
  public String phonenum = "";
  public int tagtype = 0;
  public int talktime = 0;
  public int teltype = ETelType.ETT_MIN.value();
  public int useraction = EUserAction.EMUA_MIN.value();

  static
  {
    if (!TelReport.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public TelReport()
  {
    setPhonenum(this.phonenum);
    setUseraction(this.useraction);
    setTeltype(this.teltype);
    setTalktime(this.talktime);
    setCalltime(this.calltime);
    setClientlogic(this.clientlogic);
    setTagtype(this.tagtype);
  }

  public TelReport(String paramString, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, int paramInt6)
  {
    setPhonenum(paramString);
    setUseraction(paramInt1);
    setTeltype(paramInt2);
    setTalktime(paramInt3);
    setCalltime(paramInt4);
    setClientlogic(paramInt5);
    setTagtype(paramInt6);
  }

  public final String className()
  {
    return "QQPIM.TelReport";
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
    localJceDisplayer.display(this.phonenum, "phonenum");
    localJceDisplayer.display(this.useraction, "useraction");
    localJceDisplayer.display(this.teltype, "teltype");
    localJceDisplayer.display(this.talktime, "talktime");
    localJceDisplayer.display(this.calltime, "calltime");
    localJceDisplayer.display(this.clientlogic, "clientlogic");
    localJceDisplayer.display(this.tagtype, "tagtype");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      TelReport localTelReport = (TelReport)paramObject;
      boolean bool2 = JceUtil.equals(this.phonenum, localTelReport.phonenum);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.useraction, localTelReport.useraction);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.teltype, localTelReport.teltype);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.talktime, localTelReport.talktime);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.calltime, localTelReport.calltime);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.clientlogic, localTelReport.clientlogic);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.tagtype, localTelReport.tagtype);
                  bool1 = false;
                  if (bool8)
                    bool1 = true;
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
    return "QQPIM.TelReport";
  }

  public final int getCalltime()
  {
    return this.calltime;
  }

  public final int getClientlogic()
  {
    return this.clientlogic;
  }

  public final String getPhonenum()
  {
    return this.phonenum;
  }

  public final int getTagtype()
  {
    return this.tagtype;
  }

  public final int getTalktime()
  {
    return this.talktime;
  }

  public final int getTeltype()
  {
    return this.teltype;
  }

  public final int getUseraction()
  {
    return this.useraction;
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
    this.phonenum = paramJceInputStream.readString(0, true);
    this.useraction = paramJceInputStream.read(this.useraction, 1, true);
    this.teltype = paramJceInputStream.read(this.teltype, 2, false);
    this.talktime = paramJceInputStream.read(this.talktime, 3, false);
    this.calltime = paramJceInputStream.read(this.calltime, 4, false);
    this.clientlogic = paramJceInputStream.read(this.clientlogic, 5, false);
    this.tagtype = paramJceInputStream.read(this.tagtype, 6, false);
  }

  public final void setCalltime(int paramInt)
  {
    this.calltime = paramInt;
  }

  public final void setClientlogic(int paramInt)
  {
    this.clientlogic = paramInt;
  }

  public final void setPhonenum(String paramString)
  {
    this.phonenum = paramString;
  }

  public final void setTagtype(int paramInt)
  {
    this.tagtype = paramInt;
  }

  public final void setTalktime(int paramInt)
  {
    this.talktime = paramInt;
  }

  public final void setTeltype(int paramInt)
  {
    this.teltype = paramInt;
  }

  public final void setUseraction(int paramInt)
  {
    this.useraction = paramInt;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.phonenum, 0);
    paramJceOutputStream.write(this.useraction, 1);
    paramJceOutputStream.write(this.teltype, 2);
    paramJceOutputStream.write(this.talktime, 3);
    paramJceOutputStream.write(this.calltime, 4);
    paramJceOutputStream.write(this.clientlogic, 5);
    paramJceOutputStream.write(this.tagtype, 6);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.TelReport
 * JD-Core Version:    0.6.2
 */