package QQPIM;

import com.qq.taf.jce.JceDisplayer;
import com.qq.taf.jce.JceInputStream;
import com.qq.taf.jce.JceOutputStream;
import com.qq.taf.jce.JceStruct;
import com.qq.taf.jce.JceUtil;
import java.util.ArrayList;

public final class SoftInfo extends JceStruct
  implements Cloneable
{
  static int cache_asopt;
  static ArrayList<Comment> cache_comments;
  static byte[] cache_expand;
  static ArrayList<String> cache_logourls;
  static ArrayList<String> cache_picurls;
  static ArrayList<ProcInfo> cache_procinfo;
  static SoftKey cache_softkey;
  static ArrayList<String> cache_srcpicurls;
  public int asopt = EAutoStartOption.EASO_NONE.value();
  public int autostart = 0;
  public String break_fileurl = "";
  public String break_mini_os = "";
  public float cn_fee = 0.0F;
  public float cn_lfee = 0.0F;
  public ArrayList<Comment> comments = null;
  public String description = "";
  public int downloadtimes = 0;
  public byte[] expand = null;
  public float fee = 0.0F;
  public int feetype = 0;
  public int filesize = 0;
  public String fileurl = "";
  public String function = "";
  public String hprice = "";
  public int iFileID = 0;
  public int iProductID = 0;
  public int iSoftID = 0;
  public int isoftclass = 0;
  public float lfee = 0.0F;
  public String logourl = "";
  public ArrayList<String> logourls = null;
  public int netaccess = 0;
  public String nick_name = "";
  public int official = 0;
  public String pageurl = "";
  public int phonemonitor = 0;
  public ArrayList<String> picurls = null;
  public String pname = "";
  public ArrayList<ProcInfo> procinfo = null;
  public String publishtime = "";
  public int reportFeature = 0;
  public int score = 0;
  public String short_desc = "";
  public int smsmonitor = 0;
  public int softDescTimestamp = 0;
  public String softclass = "";
  public SoftKey softkey = null;
  public ArrayList<String> srcpicurls = null;
  public String strLinkContent = "";
  public String strLinkUrl = "";
  public String strSource = "";
  public int suser = 0;
  public String type = "";
  public int update = 0;
  public String version_break = "";

  static
  {
    if (!SoftInfo.class.desiredAssertionStatus());
    for (boolean bool = true; ; bool = false)
    {
      $assertionsDisabled = bool;
      return;
    }
  }

  public SoftInfo()
  {
    setSoftkey(this.softkey);
    setShort_desc(this.short_desc);
    setDescription(this.description);
    setType(this.type);
    setSoftclass(this.softclass);
    setProcinfo(this.procinfo);
    setSmsmonitor(this.smsmonitor);
    setPhonemonitor(this.phonemonitor);
    setNetaccess(this.netaccess);
    setAutostart(this.autostart);
    setAsopt(this.asopt);
    setNick_name(this.nick_name);
    setReportFeature(this.reportFeature);
    setLogourl(this.logourl);
    setFilesize(this.filesize);
    setPublishtime(this.publishtime);
    setDownloadtimes(this.downloadtimes);
    setFunction(this.function);
    setFileurl(this.fileurl);
    setPicurls(this.picurls);
    setOfficial(this.official);
    setUpdate(this.update);
    setScore(this.score);
    setSuser(this.suser);
    setSoftDescTimestamp(this.softDescTimestamp);
    setIProductID(this.iProductID);
    setISoftID(this.iSoftID);
    setIFileID(this.iFileID);
    setFeetype(this.feetype);
    setFee(this.fee);
    setPname(this.pname);
    setHprice(this.hprice);
    setComments(this.comments);
    setLogourls(this.logourls);
    setPageurl(this.pageurl);
    setLfee(this.lfee);
    setIsoftclass(this.isoftclass);
    setCn_fee(this.cn_fee);
    setCn_lfee(this.cn_lfee);
    setSrcpicurls(this.srcpicurls);
    setExpand(this.expand);
    setStrSource(this.strSource);
    setStrLinkContent(this.strLinkContent);
    setStrLinkUrl(this.strLinkUrl);
    setBreak_fileurl(this.break_fileurl);
    setVersion_break(this.version_break);
    setBreak_mini_os(this.break_mini_os);
  }

  public SoftInfo(SoftKey paramSoftKey, String paramString1, String paramString2, String paramString3, String paramString4, ArrayList<ProcInfo> paramArrayList, int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5, String paramString5, int paramInt6, String paramString6, int paramInt7, String paramString7, int paramInt8, String paramString8, String paramString9, ArrayList<String> paramArrayList1, int paramInt9, int paramInt10, int paramInt11, int paramInt12, int paramInt13, int paramInt14, int paramInt15, int paramInt16, int paramInt17, float paramFloat1, String paramString10, String paramString11, ArrayList<Comment> paramArrayList2, ArrayList<String> paramArrayList3, String paramString12, float paramFloat2, int paramInt18, float paramFloat3, float paramFloat4, ArrayList<String> paramArrayList4, byte[] paramArrayOfByte, String paramString13, String paramString14, String paramString15, String paramString16, String paramString17, String paramString18)
  {
    setSoftkey(paramSoftKey);
    setShort_desc(paramString1);
    setDescription(paramString2);
    setType(paramString3);
    setSoftclass(paramString4);
    setProcinfo(paramArrayList);
    setSmsmonitor(paramInt1);
    setPhonemonitor(paramInt2);
    setNetaccess(paramInt3);
    setAutostart(paramInt4);
    setAsopt(paramInt5);
    setNick_name(paramString5);
    setReportFeature(paramInt6);
    setLogourl(paramString6);
    setFilesize(paramInt7);
    setPublishtime(paramString7);
    setDownloadtimes(paramInt8);
    setFunction(paramString8);
    setFileurl(paramString9);
    setPicurls(paramArrayList1);
    setOfficial(paramInt9);
    setUpdate(paramInt10);
    setScore(paramInt11);
    setSuser(paramInt12);
    setSoftDescTimestamp(paramInt13);
    setIProductID(paramInt14);
    setISoftID(paramInt15);
    setIFileID(paramInt16);
    setFeetype(paramInt17);
    setFee(paramFloat1);
    setPname(paramString10);
    setHprice(paramString11);
    setComments(paramArrayList2);
    setLogourls(paramArrayList3);
    setPageurl(paramString12);
    setLfee(paramFloat2);
    setIsoftclass(paramInt18);
    setCn_fee(paramFloat3);
    setCn_lfee(paramFloat4);
    setSrcpicurls(paramArrayList4);
    setExpand(paramArrayOfByte);
    setStrSource(paramString13);
    setStrLinkContent(paramString14);
    setStrLinkUrl(paramString15);
    setBreak_fileurl(paramString16);
    setVersion_break(paramString17);
    setBreak_mini_os(paramString18);
  }

  public final String className()
  {
    return "QQPIM.SoftInfo";
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
    localJceDisplayer.display(this.short_desc, "short_desc");
    localJceDisplayer.display(this.description, "description");
    localJceDisplayer.display(this.type, "type");
    localJceDisplayer.display(this.softclass, "softclass");
    localJceDisplayer.display(this.procinfo, "procinfo");
    localJceDisplayer.display(this.smsmonitor, "smsmonitor");
    localJceDisplayer.display(this.phonemonitor, "phonemonitor");
    localJceDisplayer.display(this.netaccess, "netaccess");
    localJceDisplayer.display(this.autostart, "autostart");
    localJceDisplayer.display(this.asopt, "asopt");
    localJceDisplayer.display(this.nick_name, "nick_name");
    localJceDisplayer.display(this.reportFeature, "reportFeature");
    localJceDisplayer.display(this.logourl, "logourl");
    localJceDisplayer.display(this.filesize, "filesize");
    localJceDisplayer.display(this.publishtime, "publishtime");
    localJceDisplayer.display(this.downloadtimes, "downloadtimes");
    localJceDisplayer.display(this.function, "function");
    localJceDisplayer.display(this.fileurl, "fileurl");
    localJceDisplayer.display(this.picurls, "picurls");
    localJceDisplayer.display(this.official, "official");
    localJceDisplayer.display(this.update, "update");
    localJceDisplayer.display(this.score, "score");
    localJceDisplayer.display(this.suser, "suser");
    localJceDisplayer.display(this.softDescTimestamp, "softDescTimestamp");
    localJceDisplayer.display(this.iProductID, "iProductID");
    localJceDisplayer.display(this.iSoftID, "iSoftID");
    localJceDisplayer.display(this.iFileID, "iFileID");
    localJceDisplayer.display(this.feetype, "feetype");
    localJceDisplayer.display(this.fee, "fee");
    localJceDisplayer.display(this.pname, "pname");
    localJceDisplayer.display(this.hprice, "hprice");
    localJceDisplayer.display(this.comments, "comments");
    localJceDisplayer.display(this.logourls, "logourls");
    localJceDisplayer.display(this.pageurl, "pageurl");
    localJceDisplayer.display(this.lfee, "lfee");
    localJceDisplayer.display(this.isoftclass, "isoftclass");
    localJceDisplayer.display(this.cn_fee, "cn_fee");
    localJceDisplayer.display(this.cn_lfee, "cn_lfee");
    localJceDisplayer.display(this.srcpicurls, "srcpicurls");
    localJceDisplayer.display(this.expand, "expand");
    localJceDisplayer.display(this.strSource, "strSource");
    localJceDisplayer.display(this.strLinkContent, "strLinkContent");
    localJceDisplayer.display(this.strLinkUrl, "strLinkUrl");
    localJceDisplayer.display(this.break_fileurl, "break_fileurl");
    localJceDisplayer.display(this.version_break, "version_break");
    localJceDisplayer.display(this.break_mini_os, "break_mini_os");
  }

  public final boolean equals(Object paramObject)
  {
    boolean bool1 = false;
    if (paramObject == null);
    while (true)
    {
      return bool1;
      SoftInfo localSoftInfo = (SoftInfo)paramObject;
      boolean bool2 = JceUtil.equals(this.softkey, localSoftInfo.softkey);
      bool1 = false;
      if (bool2)
      {
        boolean bool3 = JceUtil.equals(this.short_desc, localSoftInfo.short_desc);
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = JceUtil.equals(this.description, localSoftInfo.description);
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = JceUtil.equals(this.type, localSoftInfo.type);
            bool1 = false;
            if (bool5)
            {
              boolean bool6 = JceUtil.equals(this.softclass, localSoftInfo.softclass);
              bool1 = false;
              if (bool6)
              {
                boolean bool7 = JceUtil.equals(this.procinfo, localSoftInfo.procinfo);
                bool1 = false;
                if (bool7)
                {
                  boolean bool8 = JceUtil.equals(this.smsmonitor, localSoftInfo.smsmonitor);
                  bool1 = false;
                  if (bool8)
                  {
                    boolean bool9 = JceUtil.equals(this.phonemonitor, localSoftInfo.phonemonitor);
                    bool1 = false;
                    if (bool9)
                    {
                      boolean bool10 = JceUtil.equals(this.netaccess, localSoftInfo.netaccess);
                      bool1 = false;
                      if (bool10)
                      {
                        boolean bool11 = JceUtil.equals(this.autostart, localSoftInfo.autostart);
                        bool1 = false;
                        if (bool11)
                        {
                          boolean bool12 = JceUtil.equals(this.asopt, localSoftInfo.asopt);
                          bool1 = false;
                          if (bool12)
                          {
                            boolean bool13 = JceUtil.equals(this.nick_name, localSoftInfo.nick_name);
                            bool1 = false;
                            if (bool13)
                            {
                              boolean bool14 = JceUtil.equals(this.reportFeature, localSoftInfo.reportFeature);
                              bool1 = false;
                              if (bool14)
                              {
                                boolean bool15 = JceUtil.equals(this.logourl, localSoftInfo.logourl);
                                bool1 = false;
                                if (bool15)
                                {
                                  boolean bool16 = JceUtil.equals(this.filesize, localSoftInfo.filesize);
                                  bool1 = false;
                                  if (bool16)
                                  {
                                    boolean bool17 = JceUtil.equals(this.publishtime, localSoftInfo.publishtime);
                                    bool1 = false;
                                    if (bool17)
                                    {
                                      boolean bool18 = JceUtil.equals(this.downloadtimes, localSoftInfo.downloadtimes);
                                      bool1 = false;
                                      if (bool18)
                                      {
                                        boolean bool19 = JceUtil.equals(this.function, localSoftInfo.function);
                                        bool1 = false;
                                        if (bool19)
                                        {
                                          boolean bool20 = JceUtil.equals(this.fileurl, localSoftInfo.fileurl);
                                          bool1 = false;
                                          if (bool20)
                                          {
                                            boolean bool21 = JceUtil.equals(this.picurls, localSoftInfo.picurls);
                                            bool1 = false;
                                            if (bool21)
                                            {
                                              boolean bool22 = JceUtil.equals(this.official, localSoftInfo.official);
                                              bool1 = false;
                                              if (bool22)
                                              {
                                                boolean bool23 = JceUtil.equals(this.update, localSoftInfo.update);
                                                bool1 = false;
                                                if (bool23)
                                                {
                                                  boolean bool24 = JceUtil.equals(this.score, localSoftInfo.score);
                                                  bool1 = false;
                                                  if (bool24)
                                                  {
                                                    boolean bool25 = JceUtil.equals(this.suser, localSoftInfo.suser);
                                                    bool1 = false;
                                                    if (bool25)
                                                    {
                                                      boolean bool26 = JceUtil.equals(this.softDescTimestamp, localSoftInfo.softDescTimestamp);
                                                      bool1 = false;
                                                      if (bool26)
                                                      {
                                                        boolean bool27 = JceUtil.equals(this.iProductID, localSoftInfo.iProductID);
                                                        bool1 = false;
                                                        if (bool27)
                                                        {
                                                          boolean bool28 = JceUtil.equals(this.iSoftID, localSoftInfo.iSoftID);
                                                          bool1 = false;
                                                          if (bool28)
                                                          {
                                                            boolean bool29 = JceUtil.equals(this.iFileID, localSoftInfo.iFileID);
                                                            bool1 = false;
                                                            if (bool29)
                                                            {
                                                              boolean bool30 = JceUtil.equals(this.feetype, localSoftInfo.feetype);
                                                              bool1 = false;
                                                              if (bool30)
                                                              {
                                                                boolean bool31 = JceUtil.equals(this.fee, localSoftInfo.fee);
                                                                bool1 = false;
                                                                if (bool31)
                                                                {
                                                                  boolean bool32 = JceUtil.equals(this.pname, localSoftInfo.pname);
                                                                  bool1 = false;
                                                                  if (bool32)
                                                                  {
                                                                    boolean bool33 = JceUtil.equals(this.hprice, localSoftInfo.hprice);
                                                                    bool1 = false;
                                                                    if (bool33)
                                                                    {
                                                                      boolean bool34 = JceUtil.equals(this.comments, localSoftInfo.comments);
                                                                      bool1 = false;
                                                                      if (bool34)
                                                                      {
                                                                        boolean bool35 = JceUtil.equals(this.logourls, localSoftInfo.logourls);
                                                                        bool1 = false;
                                                                        if (bool35)
                                                                        {
                                                                          boolean bool36 = JceUtil.equals(this.pageurl, localSoftInfo.pageurl);
                                                                          bool1 = false;
                                                                          if (bool36)
                                                                          {
                                                                            boolean bool37 = JceUtil.equals(this.lfee, localSoftInfo.lfee);
                                                                            bool1 = false;
                                                                            if (bool37)
                                                                            {
                                                                              boolean bool38 = JceUtil.equals(this.isoftclass, localSoftInfo.isoftclass);
                                                                              bool1 = false;
                                                                              if (bool38)
                                                                              {
                                                                                boolean bool39 = JceUtil.equals(this.cn_fee, localSoftInfo.cn_fee);
                                                                                bool1 = false;
                                                                                if (bool39)
                                                                                {
                                                                                  boolean bool40 = JceUtil.equals(this.cn_lfee, localSoftInfo.cn_lfee);
                                                                                  bool1 = false;
                                                                                  if (bool40)
                                                                                  {
                                                                                    boolean bool41 = JceUtil.equals(this.srcpicurls, localSoftInfo.srcpicurls);
                                                                                    bool1 = false;
                                                                                    if (bool41)
                                                                                    {
                                                                                      boolean bool42 = JceUtil.equals(this.expand, localSoftInfo.expand);
                                                                                      bool1 = false;
                                                                                      if (bool42)
                                                                                      {
                                                                                        boolean bool43 = JceUtil.equals(this.strSource, localSoftInfo.strSource);
                                                                                        bool1 = false;
                                                                                        if (bool43)
                                                                                        {
                                                                                          boolean bool44 = JceUtil.equals(this.strLinkContent, localSoftInfo.strLinkContent);
                                                                                          bool1 = false;
                                                                                          if (bool44)
                                                                                          {
                                                                                            boolean bool45 = JceUtil.equals(this.strLinkUrl, localSoftInfo.strLinkUrl);
                                                                                            bool1 = false;
                                                                                            if (bool45)
                                                                                            {
                                                                                              boolean bool46 = JceUtil.equals(this.break_fileurl, localSoftInfo.break_fileurl);
                                                                                              bool1 = false;
                                                                                              if (bool46)
                                                                                              {
                                                                                                boolean bool47 = JceUtil.equals(this.version_break, localSoftInfo.version_break);
                                                                                                bool1 = false;
                                                                                                if (bool47)
                                                                                                {
                                                                                                  boolean bool48 = JceUtil.equals(this.break_mini_os, localSoftInfo.break_mini_os);
                                                                                                  bool1 = false;
                                                                                                  if (bool48)
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
    return "QQPIM.SoftInfo";
  }

  public final int getAsopt()
  {
    return this.asopt;
  }

  public final int getAutostart()
  {
    return this.autostart;
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

  public final ArrayList<Comment> getComments()
  {
    return this.comments;
  }

  public final String getDescription()
  {
    return this.description;
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

  public final String getFunction()
  {
    return this.function;
  }

  public final String getHprice()
  {
    return this.hprice;
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

  public final int getIsoftclass()
  {
    return this.isoftclass;
  }

  public final float getLfee()
  {
    return this.lfee;
  }

  public final String getLogourl()
  {
    return this.logourl;
  }

  public final ArrayList<String> getLogourls()
  {
    return this.logourls;
  }

  public final int getNetaccess()
  {
    return this.netaccess;
  }

  public final String getNick_name()
  {
    return this.nick_name;
  }

  public final int getOfficial()
  {
    return this.official;
  }

  public final String getPageurl()
  {
    return this.pageurl;
  }

  public final int getPhonemonitor()
  {
    return this.phonemonitor;
  }

  public final ArrayList<String> getPicurls()
  {
    return this.picurls;
  }

  public final String getPname()
  {
    return this.pname;
  }

  public final ArrayList<ProcInfo> getProcinfo()
  {
    return this.procinfo;
  }

  public final String getPublishtime()
  {
    return this.publishtime;
  }

  public final int getReportFeature()
  {
    return this.reportFeature;
  }

  public final int getScore()
  {
    return this.score;
  }

  public final String getShort_desc()
  {
    return this.short_desc;
  }

  public final int getSmsmonitor()
  {
    return this.smsmonitor;
  }

  public final int getSoftDescTimestamp()
  {
    return this.softDescTimestamp;
  }

  public final String getSoftclass()
  {
    return this.softclass;
  }

  public final SoftKey getSoftkey()
  {
    return this.softkey;
  }

  public final ArrayList<String> getSrcpicurls()
  {
    return this.srcpicurls;
  }

  public final String getStrLinkContent()
  {
    return this.strLinkContent;
  }

  public final String getStrLinkUrl()
  {
    return this.strLinkUrl;
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

  public final int getUpdate()
  {
    return this.update;
  }

  public final String getVersion_break()
  {
    return this.version_break;
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
    this.short_desc = paramJceInputStream.readString(1, false);
    this.description = paramJceInputStream.readString(2, false);
    this.type = paramJceInputStream.readString(3, false);
    this.softclass = paramJceInputStream.readString(4, false);
    if (cache_procinfo == null)
    {
      cache_procinfo = new ArrayList();
      ProcInfo localProcInfo = new ProcInfo();
      cache_procinfo.add(localProcInfo);
    }
    setProcinfo((ArrayList)paramJceInputStream.read(cache_procinfo, 5, false));
    setSmsmonitor(paramJceInputStream.read(this.smsmonitor, 6, false));
    setPhonemonitor(paramJceInputStream.read(this.phonemonitor, 7, false));
    setNetaccess(paramJceInputStream.read(this.netaccess, 8, false));
    setAutostart(paramJceInputStream.read(this.autostart, 9, false));
    setAsopt(paramJceInputStream.read(this.asopt, 10, false));
    setNick_name(paramJceInputStream.readString(11, false));
    setReportFeature(paramJceInputStream.read(this.reportFeature, 12, false));
    setLogourl(paramJceInputStream.readString(13, false));
    setFilesize(paramJceInputStream.read(this.filesize, 14, false));
    setPublishtime(paramJceInputStream.readString(15, false));
    setDownloadtimes(paramJceInputStream.read(this.downloadtimes, 16, false));
    setFunction(paramJceInputStream.readString(17, false));
    setFileurl(paramJceInputStream.readString(18, false));
    if (cache_picurls == null)
    {
      cache_picurls = new ArrayList();
      cache_picurls.add("");
    }
    setPicurls((ArrayList)paramJceInputStream.read(cache_picurls, 19, false));
    setOfficial(paramJceInputStream.read(this.official, 20, false));
    setUpdate(paramJceInputStream.read(this.update, 21, false));
    setScore(paramJceInputStream.read(this.score, 22, false));
    setSuser(paramJceInputStream.read(this.suser, 23, false));
    setSoftDescTimestamp(paramJceInputStream.read(this.softDescTimestamp, 24, false));
    setIProductID(paramJceInputStream.read(this.iProductID, 25, false));
    setISoftID(paramJceInputStream.read(this.iSoftID, 26, false));
    setIFileID(paramJceInputStream.read(this.iFileID, 27, false));
    setFeetype(paramJceInputStream.read(this.feetype, 28, false));
    setFee(paramJceInputStream.read(this.fee, 29, false));
    setPname(paramJceInputStream.readString(30, false));
    setHprice(paramJceInputStream.readString(31, false));
    if (cache_comments == null)
    {
      cache_comments = new ArrayList();
      Comment localComment = new Comment();
      cache_comments.add(localComment);
    }
    setComments((ArrayList)paramJceInputStream.read(cache_comments, 32, false));
    if (cache_logourls == null)
    {
      cache_logourls = new ArrayList();
      cache_logourls.add("");
    }
    setLogourls((ArrayList)paramJceInputStream.read(cache_logourls, 33, false));
    setPageurl(paramJceInputStream.readString(34, false));
    setLfee(paramJceInputStream.read(this.lfee, 35, false));
    setIsoftclass(paramJceInputStream.read(this.isoftclass, 36, false));
    setCn_fee(paramJceInputStream.read(this.cn_fee, 37, false));
    setCn_lfee(paramJceInputStream.read(this.cn_lfee, 38, false));
    if (cache_srcpicurls == null)
    {
      cache_srcpicurls = new ArrayList();
      cache_srcpicurls.add("");
    }
    setSrcpicurls((ArrayList)paramJceInputStream.read(cache_srcpicurls, 39, false));
    if (cache_expand == null)
    {
      byte[] arrayOfByte = new byte[1];
      cache_expand = arrayOfByte;
      arrayOfByte[0] = 0;
    }
    setExpand(paramJceInputStream.read(cache_expand, 40, false));
    setStrSource(paramJceInputStream.readString(41, false));
    setStrLinkContent(paramJceInputStream.readString(42, false));
    setStrLinkUrl(paramJceInputStream.readString(43, false));
    setBreak_fileurl(paramJceInputStream.readString(44, false));
    setVersion_break(paramJceInputStream.readString(45, false));
    setBreak_mini_os(paramJceInputStream.readString(46, false));
  }

  public final void setAsopt(int paramInt)
  {
    this.asopt = paramInt;
  }

  public final void setAutostart(int paramInt)
  {
    this.autostart = paramInt;
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

  public final void setComments(ArrayList<Comment> paramArrayList)
  {
    this.comments = paramArrayList;
  }

  public final void setDescription(String paramString)
  {
    this.description = paramString;
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

  public final void setFunction(String paramString)
  {
    this.function = paramString;
  }

  public final void setHprice(String paramString)
  {
    this.hprice = paramString;
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

  public final void setIsoftclass(int paramInt)
  {
    this.isoftclass = paramInt;
  }

  public final void setLfee(float paramFloat)
  {
    this.lfee = paramFloat;
  }

  public final void setLogourl(String paramString)
  {
    this.logourl = paramString;
  }

  public final void setLogourls(ArrayList<String> paramArrayList)
  {
    this.logourls = paramArrayList;
  }

  public final void setNetaccess(int paramInt)
  {
    this.netaccess = paramInt;
  }

  public final void setNick_name(String paramString)
  {
    this.nick_name = paramString;
  }

  public final void setOfficial(int paramInt)
  {
    this.official = paramInt;
  }

  public final void setPageurl(String paramString)
  {
    this.pageurl = paramString;
  }

  public final void setPhonemonitor(int paramInt)
  {
    this.phonemonitor = paramInt;
  }

  public final void setPicurls(ArrayList<String> paramArrayList)
  {
    this.picurls = paramArrayList;
  }

  public final void setPname(String paramString)
  {
    this.pname = paramString;
  }

  public final void setProcinfo(ArrayList<ProcInfo> paramArrayList)
  {
    this.procinfo = paramArrayList;
  }

  public final void setPublishtime(String paramString)
  {
    this.publishtime = paramString;
  }

  public final void setReportFeature(int paramInt)
  {
    this.reportFeature = paramInt;
  }

  public final void setScore(int paramInt)
  {
    this.score = paramInt;
  }

  public final void setShort_desc(String paramString)
  {
    this.short_desc = paramString;
  }

  public final void setSmsmonitor(int paramInt)
  {
    this.smsmonitor = paramInt;
  }

  public final void setSoftDescTimestamp(int paramInt)
  {
    this.softDescTimestamp = paramInt;
  }

  public final void setSoftclass(String paramString)
  {
    this.softclass = paramString;
  }

  public final void setSoftkey(SoftKey paramSoftKey)
  {
    this.softkey = paramSoftKey;
  }

  public final void setSrcpicurls(ArrayList<String> paramArrayList)
  {
    this.srcpicurls = paramArrayList;
  }

  public final void setStrLinkContent(String paramString)
  {
    this.strLinkContent = paramString;
  }

  public final void setStrLinkUrl(String paramString)
  {
    this.strLinkUrl = paramString;
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

  public final void setUpdate(int paramInt)
  {
    this.update = paramInt;
  }

  public final void setVersion_break(String paramString)
  {
    this.version_break = paramString;
  }

  public final void writeTo(JceOutputStream paramJceOutputStream)
  {
    paramJceOutputStream.write(this.softkey, 0);
    if (this.short_desc != null)
      paramJceOutputStream.write(this.short_desc, 1);
    if (this.description != null)
      paramJceOutputStream.write(this.description, 2);
    if (this.type != null)
      paramJceOutputStream.write(this.type, 3);
    if (this.softclass != null)
      paramJceOutputStream.write(this.softclass, 4);
    if (this.procinfo != null)
      paramJceOutputStream.write(this.procinfo, 5);
    paramJceOutputStream.write(this.smsmonitor, 6);
    paramJceOutputStream.write(this.phonemonitor, 7);
    paramJceOutputStream.write(this.netaccess, 8);
    paramJceOutputStream.write(this.autostart, 9);
    paramJceOutputStream.write(this.asopt, 10);
    if (this.nick_name != null)
      paramJceOutputStream.write(this.nick_name, 11);
    paramJceOutputStream.write(this.reportFeature, 12);
    if (this.logourl != null)
      paramJceOutputStream.write(this.logourl, 13);
    paramJceOutputStream.write(this.filesize, 14);
    if (this.publishtime != null)
      paramJceOutputStream.write(this.publishtime, 15);
    paramJceOutputStream.write(this.downloadtimes, 16);
    if (this.function != null)
      paramJceOutputStream.write(this.function, 17);
    if (this.fileurl != null)
      paramJceOutputStream.write(this.fileurl, 18);
    if (this.picurls != null)
      paramJceOutputStream.write(this.picurls, 19);
    paramJceOutputStream.write(this.official, 20);
    paramJceOutputStream.write(this.update, 21);
    paramJceOutputStream.write(this.score, 22);
    paramJceOutputStream.write(this.suser, 23);
    paramJceOutputStream.write(this.softDescTimestamp, 24);
    paramJceOutputStream.write(this.iProductID, 25);
    paramJceOutputStream.write(this.iSoftID, 26);
    paramJceOutputStream.write(this.iFileID, 27);
    paramJceOutputStream.write(this.feetype, 28);
    paramJceOutputStream.write(this.fee, 29);
    if (this.pname != null)
      paramJceOutputStream.write(this.pname, 30);
    if (this.hprice != null)
      paramJceOutputStream.write(this.hprice, 31);
    if (this.comments != null)
      paramJceOutputStream.write(this.comments, 32);
    if (this.logourls != null)
      paramJceOutputStream.write(this.logourls, 33);
    if (this.pageurl != null)
      paramJceOutputStream.write(this.pageurl, 34);
    paramJceOutputStream.write(this.lfee, 35);
    paramJceOutputStream.write(this.isoftclass, 36);
    paramJceOutputStream.write(this.cn_fee, 37);
    paramJceOutputStream.write(this.cn_lfee, 38);
    if (this.srcpicurls != null)
      paramJceOutputStream.write(this.srcpicurls, 39);
    if (this.expand != null)
      paramJceOutputStream.write(this.expand, 40);
    if (this.strSource != null)
      paramJceOutputStream.write(this.strSource, 41);
    if (this.strLinkContent != null)
      paramJceOutputStream.write(this.strLinkContent, 42);
    if (this.strLinkUrl != null)
      paramJceOutputStream.write(this.strLinkUrl, 43);
    if (this.break_fileurl != null)
      paramJceOutputStream.write(this.break_fileurl, 44);
    if (this.version_break != null)
      paramJceOutputStream.write(this.version_break, 45);
    if (this.break_mini_os != null)
      paramJceOutputStream.write(this.break_mini_os, 46);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     QQPIM.SoftInfo
 * JD-Core Version:    0.6.2
 */