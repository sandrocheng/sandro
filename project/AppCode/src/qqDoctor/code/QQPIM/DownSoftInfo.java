package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class DownSoftInfo extends JceStruct
  implements Cloneable
{
  static int cache_downnettype;
  static int cache_reportnettype;
  static SoftKey cache_softkey;
  public int categoryid = 0;
  public String downnetname = "";
  public int downnettype = ConnectType.CT_NONE.value();
  public int errorcode = 0;
  public String errormsg = "";
  public int filesize = 0;
  public String hostaddress = "";
  public int isvalid = -1;
  public int nAvgSpeed = 0;
  public int nDownSize = 0;
  public byte nDownType = 0;
  public int nFileId = 0;
  public int nMaxSpeed = 0;
  public int nProductId = 0;
  public int nRetryTimes = 0;
  public int nSoftId = 0;
  public byte nSuccess = 0;
  public int nUsedTime = 0;
  public int pos = 0;
  public String reportnetname = "";
  public int reportnettype = ConnectType.CT_NONE.value();
  public int rssi = -1;
  public int sdcardstatus = -1;
  public SoftKey softkey = null;
  public String url = "";

  static
  {
    if (!DownSoftInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public DownSoftInfo()
  {
    setNProductId(this.nProductId);
    setNSoftId(this.nSoftId);
    setNFileId(this.nFileId);
    setNSuccess(this.nSuccess);
    setNDownSize(this.nDownSize);
    setNUsedTime(this.nUsedTime);
    setNMaxSpeed(this.nMaxSpeed);
    setNAvgSpeed(this.nAvgSpeed);
    setNRetryTimes(this.nRetryTimes);
    setNDownType(this.nDownType);
    setSoftkey(this.softkey);
    setCategoryid(this.categoryid);
    setPos(this.pos);
    setUrl(this.url);
    setErrorcode(this.errorcode);
    setDownnettype(this.downnettype);
    setDownnetname(this.downnetname);
    setReportnettype(this.reportnettype);
    setReportnetname(this.reportnetname);
    setErrormsg(this.errormsg);
    setRssi(this.rssi);
    setSdcardstatus(this.sdcardstatus);
    setFilesize(this.filesize);
    setHostaddress(this.hostaddress);
    setIsvalid(this.isvalid);
  }

  public DownSoftInfo(int paramInt1, int paramInt2, int paramInt3, byte paramByte1, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, byte paramByte2, SoftKey paramSoftKey, int paramInt9, int paramInt10, String paramString1, int paramInt11, int paramInt12, String paramString2, int paramInt13, String paramString3, String paramString4, int paramInt14, int paramInt15, int paramInt16, String paramString5, int paramInt17)
  {
    setNProductId(paramInt1);
    setNSoftId(paramInt2);
    setNFileId(paramInt3);
    setNSuccess(paramByte1);
    setNDownSize(paramInt4);
    setNUsedTime(paramInt5);
    setNMaxSpeed(paramInt6);
    setNAvgSpeed(paramInt7);
    setNRetryTimes(paramInt8);
    setNDownType(paramByte2);
    setSoftkey(paramSoftKey);
    setCategoryid(paramInt9);
    setPos(paramInt10);
    setUrl(paramString1);
    setErrorcode(paramInt11);
    setDownnettype(paramInt12);
    setDownnetname(paramString2);
    setReportnettype(paramInt13);
    setReportnetname(paramString3);
    setErrormsg(paramString4);
    setRssi(paramInt14);
    setSdcardstatus(paramInt15);
    setFilesize(paramInt16);
    setHostaddress(paramString5);
    setIsvalid(paramInt17);
  }

  public final String className()
  {
    return "QQPIM.DownSoftInfo";
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
    localJceDisplayer.display(this.nProductId, "nProductId");
    localJceDisplayer.display(this.nSoftId, "nSoftId");
    localJceDisplayer.display(this.nFileId, "nFileId");
    localJceDisplayer.display(this.nSuccess, "nSuccess");
    localJceDisplayer.display(this.nDownSize, "nDownSize");
    localJceDisplayer.display(this.nUsedTime, "nUsedTime");
    localJceDisplayer.display(this.nMaxSpeed, "nMaxSpeed");
    localJceDisplayer.display(this.nAvgSpeed, "nAvgSpeed");
    localJceDisplayer.display(this.nRetryTimes, "nRetryTimes");
    localJceDisplayer.display(this.nDownType, "nDownType");
    localJceDisplayer.display(this.softkey, "softkey");
    localJceDisplayer.display(this.categoryid, "categoryid");
    localJceDisplayer.display(this.pos, "pos");
    localJceDisplayer.display(this.url, "url");
    localJceDisplayer.display(this.errorcode, "errorcode");
    localJceDisplayer.display(this.downnettype, "downnettype");
    localJceDisplayer.display(this.downnetname, "downnetname");
    localJceDisplayer.display(this.reportnettype, "reportnettype");
    localJceDisplayer.display(this.reportnetname, "reportnetname");
    localJceDisplayer.display(this.errormsg, "errormsg");
    localJceDisplayer.display(this.rssi, "rssi");
    localJceDisplayer.display(this.sdcardstatus, "sdcardstatus");
    localJceDisplayer.display(this.filesize, "filesize");
    localJceDisplayer.display(this.hostaddress, "hostaddress");
    localJceDisplayer.display(this.isvalid, "isvalid");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      DownSoftInfo localDownSoftInfo = (DownSoftInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.nProductId, localDownSoftInfo.nProductId);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.nSoftId, localDownSoftInfo.nSoftId);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.nFileId, localDownSoftInfo.nFileId);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.nSuccess, localDownSoftInfo.nSuccess);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.nDownSize, localDownSoftInfo.nDownSize);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.nUsedTime, localDownSoftInfo.nUsedTime);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.nMaxSpeed, localDownSoftInfo.nMaxSpeed);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.nAvgSpeed, localDownSoftInfo.nAvgSpeed);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.nRetryTimes, localDownSoftInfo.nRetryTimes);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.nDownType, localDownSoftInfo.nDownType);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.softkey, localDownSoftInfo.softkey);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.categoryid, localDownSoftInfo.categoryid);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.pos, localDownSoftInfo.pos);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.url, localDownSoftInfo.url);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.errorcode, localDownSoftInfo.errorcode);
                                  bool1 = false;
                                  if (bool16)
                                  {
                                    boolean bool17 = JceUtil.equals(this.downnettype, localDownSoftInfo.downnettype);
                                    bool1 = false;
                                    if (bool17)
                                    {
                                      boolean bool18 = JceUtil.equals(this.downnetname, localDownSoftInfo.downnetname);
                                      bool1 = false;
                                      if (bool18)
                                      {
                                        boolean bool19 = JceUtil.equals(this.reportnettype, localDownSoftInfo.reportnettype);
                                        bool1 = false;
                                        if (bool19)
                                        {
                                          boolean bool20 = JceUtil.equals(this.reportnetname, localDownSoftInfo.reportnetname);
                                          bool1 = false;
                                          if (bool20)
                                          {
                                            boolean bool21 = JceUtil.equals(this.errormsg, localDownSoftInfo.errormsg);
                                            bool1 = false;
                                            if (bool21)
                                            {
                                              boolean bool22 = JceUtil.equals(this.rssi, localDownSoftInfo.rssi);
                                              bool1 = false;
                                              if (bool22)
                                              {
                                                boolean bool23 = JceUtil.equals(this.sdcardstatus, localDownSoftInfo.sdcardstatus);
                                                bool1 = false;
                                                if (bool23)
                                                {
                                                  boolean bool24 = JceUtil.equals(this.filesize, localDownSoftInfo.filesize);
                                                  bool1 = false;
                                                  if (bool24)
                                                  {
                                                    boolean bool25 = JceUtil.equals(this.hostaddress, localDownSoftInfo.hostaddress);
                                                    bool1 = false;
                                                    if (bool25)
                                                    {
                                                      boolean bool26 = JceUtil.equals(this.isvalid, localDownSoftInfo.isvalid);
                                                      bool1 = false;
                                                      if (bool26)
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
    return "QQPIM.DownSoftInfo";
  }

  public final int getCategoryid()
  {
    return this.categoryid;
  }

  public final String getDownnetname()
  {
    return this.downnetname;
  }

  public final int getDownnettype()
  {
    return this.downnettype;
  }

  public final int getErrorcode()
  {
    return this.errorcode;
  }

  public final String getErrormsg()
  {
    return this.errormsg;
  }

  public final int getFilesize()
  {
    return this.filesize;
  }

  public final String getHostaddress()
  {
    return this.hostaddress;
  }

  public final int getIsvalid()
  {
    return this.isvalid;
  }

  public final int getNAvgSpeed()
  {
    return this.nAvgSpeed;
  }

  public final int getNDownSize()
  {
    return this.nDownSize;
  }

  public final byte getNDownType()
  {
    return this.nDownType;
  }

  public final int getNFileId()
  {
    return this.nFileId;
  }

  public final int getNMaxSpeed()
  {
    return this.nMaxSpeed;
  }

  public final int getNProductId()
  {
    return this.nProductId;
  }

  public final int getNRetryTimes()
  {
    return this.nRetryTimes;
  }

  public final int getNSoftId()
  {
    return this.nSoftId;
  }

  public final byte getNSuccess()
  {
    return this.nSuccess;
  }

  public final int getNUsedTime()
  {
    return this.nUsedTime;
  }

  public final int getPos()
  {
    return this.pos;
  }

  public final String getReportnetname()
  {
    return this.reportnetname;
  }

  public final int getReportnettype()
  {
    return this.reportnettype;
  }

  public final int getRssi()
  {
    return this.rssi;
  }

  public final int getSdcardstatus()
  {
    return this.sdcardstatus;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
  }

  public final String getUrl()
  {
    return this.url;
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
    this.nProductId = paramJceInputStream.read(this.nProductId, 0, true);
    this.nSoftId = paramJceInputStream.read(this.nSoftId, 1, true);
    this.nFileId = paramJceInputStream.read(this.nFileId, 2, true);
    this.nSuccess = paramJceInputStream.read(this.nSuccess, 3, true);
    this.nDownSize = paramJceInputStream.read(this.nDownSize, 4, true);
    this.nUsedTime = paramJceInputStream.read(this.nUsedTime, 5, true);
    this.nMaxSpeed = paramJceInputStream.read(this.nMaxSpeed, 6, true);
    this.nAvgSpeed = paramJceInputStream.read(this.nAvgSpeed, 7, true);
    this.nRetryTimes = paramJceInputStream.read(this.nRetryTimes, 8, true);
    this.nDownType = paramJceInputStream.read(this.nDownType, 9, true);
    if (cache_softkey == null)
      cache_softkey = new SoftKey();
    this.softkey = ((SoftKey)paramJceInputStream.read(cache_softkey, 10, true));
    this.categoryid = paramJceInputStream.read(this.categoryid, 11, false);
    this.pos = paramJceInputStream.read(this.pos, 12, false);
    this.url = paramJceInputStream.readString(13, false);
    this.errorcode = paramJceInputStream.read(this.errorcode, 14, false);
    this.downnettype = paramJceInputStream.read(this.downnettype, 15, false);
    this.downnetname = paramJceInputStream.readString(16, false);
    this.reportnettype = paramJceInputStream.read(this.reportnettype, 17, false);
    this.reportnetname = paramJceInputStream.readString(18, false);
    this.errormsg = paramJceInputStream.readString(19, false);
    this.rssi = paramJceInputStream.read(this.rssi, 20, false);
    this.sdcardstatus = paramJceInputStream.read(this.sdcardstatus, 21, false);
    this.filesize = paramJceInputStream.read(this.filesize, 22, false);
    this.hostaddress = paramJceInputStream.readString(23, false);
    this.isvalid = paramJceInputStream.read(this.isvalid, 24, false);
  }

  public final void setCategoryid(int paramInt)
  {
    this.categoryid = paramInt;
  }

  public final void setDownnetname(String paramString)
  {
    this.downnetname = paramString;
  }

  public final void setDownnettype(int paramInt)
  {
    this.downnettype = paramInt;
  }

  public final void setErrorcode(int paramInt)
  {
    this.errorcode = paramInt;
  }

  public final void setErrormsg(String paramString)
  {
    this.errormsg = paramString;
  }

  public final void setFilesize(int paramInt)
  {
    this.filesize = paramInt;
  }

  public final void setHostaddress(String paramString)
  {
    this.hostaddress = paramString;
  }

  public final void setIsvalid(int paramInt)
  {
    this.isvalid = paramInt;
  }

  public final void setNAvgSpeed(int paramInt)
  {
    this.nAvgSpeed = paramInt;
  }

  public final void setNDownSize(int paramInt)
  {
    this.nDownSize = paramInt;
  }

  public final void setNDownType(byte paramByte)
  {
    this.nDownType = paramByte;
  }

  public final void setNFileId(int paramInt)
  {
    this.nFileId = paramInt;
  }

  public final void setNMaxSpeed(int paramInt)
  {
    this.nMaxSpeed = paramInt;
  }

  public final void setNProductId(int paramInt)
  {
    this.nProductId = paramInt;
  }

  public final void setNRetryTimes(int paramInt)
  {
    this.nRetryTimes = paramInt;
  }

  public final void setNSoftId(int paramInt)
  {
    this.nSoftId = paramInt;
  }

  public final void setNSuccess(byte paramByte)
  {
    this.nSuccess = paramByte;
  }

  public final void setNUsedTime(int paramInt)
  {
    this.nUsedTime = paramInt;
  }

  public final void setPos(int paramInt)
  {
    this.pos = paramInt;
  }

  public final void setReportnetname(String paramString)
  {
    this.reportnetname = paramString;
  }

  public final void setReportnettype(int paramInt)
  {
    this.reportnettype = paramInt;
  }

  public final void setRssi(int paramInt)
  {
    this.rssi = paramInt;
  }

  public final void setSdcardstatus(int paramInt)
  {
    this.sdcardstatus = paramInt;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void setUrl(String paramString)
  {
    this.url = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.nProductId, 0);
    paramJceOutputStream.write(this.nSoftId, 1);
    paramJceOutputStream.write(this.nFileId, 2);
    paramJceOutputStream.write(this.nSuccess, 3);
    paramJceOutputStream.write(this.nDownSize, 4);
    paramJceOutputStream.write(this.nUsedTime, 5);
    paramJceOutputStream.write(this.nMaxSpeed, 6);
    paramJceOutputStream.write(this.nAvgSpeed, 7);
    paramJceOutputStream.write(this.nRetryTimes, 8);
    paramJceOutputStream.write(this.nDownType, 9);
    paramJceOutputStream.write(this.softkey, 10);
    paramJceOutputStream.write(this.categoryid, 11);
    paramJceOutputStream.write(this.pos, 12);
    if (this.url != null)
      paramJceOutputStream.write(this.url, 13);
    paramJceOutputStream.write(this.errorcode, 14);
    paramJceOutputStream.write(this.downnettype, 15);
    if (this.downnetname != null)
      paramJceOutputStream.write(this.downnetname, 16);
    paramJceOutputStream.write(this.reportnettype, 17);
    if (this.reportnetname != null)
      paramJceOutputStream.write(this.reportnetname, 18);
    if (this.errormsg != null)
      paramJceOutputStream.write(this.errormsg, 19);
    paramJceOutputStream.write(this.rssi, 20);
    paramJceOutputStream.write(this.sdcardstatus, 21);
    paramJceOutputStream.write(this.filesize, 22);
    if (this.hostaddress != null)
      paramJceOutputStream.write(this.hostaddress, 23);
    paramJceOutputStream.write(this.isvalid, 24);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.DownSoftInfo
 * JD-Core Version:    0.6.2
 */