package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STReportError extends JceStruct
  implements Cloneable
{
  public int nCollocateNum = 0;
  public int nUsedNum = 0;
  public int nerrorcode = 0;
  public int noptype = 0;
  public int ntime = 0;
  public String sms = "";
  public String strHardInfo = "";
  public String strarea = "";
  public String strqueryorder = "";
  public String strsimtype = "";
  public String strversion = "";

  static
  {
    if (!STReportError.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STReportError()
  {
    setNerrorcode(this.nerrorcode);
    setNtime(this.ntime);
    setStrarea(this.strarea);
    setStrsimtype(this.strsimtype);
    setStrqueryorder(this.strqueryorder);
    setSms(this.sms);
    setNoptype(this.noptype);
    setStrversion(this.strversion);
    setStrHardInfo(this.strHardInfo);
    setNCollocateNum(this.nCollocateNum);
    setNUsedNum(this.nUsedNum);
  }

  public STReportError(int paramInt1, int paramInt2, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt3, String paramString5, String paramString6, int paramInt4, int paramInt5)
  {
    setNerrorcode(paramInt1);
    setNtime(paramInt2);
    setStrarea(paramString1);
    setStrsimtype(paramString2);
    setStrqueryorder(paramString3);
    setSms(paramString4);
    setNoptype(paramInt3);
    setStrversion(paramString5);
    setStrHardInfo(paramString6);
    setNCollocateNum(paramInt4);
    setNUsedNum(paramInt5);
  }

  public final String className()
  {
    return "QQPIM.STReportError";
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
    localJceDisplayer.display(this.nerrorcode, "nerrorcode");
    localJceDisplayer.display(this.ntime, "ntime");
    localJceDisplayer.display(this.strarea, "strarea");
    localJceDisplayer.display(this.strsimtype, "strsimtype");
    localJceDisplayer.display(this.strqueryorder, "strqueryorder");
    localJceDisplayer.display(this.sms, "sms");
    localJceDisplayer.display(this.noptype, "noptype");
    localJceDisplayer.display(this.strversion, "strversion");
    localJceDisplayer.display(this.strHardInfo, "strHardInfo");
    localJceDisplayer.display(this.nCollocateNum, "nCollocateNum");
    localJceDisplayer.display(this.nUsedNum, "nUsedNum");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STReportError localSTReportError = (STReportError)paramObject;
      boolean bool2 = JceUtil.equals(this.nerrorcode, localSTReportError.nerrorcode);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.ntime, localSTReportError.ntime);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.strarea, localSTReportError.strarea);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.strsimtype, localSTReportError.strsimtype);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.strqueryorder, localSTReportError.strqueryorder);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.sms, localSTReportError.sms);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.noptype, localSTReportError.noptype);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.strversion, localSTReportError.strversion);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.strHardInfo, localSTReportError.strHardInfo);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.nCollocateNum, localSTReportError.nCollocateNum);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.nUsedNum, localSTReportError.nUsedNum);
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
    return "QQPIM.STReportError";
  }

  public final int getNCollocateNum()
  {
    return this.nCollocateNum;
  }

  public final int getNUsedNum()
  {
    return this.nUsedNum;
  }

  public final int getNerrorcode()
  {
    return this.nerrorcode;
  }

  public final int getNoptype()
  {
    return this.noptype;
  }

  public final int getNtime()
  {
    return this.ntime;
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

  public final String getStrversion()
  {
    return this.strversion;
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
    this.nerrorcode = paramJceInputStream.read(this.nerrorcode, 0, true);
    this.ntime = paramJceInputStream.read(this.ntime, 1, true);
    this.strarea = paramJceInputStream.readString(2, true);
    this.strsimtype = paramJceInputStream.readString(3, true);
    this.strqueryorder = paramJceInputStream.readString(4, true);
    this.sms = paramJceInputStream.readString(5, true);
    this.noptype = paramJceInputStream.read(this.noptype, 6, true);
    this.strversion = paramJceInputStream.readString(7, true);
    this.strHardInfo = paramJceInputStream.readString(8, false);
    this.nCollocateNum = paramJceInputStream.read(this.nCollocateNum, 9, false);
    this.nUsedNum = paramJceInputStream.read(this.nUsedNum, 10, false);
  }

  public final void setNCollocateNum(int paramInt)
  {
    this.nCollocateNum = paramInt;
  }

  public final void setNUsedNum(int paramInt)
  {
    this.nUsedNum = paramInt;
  }

  public final void setNerrorcode(int paramInt)
  {
    this.nerrorcode = paramInt;
  }

  public final void setNoptype(int paramInt)
  {
    this.noptype = paramInt;
  }

  public final void setNtime(int paramInt)
  {
    this.ntime = paramInt;
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

  public final void setStrversion(String paramString)
  {
    this.strversion = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nerrorcode, 0);
    paramJceOutputStream.write(this.ntime, 1);
    paramJceOutputStream.write(this.strarea, 2);
    paramJceOutputStream.write(this.strsimtype, 3);
    paramJceOutputStream.write(this.strqueryorder, 4);
    paramJceOutputStream.write(this.sms, 5);
    paramJceOutputStream.write(this.noptype, 6);
    paramJceOutputStream.write(this.strversion, 7);
    if (this.strHardInfo != null)
      paramJceOutputStream.write(this.strHardInfo, 8);
    paramJceOutputStream.write(this.nCollocateNum, 9);
    paramJceOutputStream.write(this.nUsedNum, 10);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STReportError
 * JD-Core Version:    0.6.2
 */