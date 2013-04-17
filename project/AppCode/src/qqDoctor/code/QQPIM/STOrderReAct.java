package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class STOrderReAct extends JceStruct
  implements Cloneable
{
  public String strCity = "";
  public String strProvince = "";
  public String strSms = "";
  public String strTaocan = "";
  public String strVersion = "";
  public String strsimtype = "";

  static
  {
    if (!STOrderReAct.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STOrderReAct()
  {
    setStrVersion(this.strVersion);
    setStrProvince(this.strProvince);
    setStrCity(this.strCity);
    setStrsimtype(this.strsimtype);
    setStrTaocan(this.strTaocan);
    setStrSms(this.strSms);
  }

  public STOrderReAct(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    setStrVersion(paramString1);
    setStrProvince(paramString2);
    setStrCity(paramString3);
    setStrsimtype(paramString4);
    setStrTaocan(paramString5);
    setStrSms(paramString6);
  }

  public final String className()
  {
    return "QQPIM.STOrderReAct";
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
    localJceDisplayer.display(this.strVersion, "strVersion");
    localJceDisplayer.display(this.strProvince, "strProvince");
    localJceDisplayer.display(this.strCity, "strCity");
    localJceDisplayer.display(this.strsimtype, "strsimtype");
    localJceDisplayer.display(this.strTaocan, "strTaocan");
    localJceDisplayer.display(this.strSms, "strSms");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STOrderReAct localSTOrderReAct = (STOrderReAct)paramObject;
      boolean bool2 = JceUtil.equals(this.strVersion, localSTOrderReAct.strVersion);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.strProvince, localSTOrderReAct.strProvince);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.strCity, localSTOrderReAct.strCity);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.strsimtype, localSTOrderReAct.strsimtype);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.strTaocan, localSTOrderReAct.strTaocan);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.strSms, localSTOrderReAct.strSms);
                bool1 = false;
                if (bool7)
                  bool1 = true;
              }
            }
          }
        }
      }
    }
  }

  public final String fullClassName()
  {
    return "QQPIM.STOrderReAct";
  }

  public final String getStrCity()
  {
    return this.strCity;
  }

  public final String getStrProvince()
  {
    return this.strProvince;
  }

  public final String getStrSms()
  {
    return this.strSms;
  }

  public final String getStrTaocan()
  {
    return this.strTaocan;
  }

  public final String getStrVersion()
  {
    return this.strVersion;
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
    this.strVersion = paramJceInputStream.readString(0, false);
    this.strProvince = paramJceInputStream.readString(1, false);
    this.strCity = paramJceInputStream.readString(2, false);
    this.strsimtype = paramJceInputStream.readString(3, false);
    this.strTaocan = paramJceInputStream.readString(4, false);
    this.strSms = paramJceInputStream.readString(5, false);
  }

  public final void setStrCity(String paramString)
  {
    this.strCity = paramString;
  }

  public final void setStrProvince(String paramString)
  {
    this.strProvince = paramString;
  }

  public final void setStrSms(String paramString)
  {
    this.strSms = paramString;
  }

  public final void setStrTaocan(String paramString)
  {
    this.strTaocan = paramString;
  }

  public final void setStrVersion(String paramString)
  {
    this.strVersion = paramString;
  }

  public final void setStrsimtype(String paramString)
  {
    this.strsimtype = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    if (this.strVersion != null)
      paramJceOutputStream.write(this.strVersion, 0);
    if (this.strProvince != null)
      paramJceOutputStream.write(this.strProvince, 1);
    if (this.strCity != null)
      paramJceOutputStream.write(this.strCity, 2);
    if (this.strsimtype != null)
      paramJceOutputStream.write(this.strsimtype, 3);
    if (this.strTaocan != null)
      paramJceOutputStream.write(this.strTaocan, 4);
    if (this.strSms != null)
      paramJceOutputStream.write(this.strSms, 5);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STOrderReAct
 * JD-Core Version:    0.6.2
 */