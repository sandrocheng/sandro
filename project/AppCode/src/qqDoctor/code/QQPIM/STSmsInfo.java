package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STSmsInfo extends JceStruct
  implements Cloneable
{
  public boolean bAuto = true;
  public int nCollocateNum = 0;
  public int nrework = 0;
  public int ntime = 0;
  public int ntrafficnum = 0;
  public String sender = "";
  public String sms = "";
  public String strHardInfo = "";
  public String strarea = "";
  public String strqueryorder = "";
  public String strsimtype = "";

  static
  {
    if (!STSmsInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STSmsInfo()
  {
    setNtime(this.ntime);
    setSender(this.sender);
    setSms(this.sms);
    setStrarea(this.strarea);
    setStrsimtype(this.strsimtype);
    setStrqueryorder(this.strqueryorder);
    setNrework(this.nrework);
    setNtrafficnum(this.ntrafficnum);
    setStrHardInfo(this.strHardInfo);
    setNCollocateNum(this.nCollocateNum);
    setBAuto(this.bAuto);
  }

  public STSmsInfo(int paramInt1, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, int paramInt2, int paramInt3, String paramString6, int paramInt4, boolean paramBoolean)
  {
    setNtime(paramInt1);
    setSender(paramString1);
    setSms(paramString2);
    setStrarea(paramString3);
    setStrsimtype(paramString4);
    setStrqueryorder(paramString5);
    setNrework(paramInt2);
    setNtrafficnum(paramInt3);
    setStrHardInfo(paramString6);
    setNCollocateNum(paramInt4);
    setBAuto(paramBoolean);
  }

  public final String className()
  {
    return "QQPIM.STSmsInfo";
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
    localJceDisplayer.display(this.ntime, "ntime");
    localJceDisplayer.display(this.sender, "sender");
    localJceDisplayer.display(this.sms, "sms");
    localJceDisplayer.display(this.strarea, "strarea");
    localJceDisplayer.display(this.strsimtype, "strsimtype");
    localJceDisplayer.display(this.strqueryorder, "strqueryorder");
    localJceDisplayer.display(this.nrework, "nrework");
    localJceDisplayer.display(this.ntrafficnum, "ntrafficnum");
    localJceDisplayer.display(this.strHardInfo, "strHardInfo");
    localJceDisplayer.display(this.nCollocateNum, "nCollocateNum");
    localJceDisplayer.display(this.bAuto, "bAuto");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STSmsInfo localSTSmsInfo = (STSmsInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.ntime, localSTSmsInfo.ntime);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.sender, localSTSmsInfo.sender);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.sms, localSTSmsInfo.sms);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.strarea, localSTSmsInfo.strarea);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.strsimtype, localSTSmsInfo.strsimtype);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.strqueryorder, localSTSmsInfo.strqueryorder);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.nrework, localSTSmsInfo.nrework);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.ntrafficnum, localSTSmsInfo.ntrafficnum);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.strHardInfo, localSTSmsInfo.strHardInfo);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.nCollocateNum, localSTSmsInfo.nCollocateNum);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.bAuto, localSTSmsInfo.bAuto);
                          bool1 = false;
                          if (bool12)
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

  public final String fullClassName()
  {
    return "QQPIM.STSmsInfo";
  }

  public final boolean getBAuto()
  {
    return this.bAuto;
  }

  public final int getNCollocateNum()
  {
    return this.nCollocateNum;
  }

  public final int getNrework()
  {
    return this.nrework;
  }

  public final int getNtime()
  {
    return this.ntime;
  }

  public final int getNtrafficnum()
  {
    return this.ntrafficnum;
  }

  public final String getSender()
  {
    return this.sender;
  }

  public final String getSms()
  {
    return this.sms;
  }

  public final String getStrHardInfo()
  {
    return this.strHardInfo;
  }

  public final String getStrarea()
  {
    return this.strarea;
  }

  public final String getStrqueryorder()
  {
    return this.strqueryorder;
  }

  public final String getStrsimtype()
  {
    return this.strsimtype;
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
    this.ntime = paramJceInputStream.read(this.ntime, 0, true);
    this.sender = paramJceInputStream.readString(1, true);
    this.sms = paramJceInputStream.readString(2, true);
    this.strarea = paramJceInputStream.readString(3, false);
    this.strsimtype = paramJceInputStream.readString(4, false);
    this.strqueryorder = paramJceInputStream.readString(5, false);
    this.nrework = paramJceInputStream.read(this.nrework, 6, false);
    this.ntrafficnum = paramJceInputStream.read(this.ntrafficnum, 7, false);
    this.strHardInfo = paramJceInputStream.readString(8, false);
    this.nCollocateNum = paramJceInputStream.read(this.nCollocateNum, 9, false);
    this.bAuto = paramJceInputStream.read(this.bAuto, 10, false);
  }

  public final void setBAuto(boolean paramBoolean)
  {
    this.bAuto = paramBoolean;
  }

  public final void setNCollocateNum(int paramInt)
  {
    this.nCollocateNum = paramInt;
  }

  public final void setNrework(int paramInt)
  {
    this.nrework = paramInt;
  }

  public final void setNtime(int paramInt)
  {
    this.ntime = paramInt;
  }

  public final void setNtrafficnum(int paramInt)
  {
    this.ntrafficnum = paramInt;
  }

  public final void setSender(String paramString)
  {
    this.sender = paramString;
  }

  public final void setSms(String paramString)
  {
    this.sms = paramString;
  }

  public final void setStrHardInfo(String paramString)
  {
    this.strHardInfo = paramString;
  }

  public final void setStrarea(String paramString)
  {
    this.strarea = paramString;
  }

  public final void setStrqueryorder(String paramString)
  {
    this.strqueryorder = paramString;
  }

  public final void setStrsimtype(String paramString)
  {
    this.strsimtype = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.ntime, 0);
    paramJceOutputStream.write(this.sender, 1);
    paramJceOutputStream.write(this.sms, 2);
    if (this.strarea != null)
      paramJceOutputStream.write(this.strarea, 3);
    if (this.strsimtype != null)
      paramJceOutputStream.write(this.strsimtype, 4);
    if (this.strqueryorder != null)
      paramJceOutputStream.write(this.strqueryorder, 5);
    paramJceOutputStream.write(this.nrework, 6);
    paramJceOutputStream.write(this.ntrafficnum, 7);
    if (this.strHardInfo != null)
      paramJceOutputStream.write(this.strHardInfo, 8);
    paramJceOutputStream.write(this.nCollocateNum, 9);
    paramJceOutputStream.write(this.bAuto, 10);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STSmsInfo
 * JD-Core Version:    0.6.2
 */