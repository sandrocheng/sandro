package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;

public final class SoftSimpleInfo extends JceStruct
  implements Cloneable
{
  static byte[] cache_expand;
  static int cache_safeType;
  static SoftKey cache_softkey;
  public String break_fileurl = "";
  public String break_mini_os = "";
  public float cn_fee = 0.0F;
  public float cn_lfee = 0.0F;
  public int downloadtimes = 0;
  public byte[] expand = null;
  public float fee = 0.0F;
  public int feetype = 0;
  public int filesize = 0;
  public String fileurl = "";
  public int iFileID = 0;
  public int iProductID = 0;
  public int iSoftID = 0;
  public float lfee = 0.0F;
  public String logourl = "";
  public String nick_name = "";
  public String pageurl = "";
  public String pname = "";
  public String publishtime = "";
  public int safeType = 0;
  public int score = 0;
  public String softclass = "";
  public SoftKey softkey = null;
  public String strSource = "";
  public int suser = 0;
  public String type = "";

  static
  {
    if (!SoftSimpleInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftSimpleInfo()
  {
    setSoftkey(this.softkey);
    setType(this.type);
    setSoftclass(this.softclass);
    setNick_name(this.nick_name);
    setLogourl(this.logourl);
    setFilesize(this.filesize);
    setPublishtime(this.publishtime);
    setDownloadtimes(this.downloadtimes);
    setFileurl(this.fileurl);
    setScore(this.score);
    setSuser(this.suser);
    setIProductID(this.iProductID);
    setISoftID(this.iSoftID);
    setIFileID(this.iFileID);
    setFeetype(this.feetype);
    setFee(this.fee);
    setPname(this.pname);
    setPageurl(this.pageurl);
    setLfee(this.lfee);
    setCn_fee(this.cn_fee);
    setCn_lfee(this.cn_lfee);
    setExpand(this.expand);
    setSafeType(this.safeType);
    setStrSource(this.strSource);
    setBreak_fileurl(this.break_fileurl);
    setBreak_mini_os(this.break_mini_os);
  }

  public SoftSimpleInfo(SoftKey paramSoftKey, String paramString1, String paramString2, String paramString3, String paramString4, int paramInt1, String paramString5, int paramInt2, String paramString6, int paramInt3, int paramInt4, int paramInt5, int paramInt6, int paramInt7, int paramInt8, float paramFloat1, String paramString7, String paramString8, float paramFloat2, float paramFloat3, float paramFloat4, byte[] paramArrayOfByte, int paramInt9, String paramString9, String paramString10, String paramString11)
  {
    setSoftkey(paramSoftKey);
    setType(paramString1);
    setSoftclass(paramString2);
    setNick_name(paramString3);
    setLogourl(paramString4);
    setFilesize(paramInt1);
    setPublishtime(paramString5);
    setDownloadtimes(paramInt2);
    setFileurl(paramString6);
    setScore(paramInt3);
    setSuser(paramInt4);
    setIProductID(paramInt5);
    setISoftID(paramInt6);
    setIFileID(paramInt7);
    setFeetype(paramInt8);
    setFee(paramFloat1);
    setPname(paramString7);
    setPageurl(paramString8);
    setLfee(paramFloat2);
    setCn_fee(paramFloat3);
    setCn_lfee(paramFloat4);
    setExpand(paramArrayOfByte);
    setSafeType(paramInt9);
    setStrSource(paramString9);
    setBreak_fileurl(paramString10);
    setBreak_mini_os(paramString11);
  }

  public final String className()
  {
    return "QQPIM.SoftSimpleInfo";
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
    localJceDisplayer.display(this.softkey, "softkey");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.softclass, "softclass");
    localJceDisplayer.display(this.nick_name, "nick_name");
    localJceDisplayer.display(this.logourl, "logourl");
    localJceDisplayer.display(this.filesize, "filesize");
    localJceDisplayer.display(this.publishtime, "publishtime");
    localJceDisplayer.display(this.downloadtimes, "downloadtimes");
    localJceDisplayer.display(this.fileurl, "fileurl");
    localJceDisplayer.display(this.score, "score");
    localJceDisplayer.display(this.suser, "suser");
    localJceDisplayer.display(this.iProductID, "iProductID");
    localJceDisplayer.display(this.iSoftID, "iSoftID");
    localJceDisplayer.display(this.iFileID, "iFileID");
    localJceDisplayer.display(this.feetype, "feetype");
    localJceDisplayer.display(this.fee, "fee");
    localJceDisplayer.display(this.pname, "pname");
    localJceDisplayer.display(this.pageurl, "pageurl");
    localJceDisplayer.display(this.lfee, "lfee");
    localJceDisplayer.display(this.cn_fee, "cn_fee");
    localJceDisplayer.display(this.cn_lfee, "cn_lfee");
    localJceDisplayer.display(this.expand, "expand");
    localJceDisplayer.display(this.safeType, "safeType");
    localJceDisplayer.display(this.strSource, "strSource");
    localJceDisplayer.display(this.break_fileurl, "break_fileurl");
    localJceDisplayer.display(this.break_mini_os, "break_mini_os");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftSimpleInfo localSoftSimpleInfo = (SoftSimpleInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.softkey, localSoftSimpleInfo.softkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.type, localSoftSimpleInfo.type);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.softclass, localSoftSimpleInfo.softclass);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.nick_name, localSoftSimpleInfo.nick_name);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.logourl, localSoftSimpleInfo.logourl);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.filesize, localSoftSimpleInfo.filesize);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.publishtime, localSoftSimpleInfo.publishtime);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.downloadtimes, localSoftSimpleInfo.downloadtimes);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.fileurl, localSoftSimpleInfo.fileurl);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.score, localSoftSimpleInfo.score);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.suser, localSoftSimpleInfo.suser);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.iProductID, localSoftSimpleInfo.iProductID);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.iSoftID, localSoftSimpleInfo.iSoftID);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.iFileID, localSoftSimpleInfo.iFileID);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.feetype, localSoftSimpleInfo.feetype);
                                  bool1 = false;
                                  if (bool16)
                                  {
                                    boolean bool17 = JceUtil.equals(this.fee, localSoftSimpleInfo.fee);
                                    bool1 = false;
                                    if (bool17)
                                    {
                                      boolean bool18 = JceUtil.equals(this.pname, localSoftSimpleInfo.pname);
                                      bool1 = false;
                                      if (bool18)
                                      {
                                        boolean bool19 = JceUtil.equals(this.pageurl, localSoftSimpleInfo.pageurl);
                                        bool1 = false;
                                        if (bool19)
                                        {
                                          boolean bool20 = JceUtil.equals(this.lfee, localSoftSimpleInfo.lfee);
                                          bool1 = false;
                                          if (bool20)
                                          {
                                            boolean bool21 = JceUtil.equals(this.cn_fee, localSoftSimpleInfo.cn_fee);
                                            bool1 = false;
                                            if (bool21)
                                            {
                                              boolean bool22 = JceUtil.equals(this.cn_lfee, localSoftSimpleInfo.cn_lfee);
                                              bool1 = false;
                                              if (bool22)
                                              {
                                                boolean bool23 = JceUtil.equals(this.expand, localSoftSimpleInfo.expand);
                                                bool1 = false;
                                                if (bool23)
                                                {
                                                  boolean bool24 = JceUtil.equals(this.safeType, localSoftSimpleInfo.safeType);
                                                  bool1 = false;
                                                  if (bool24)
                                                  {
                                                    boolean bool25 = JceUtil.equals(this.strSource, localSoftSimpleInfo.strSource);
                                                    bool1 = false;
                                                    if (bool25)
                                                    {
                                                      boolean bool26 = JceUtil.equals(this.break_fileurl, localSoftSimpleInfo.break_fileurl);
                                                      bool1 = false;
                                                      if (bool26)
                                                      {
                                                        boolean bool27 = JceUtil.equals(this.break_mini_os, localSoftSimpleInfo.break_mini_os);
                                                        bool1 = false;
                                                        if (bool27)
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
  }

  public final String fullClassName()
  {
    return "QQPIM.SoftSimpleInfo";
  }

  public final String getBreak_fileurl()
  {
    return this.break_fileurl;
  }

  public final String getBreak_mini_os()
  {
    return this.break_mini_os;
  }

  public final float getCn_fee()
  {
    return this.cn_fee;
  }

  public final float getCn_lfee()
  {
    return this.cn_lfee;
  }

  public final int getDownloadtimes()
  {
    return this.downloadtimes;
  }

  public final byte[] getExpand()
  {
    return this.expand;
  }

  public final float getFee()
  {
    return this.fee;
  }

  public final int getFeetype()
  {
    return this.feetype;
  }

  public final int getFilesize()
  {
    return this.filesize;
  }

  public final String getFileurl()
  {
    return this.fileurl;
  }

  public final int getIFileID()
  {
    return this.iFileID;
  }

  public final int getIProductID()
  {
    return this.iProductID;
  }

  public final int getISoftID()
  {
    return this.iSoftID;
  }

  public final float getLfee()
  {
    return this.lfee;
  }

  public final String getLogourl()
  {
    return this.logourl;
  }

  public final String getNick_name()
  {
    return this.nick_name;
  }

  public final String getPageurl()
  {
    return this.pageurl;
  }

  public final String getPname()
  {
    return this.pname;
  }

  public final String getPublishtime()
  {
    return this.publishtime;
  }

  public final int getSafeType()
  {
    return this.safeType;
  }

  public final int getScore()
  {
    return this.score;
  }

  public final String getSoftclass()
  {
    return this.softclass;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
  }

  public final String getStrSource()
  {
    return this.strSource;
  }

  public final int getSuser()
  {
    return this.suser;
  }

  public final String getType()
  {
    return this.type;
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
    if (cache_softkey == null)
      cache_softkey = new SoftKey();
    this.softkey = ((SoftKey)paramJceInputStream.read(cache_softkey, 0, true));
    this.type = paramJceInputStream.readString(1, false);
    this.softclass = paramJceInputStream.readString(2, false);
    this.nick_name = paramJceInputStream.readString(3, false);
    this.logourl = paramJceInputStream.readString(4, false);
    this.filesize = paramJceInputStream.read(this.filesize, 5, false);
    this.publishtime = paramJceInputStream.readString(6, false);
    this.downloadtimes = paramJceInputStream.read(this.downloadtimes, 7, false);
    this.fileurl = paramJceInputStream.readString(8, false);
    this.score = paramJceInputStream.read(this.score, 9, false);
    this.suser = paramJceInputStream.read(this.suser, 10, false);
    this.iProductID = paramJceInputStream.read(this.iProductID, 11, false);
    this.iSoftID = paramJceInputStream.read(this.iSoftID, 12, false);
    this.iFileID = paramJceInputStream.read(this.iFileID, 13, false);
    this.feetype = paramJceInputStream.read(this.feetype, 14, false);
    this.fee = paramJceInputStream.read(this.fee, 15, false);
    this.pname = paramJceInputStream.readString(16, false);
    this.pageurl = paramJceInputStream.readString(17, false);
    this.lfee = paramJceInputStream.read(this.lfee, 18, false);
    this.cn_fee = paramJceInputStream.read(this.cn_fee, 19, false);
    this.cn_lfee = paramJceInputStream.read(this.cn_lfee, 20, false);
    if (cache_expand == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_expand = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    this.expand = paramJceInputStream.read(cache_expand, 21, false);
    this.safeType = paramJceInputStream.read(this.safeType, 22, false);
    this.strSource = paramJceInputStream.readString(23, false);
    this.break_fileurl = paramJceInputStream.readString(24, false);
    this.break_mini_os = paramJceInputStream.readString(25, false);
  }

  public final void setBreak_fileurl(String paramString)
  {
    this.break_fileurl = paramString;
  }

  public final void setBreak_mini_os(String paramString)
  {
    this.break_mini_os = paramString;
  }

  public final void setCn_fee(float paramFloat)
  {
    this.cn_fee = paramFloat;
  }

  public final void setCn_lfee(float paramFloat)
  {
    this.cn_lfee = paramFloat;
  }

  public final void setDownloadtimes(int paramInt)
  {
    this.downloadtimes = paramInt;
  }

  public final void setExpand(byte[] paramArrayOfByte)
  {
    this.expand = paramArrayOfByte;
  }

  public final void setFee(float paramFloat)
  {
    this.fee = paramFloat;
  }

  public final void setFeetype(int paramInt)
  {
    this.feetype = paramInt;
  }

  public final void setFilesize(int paramInt)
  {
    this.filesize = paramInt;
  }

  public final void setFileurl(String paramString)
  {
    this.fileurl = paramString;
  }

  public final void setIFileID(int paramInt)
  {
    this.iFileID = paramInt;
  }

  public final void setIProductID(int paramInt)
  {
    this.iProductID = paramInt;
  }

  public final void setISoftID(int paramInt)
  {
    this.iSoftID = paramInt;
  }

  public final void setLfee(float paramFloat)
  {
    this.lfee = paramFloat;
  }

  public final void setLogourl(String paramString)
  {
    this.logourl = paramString;
  }

  public final void setNick_name(String paramString)
  {
    this.nick_name = paramString;
  }

  public final void setPageurl(String paramString)
  {
    this.pageurl = paramString;
  }

  public final void setPname(String paramString)
  {
    this.pname = paramString;
  }

  public final void setPublishtime(String paramString)
  {
    this.publishtime = paramString;
  }

  public final void setSafeType(int paramInt)
  {
    this.safeType = paramInt;
  }

  public final void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public final void setSoftclass(String paramString)
  {
    this.softclass = paramString;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void setStrSource(String paramString)
  {
    this.strSource = paramString;
  }

  public final void setSuser(int paramInt)
  {
    this.suser = paramInt;
  }

  public final void setType(String paramString)
  {
    this.type = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softkey, 0);
    if (this.type != null)
      paramJceOutputStream.write(this.type, 1);
    if (this.softclass != null)
      paramJceOutputStream.write(this.softclass, 2);
    if (this.nick_name != null)
      paramJceOutputStream.write(this.nick_name, 3);
    if (this.logourl != null)
      paramJceOutputStream.write(this.logourl, 4);
    paramJceOutputStream.write(this.filesize, 5);
    if (this.publishtime != null)
      paramJceOutputStream.write(this.publishtime, 6);
    paramJceOutputStream.write(this.downloadtimes, 7);
    if (this.fileurl != null)
      paramJceOutputStream.write(this.fileurl, 8);
    paramJceOutputStream.write(this.score, 9);
    paramJceOutputStream.write(this.suser, 10);
    paramJceOutputStream.write(this.iProductID, 11);
    paramJceOutputStream.write(this.iSoftID, 12);
    paramJceOutputStream.write(this.iFileID, 13);
    paramJceOutputStream.write(this.feetype, 14);
    paramJceOutputStream.write(this.fee, 15);
    if (this.pname != null)
      paramJceOutputStream.write(this.pname, 16);
    if (this.pageurl != null)
      paramJceOutputStream.write(this.pageurl, 17);
    paramJceOutputStream.write(this.lfee, 18);
    paramJceOutputStream.write(this.cn_fee, 19);
    paramJceOutputStream.write(this.cn_lfee, 20);
    if (this.expand != null)
      paramJceOutputStream.write(this.expand, 21);
    paramJceOutputStream.write(this.safeType, 22);
    if (this.strSource != null)
      paramJceOutputStream.write(this.strSource, 23);
    if (this.break_fileurl != null)
      paramJceOutputStream.write(this.break_fileurl, 24);
    if (this.break_mini_os != null)
      paramJceOutputStream.write(this.break_mini_os, 25);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftSimpleInfo
 * JD-Core Version:    0.6.2
 */