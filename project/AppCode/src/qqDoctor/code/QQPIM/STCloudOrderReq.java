package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class STCloudOrderReq extends JceStruct
  implements Cloneable
{
  static STQueryInfo cache_stCodeNow;
  static ArrayList<STQueryInfo> cache_vecCodeMuilty;
  static ArrayList<Integer> cache_vecFail;
  static ArrayList<Integer> cache_vecSmsSeconds;
  public boolean block = true;
  public int nFrequency = 0;
  public int nTimeOutNow = 0;
  public STQueryInfo stCodeNow = null;
  public String strCity = "";
  public String strHardInfo = "";
  public String strMonthBalance = "";
  public String strProvince = "";
  public String strTaocan = "";
  public String strTime = "";
  public String strsimtype = "";
  public ArrayList<STQueryInfo> vecCodeMuilty = null;
  public ArrayList<Integer> vecFail = null;
  public ArrayList<Integer> vecSmsSeconds = null;

  static
  {
    if (!STCloudOrderReq.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public STCloudOrderReq()
  {
    setBlock(this.block);
    setStrProvince(this.strProvince);
    setStrCity(this.strCity);
    setStrsimtype(this.strsimtype);
    setStrTaocan(this.strTaocan);
    setVecCodeMuilty(this.vecCodeMuilty);
    setStCodeNow(this.stCodeNow);
    setNFrequency(this.nFrequency);
    setStrTime(this.strTime);
    setStrHardInfo(this.strHardInfo);
    setStrMonthBalance(this.strMonthBalance);
    setVecFail(this.vecFail);
    setVecSmsSeconds(this.vecSmsSeconds);
    setNTimeOutNow(this.nTimeOutNow);
  }

  public STCloudOrderReq(boolean paramBoolean, String paramString1, String paramString2, String paramString3, String paramString4, ArrayList<STQueryInfo> paramArrayList, STQueryInfo paramSTQueryInfo, int paramInt1, String paramString5, String paramString6, String paramString7, ArrayList<Integer> paramArrayList1, ArrayList<Integer> paramArrayList2, int paramInt2)
  {
    setBlock(paramBoolean);
    setStrProvince(paramString1);
    setStrCity(paramString2);
    setStrsimtype(paramString3);
    setStrTaocan(paramString4);
    setVecCodeMuilty(paramArrayList);
    setStCodeNow(paramSTQueryInfo);
    setNFrequency(paramInt1);
    setStrTime(paramString5);
    setStrHardInfo(paramString6);
    setStrMonthBalance(paramString7);
    setVecFail(paramArrayList1);
    setVecSmsSeconds(paramArrayList2);
    setNTimeOutNow(paramInt2);
  }

  public final String className()
  {
    return "QQPIM.STCloudOrderReq";
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
    localJceDisplayer.display(this.block, "block");
    localJceDisplayer.display(this.strProvince, "strProvince");
    localJceDisplayer.display(this.strCity, "strCity");
    localJceDisplayer.display(this.strsimtype, "strsimtype");
    localJceDisplayer.display(this.strTaocan, "strTaocan");
    localJceDisplayer.display(this.vecCodeMuilty, "vecCodeMuilty");
    localJceDisplayer.display(this.stCodeNow, "stCodeNow");
    localJceDisplayer.display(this.nFrequency, "nFrequency");
    localJceDisplayer.display(this.strTime, "strTime");
    localJceDisplayer.display(this.strHardInfo, "strHardInfo");
    localJceDisplayer.display(this.strMonthBalance, "strMonthBalance");
    localJceDisplayer.display(this.vecFail, "vecFail");
    localJceDisplayer.display(this.vecSmsSeconds, "vecSmsSeconds");
    localJceDisplayer.display(this.nTimeOutNow, "nTimeOutNow");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      STCloudOrderReq localSTCloudOrderReq = (STCloudOrderReq)paramObject;
      boolean bool2 = JceUtil.equals(this.block, localSTCloudOrderReq.block);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.strProvince, localSTCloudOrderReq.strProvince);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.strCity, localSTCloudOrderReq.strCity);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.strsimtype, localSTCloudOrderReq.strsimtype);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.strTaocan, localSTCloudOrderReq.strTaocan);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.vecCodeMuilty, localSTCloudOrderReq.vecCodeMuilty);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.stCodeNow, localSTCloudOrderReq.stCodeNow);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.nFrequency, localSTCloudOrderReq.nFrequency);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.strTime, localSTCloudOrderReq.strTime);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.strHardInfo, localSTCloudOrderReq.strHardInfo);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.strMonthBalance, localSTCloudOrderReq.strMonthBalance);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.vecFail, localSTCloudOrderReq.vecFail);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.vecSmsSeconds, localSTCloudOrderReq.vecSmsSeconds);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.nTimeOutNow, localSTCloudOrderReq.nTimeOutNow);
                                bool1 = false;
                                if (bool15)
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
  }

  public final String fullClassName()
  {
    return "QQPIM.STCloudOrderReq";
  }

  public final boolean getBlock()
  {
    return this.block;
  }

  public final int getNFrequency()
  {
    return this.nFrequency;
  }

  public final int getNTimeOutNow()
  {
    return this.nTimeOutNow;
  }

  public final STQueryInfo getStCodeNow()
  {
    return this.stCodeNow;
  }

  public final String getStrCity()
  {
    return this.strCity;
  }

  public final String getStrHardInfo()
  {
    return this.strHardInfo;
  }

  public final String getStrMonthBalance()
  {
    return this.strMonthBalance;
  }

  public final String getStrProvince()
  {
    return this.strProvince;
  }

  public final String getStrTaocan()
  {
    return this.strTaocan;
  }

  public final String getStrTime()
  {
    return this.strTime;
  }

  public final String getStrsimtype()
  {
    return this.strsimtype;
  }

  public final ArrayList<STQueryInfo> getVecCodeMuilty()
  {
    return this.vecCodeMuilty;
  }

  public final ArrayList<Integer> getVecFail()
  {
    return this.vecFail;
  }

  public final ArrayList<Integer> getVecSmsSeconds()
  {
    return this.vecSmsSeconds;
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
    this.block = paramJceInputStream.read(this.block, 0, false);
    this.strProvince = paramJceInputStream.readString(1, false);
    this.strCity = paramJceInputStream.readString(2, false);
    this.strsimtype = paramJceInputStream.readString(3, false);
    this.strTaocan = paramJceInputStream.readString(4, false);
    if (cache_vecCodeMuilty == null)
    {
      cache_vecCodeMuilty = new ArrayList();
      STQueryInfo localSTQueryInfo = new STQueryInfo();
      cache_vecCodeMuilty.add(localSTQueryInfo);
    }
    setVecCodeMuilty((ArrayList)paramJceInputStream.read(cache_vecCodeMuilty, 5, false));
    if (cache_stCodeNow == null)
      cache_stCodeNow = new STQueryInfo();
    setStCodeNow((STQueryInfo)paramJceInputStream.read(cache_stCodeNow, 6, false));
    setNFrequency(paramJceInputStream.read(this.nFrequency, 7, false));
    setStrTime(paramJceInputStream.readString(8, false));
    setStrHardInfo(paramJceInputStream.readString(9, false));
    setStrMonthBalance(paramJceInputStream.readString(10, false));
    if (cache_vecFail == null)
    {
      cache_vecFail = new ArrayList();
      Integer localInteger2 = Integer.valueOf(0);
      cache_vecFail.add(localInteger2);
    }
    setVecFail((ArrayList)paramJceInputStream.read(cache_vecFail, 11, false));
    if (cache_vecSmsSeconds == null)
    {
      cache_vecSmsSeconds = new ArrayList();
      Integer localInteger1 = Integer.valueOf(0);
      cache_vecSmsSeconds.add(localInteger1);
    }
    setVecSmsSeconds((ArrayList)paramJceInputStream.read(cache_vecSmsSeconds, 12, false));
    setNTimeOutNow(paramJceInputStream.read(this.nTimeOutNow, 13, false));
  }

  public final void setBlock(boolean paramBoolean)
  {
    this.block = paramBoolean;
  }

  public final void setNFrequency(int paramInt)
  {
    this.nFrequency = paramInt;
  }

  public final void setNTimeOutNow(int paramInt)
  {
    this.nTimeOutNow = paramInt;
  }

  public final void setStCodeNow(STQueryInfo paramSTQueryInfo)
  {
    this.stCodeNow = paramSTQueryInfo;
  }

  public final void setStrCity(String paramString)
  {
    this.strCity = paramString;
  }

  public final void setStrHardInfo(String paramString)
  {
    this.strHardInfo = paramString;
  }

  public final void setStrMonthBalance(String paramString)
  {
    this.strMonthBalance = paramString;
  }

  public final void setStrProvince(String paramString)
  {
    this.strProvince = paramString;
  }

  public final void setStrTaocan(String paramString)
  {
    this.strTaocan = paramString;
  }

  public final void setStrTime(String paramString)
  {
    this.strTime = paramString;
  }

  public final void setStrsimtype(String paramString)
  {
    this.strsimtype = paramString;
  }

  public final void setVecCodeMuilty(ArrayList<STQueryInfo> paramArrayList)
  {
    this.vecCodeMuilty = paramArrayList;
  }

  public final void setVecFail(ArrayList<Integer> paramArrayList)
  {
    this.vecFail = paramArrayList;
  }

  public final void setVecSmsSeconds(ArrayList<Integer> paramArrayList)
  {
    this.vecSmsSeconds = paramArrayList;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.block, 0);
    if (this.strProvince != null)
      paramJceOutputStream.write(this.strProvince, 1);
    if (this.strCity != null)
      paramJceOutputStream.write(this.strCity, 2);
    if (this.strsimtype != null)
      paramJceOutputStream.write(this.strsimtype, 3);
    if (this.strTaocan != null)
      paramJceOutputStream.write(this.strTaocan, 4);
    if (this.vecCodeMuilty != null)
      paramJceOutputStream.write(this.vecCodeMuilty, 5);
    if (this.stCodeNow != null)
      paramJceOutputStream.write(this.stCodeNow, 6);
    paramJceOutputStream.write(this.nFrequency, 7);
    if (this.strTime != null)
      paramJceOutputStream.write(this.strTime, 8);
    if (this.strHardInfo != null)
      paramJceOutputStream.write(this.strHardInfo, 9);
    if (this.strMonthBalance != null)
      paramJceOutputStream.write(this.strMonthBalance, 10);
    if (this.vecFail != null)
      paramJceOutputStream.write(this.vecFail, 11);
    if (this.vecSmsSeconds != null)
      paramJceOutputStream.write(this.vecSmsSeconds, 12);
    paramJceOutputStream.write(this.nTimeOutNow, 13);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.STCloudOrderReq
 * JD-Core Version:    0.6.2
 */