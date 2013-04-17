package com.tencent.tmsecure.module.wupsession;

import QQPIM.ConfInfo;
import QQPIM.ConnectType;
import QQPIM.DeviceInfo;
import QQPIM.EProduct;
import QQPIM.GUIDInfo;
import QQPIM.MachineInfo;
import QQPIM.PhoneType;
import QQPIM.ProductVersion;
import QQPIM.SPhoneType;
import QQPIM.SUIKey;
import QQPIM.SUserInfo;
import QQPIM.UserInfo;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import btl;
import bze;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import com.tencent.tmsecure.utils.EnvUtil;
import com.tencent.tmsecure.utils.NetworkUtil;
import com.tencent.tmsecure.utils.PhoneInfoUtil;
import com.tencent.tmsecure.utils.SDKUtil;
import com.tencent.tmsecure.utils.StringUtil;
import com.tencent.tmsecure.utils.UpdateUtil;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;

public final class WupConfig
{
  public static final String HOST_URL = TMSApplication.getStrFromEnvMap("host_url");
  public static final String KEY_GUID = "guid";
  public static String REDIRECT_URL = null;
  public static final int RQ_BROWSER_CHECK = 41;
  public static final int RQ_CHECK_LICENCE = 42;
  public static final int RQ_CHECK_URL = 39;
  public static final int RQ_CHECK_URL_EX = 40;
  public static final int RQ_GET_ADS = 17;
  public static final int RQ_GET_ANALYSE_INFO = 11;
  public static final int RQ_GET_BIND_PHONE_LIST = 45;
  public static final int RQ_GET_CATEGORY_LIST = 8;
  public static final int RQ_GET_CHANGE_URL = 22;
  public static final int RQ_GET_CONFIG = 23;
  public static final int RQ_GET_CONFIG_V3 = 24;
  public static final int RQ_GET_CONFIG_V3_CPT = 25;
  public static final int RQ_GET_GUID = 18;
  public static final int RQ_GET_HOT_WORD = 19;
  public static final int RQ_GET_MARK = 43;
  public static final int RQ_GET_MY_SOFT_LIST = 10;
  public static final int RQ_GET_ORDER_FOR_REACT = 38;
  public static final int RQ_GET_PK_USER_INFO = 48;
  public static final int RQ_GET_QUERY_INFO = 33;
  public static final int RQ_GET_QUERY_INFO_MULTI = 37;
  public static final int RQ_GET_SOFT_INFO = 0;
  public static final int RQ_GET_SOFT_LIST = 9;
  public static final int RQ_GET_TIME = 16;
  public static final int RQ_GET_TRAFFIC_CMD = 34;
  public static final int RQ_GET_TRAFFIC_TEMPLATE = 32;
  public static final int RQ_GET_UPDATES_V2 = 12;
  public static final int RQ_GET_VIRUS_INFOS = 7;
  public static final int RQ_REPORT_ANTI_THEFT = 44;
  public static final int RQ_REPORT_CHANNEL_INFO = 5;
  public static final int RQ_REPORT_DOWN_SOFT = 14;
  public static final int RQ_REPORT_ERROR_MSG = 35;
  public static final int RQ_REPORT_FBILLEGA_REASON = 4;
  public static final int RQ_REPORT_LOCAL_NET = 36;
  public static final int RQ_REPORT_MOBILE = 26;
  public static final int RQ_REPORT_NOTIFY_INFO = 21;
  public static final int RQ_REPORT_PK_POSITION = 47;
  public static final int RQ_REPORT_PK_RESULT = 49;
  public static final int RQ_REPORT_SMS = 28;
  public static final int RQ_REPORT_SOFT_ACTION = 20;
  public static final int RQ_REPORT_SOFT_DESC = 15;
  public static final int RQ_REPORT_SOFT_FEATURE = 30;
  public static final int RQ_REPORT_SOFT_TYPE = 1;
  public static final int RQ_REPORT_SOFT_USAGE_INFO = 31;
  public static final int RQ_REPORT_TEL = 29;
  public static final int RQ_REPORT_TIPS_RES = 13;
  public static final int RQ_REPORT_UNKNOW_SOFT_INFO = 3;
  public static final int RQ_REPORT_USER_COMMENT = 2;
  public static final int RQ_REPORT_VIRUS_LIB_UPDATE = 6;
  public static final int RQ_REPORT_WBLIST = 27;
  public static final int RQ_SET_URGENT_INFO = 46;
  private static String a;
  public static final String gQua = "AQQSecure_GA_2_0/011201&ADR&" + PhoneInfoUtil.getModelName() + "&V2";
  public static bze[] mWupParam = arrayOfbze;
  private String b = null;
  private String c = null;
  private Context d;
  private btl e;
  private PhoneType f;
  private SPhoneType g;
  private UserInfo h;
  private SUserInfo i;
  private DeviceInfo j;
  private MachineInfo k;
  private SUIKey l;

  static
  {
    a = null;
    bze[] arrayOfbze = new bze[50];
    arrayOfbze[0] = new bze("info", "getSoftInfo");
    arrayOfbze[1] = new bze("info", "reportSoftType");
    arrayOfbze[2] = new bze("info", "reportUserComment");
    arrayOfbze[3] = new bze("info", "reportUnknowSoftInfo");
    arrayOfbze[4] = new bze("info", "reportFBIllegaReason");
    arrayOfbze[5] = new bze("info", "reportChannelInfo");
    arrayOfbze[6] = new bze("info", "reportVirusLibUpdate");
    arrayOfbze[7] = new bze("info", "getVirusInfos");
    arrayOfbze[8] = new bze("info", "getCategoryList");
    arrayOfbze[9] = new bze("info", "getSoftList");
    arrayOfbze[10] = new bze("info", "getMySoftList");
    arrayOfbze[11] = new bze("info", "getAnalyseInfo");
    arrayOfbze[12] = new bze("info", "getUpdatesV2");
    arrayOfbze[13] = new bze("info", "reportTipsRes");
    arrayOfbze[14] = new bze("info", "reportDownSoft");
    arrayOfbze[15] = new bze("info", "reportSoftDesc");
    arrayOfbze[16] = new bze("info", "getTime");
    arrayOfbze[17] = new bze("info", "getADs");
    arrayOfbze[18] = new bze("info", "getGuid");
    arrayOfbze[19] = new bze("info", "getHotWord");
    arrayOfbze[20] = new bze("info", "reportSoftAction");
    arrayOfbze[21] = new bze("info", "reportNotifyInfo");
    arrayOfbze[22] = new bze("info", "getChangeUrl");
    arrayOfbze[23] = new bze("conf", "getConfig");
    arrayOfbze[24] = new bze("conf", "getConfigV3");
    arrayOfbze[25] = new bze("conf", "getConfigV3CPT");
    arrayOfbze[26] = new bze("conf", "reportMobile");
    arrayOfbze[27] = new bze("conf", "reportWBList");
    arrayOfbze[28] = new bze("sms", "reportSms");
    arrayOfbze[29] = new bze("sms", "reportTel");
    arrayOfbze[30] = new bze("sms", "reportSoftFeature");
    arrayOfbze[31] = new bze("report", "reportSoftUsageInfo");
    arrayOfbze[32] = new bze("traffic", "getTrafficTemplate");
    arrayOfbze[33] = new bze("traffic", "getQueryInfo");
    arrayOfbze[34] = new bze("traffic", "getCloudOrder");
    arrayOfbze[35] = new bze("traffic", "reportErrorMsg");
    arrayOfbze[36] = new bze("traffic", "reportLocalNet");
    arrayOfbze[37] = new bze("traffic", "getQueryInfo_Multi");
    arrayOfbze[38] = new bze("traffic", "getOrderForReAct");
    arrayOfbze[39] = new bze("check", "checkUrl");
    arrayOfbze[40] = new bze("check", "checkUrlExt");
    arrayOfbze[41] = new bze("info", "browerCheck");
    arrayOfbze[42] = new bze("check", "getlicencedate");
    arrayOfbze[43] = new bze("benchmark", "getMark");
    arrayOfbze[44] = new bze("antitheft", "reportAntiTheft");
    arrayOfbze[45] = new bze("antitheft", "getBindList");
    arrayOfbze[46] = new bze("antitheft", "setUrgentInfo");
    arrayOfbze[47] = new bze("benchmark", "reportPKPosition");
    arrayOfbze[48] = new bze("benchmark", "getPKUserInfo");
    arrayOfbze[49] = new bze("benchmark", "reportPKResult");
  }

  public WupConfig(Context paramContext)
  {
    this.d = paramContext;
    this.e = new btl("wup");
    if (a == null)
      a = this.e.a("guid", null);
    this.b = StringUtil.assertNotNullString(PhoneInfoUtil.getIMEI(this.d));
    this.c = StringUtil.assertNotNullString(PhoneInfoUtil.getMAC(this.d));
  }

  public static String getFuncName(int paramInt)
  {
    return mWupParam[paramInt].b;
  }

  public static String getServantName(int paramInt)
  {
    return mWupParam[paramInt].a;
  }

  public final int checkGuid()
  {
    if ((a != null) && (!a.equals("")))
    {
      String str2 = StringUtil.assertNotNullString(PhoneInfoUtil.getIMEI(this.d));
      String str3 = StringUtil.assertNotNullString(PhoneInfoUtil.getMAC(this.d));
      this.b = this.e.a("imei", str2);
      this.c = this.e.a("mac", str3);
      if ((str2.equals(this.b)) && (str3.equals(this.c)))
        break label459;
      this.b = str2;
      this.c = str3;
    }
    label453: label459: for (int i1 = 1; ; i1 = 0)
    {
      int m;
      if (i1 != 0)
        if (this.j == null)
        {
          this.j = new DeviceInfo();
          this.j.setImei(this.b);
          this.j.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.d)));
          this.j.setMac(this.c);
          this.j.setIccid(StringUtil.assertNotNullString(PhoneInfoUtil.getICCID(this.d)));
          this.j.setAndroidid(StringUtil.assertNotNullString(PhoneInfoUtil.getAndoidId()));
          this.j.setSdkversion(SDKUtil.getSDKVersion());
          this.j.setModel(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
          this.j.setProduct(StringUtil.assertNotNullString(PhoneInfoUtil.getProductName()));
          this.j.setNetfile(StringUtil.assertNotNullString(EnvUtil.getDeviceInfoStr(this.d)));
          this.j.setLguid(a);
          DeviceInfo localDeviceInfo = this.j;
          AtomicReference localAtomicReference = new AtomicReference();
          m = ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).getGuidFromServer(localDeviceInfo, localAtomicReference);
          if (m != 0)
            break label453;
          GUIDInfo localGUIDInfo = (GUIDInfo)localAtomicReference.get();
          if (localGUIDInfo == null)
            break label453;
          String str1 = localGUIDInfo.getGuid();
          a = str1;
          if ((str1 != null) && (!a.equals("")))
            break label453;
        }
      for (int n = -2001; ; n = m)
      {
        if (n != 0);
        while (true)
        {
          return n;
          this.j.setLguid(a);
          this.j.setImei(this.b);
          this.j.setMac(this.c);
          break;
          this.e.a("imei", this.b, false);
          this.e.a("mac", this.c, false);
          this.e.a("guid", a, false);
          this.e.b.commit();
          n = 0;
        }
      }
    }
  }

  public final MachineInfo getMachineInfo()
  {
    int m;
    if (this.k == null)
    {
      this.k = new MachineInfo();
      this.k.setGuid(a);
      this.k.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("lc")));
      this.k.setImei(this.b);
      this.k.setSp(PhoneInfoUtil.getNetworkOperatorCode(this.d));
      this.k.setProduct(TMSApplication.getIntFromEnvMap("product"));
      this.k.setChannelid(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("channel")));
      this.k.setPhonetype(getPhoneType());
      this.k.setMachine(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
      this.k.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.d)));
      MachineInfo localMachineInfo = this.k;
      if (EnvUtil.isBuildIn(this.d))
      {
        m = 1;
        localMachineInfo.setIsbuildin(m);
      }
    }
    while (true)
    {
      return this.k;
      m = 0;
      break;
      this.k.setGuid(a);
      this.k.setImei(this.b);
      this.k.setIsroot(EnvUtil.getRootStatus());
    }
  }

  public final PhoneType getPhoneType()
  {
    if (this.f == null)
    {
      this.f = new PhoneType();
      this.f.setPhonetype(2);
      this.f.setSubplatform(TMSApplication.getIntFromEnvMap("sub_platform"));
    }
    return this.f;
  }

  public final SPhoneType getSPhoneType()
  {
    if (this.g == null)
    {
      this.g = new SPhoneType();
      this.g.setPhonetype(2);
    }
    return this.g;
  }

  public final SUIKey getSUIKey()
  {
    int i1;
    if (this.l == null)
    {
      this.l = new SUIKey();
      this.l.setGuid(a);
      this.l.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("lc")));
      this.l.setName(EProduct.convert(TMSApplication.getIntFromEnvMap("product")).toString());
      this.l.setVersion(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("softversion")));
      this.l.setImei(this.b);
      this.l.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.d)));
      this.l.setType(2);
      this.l.setOsversion(StringUtil.assertNotNullString(SDKUtil.getSDKName()));
      this.l.setMachineuid(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
      int m = PhoneInfoUtil.getScreenWidth(this.d);
      int n = PhoneInfoUtil.getScreenHeight(this.d);
      this.l.setMachineconf("screen=" + m + "*" + n);
      this.l.setSubplatform(TMSApplication.getIntFromEnvMap("sub_platform"));
      this.l.setChannelid(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("channel")));
      SUIKey localSUIKey = this.l;
      if (EnvUtil.isBuildIn(this.d))
      {
        i1 = 1;
        localSUIKey.setIsbuildin(i1);
      }
    }
    while (true)
    {
      return this.l;
      i1 = 0;
      break;
      this.l.setImei(this.b);
    }
  }

  public final SUserInfo getSUserInfo()
  {
    ConfInfo localConfInfo = UpdateUtil.getSmsCheckerConfInfo(this.d, this.d.getFilesDir().getAbsolutePath() + File.separator + "rule_store.sys");
    if (this.i == null)
    {
      this.i = new SUserInfo();
      this.i.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.d)));
      this.i.setImei(this.b);
      this.i.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("lc")));
      this.i.setVersion(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("softversion")));
      this.i.setBuildno(TMSApplication.getIntFromEnvMap("build"));
      this.i.setProductid(TMSApplication.getIntFromEnvMap("product"));
      if (localConfInfo != null)
        this.i.setRuletime(localConfInfo.getTimestamp());
    }
    while (true)
    {
      return this.i;
      this.i.setImei(this.b);
      if (localConfInfo != null)
        this.i.setRuletime(localConfInfo.getTimestamp());
    }
  }

  public final UserInfo getUserInfo()
  {
    int m = 2;
    int n = 1;
    if (this.h == null)
    {
      this.h = new UserInfo();
      this.h.setImei(this.b);
      this.h.setLc(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("lc")));
      this.h.setChannelid(StringUtil.assertNotNullString(TMSApplication.getStrFromEnvMap("channel")));
      this.h.setUa(StringUtil.assertNotNullString(PhoneInfoUtil.getModelName()));
      this.h.setProduct(TMSApplication.getIntFromEnvMap("product"));
      int i1 = TMSApplication.getIntFromEnvMap("pversion");
      int i2 = TMSApplication.getIntFromEnvMap("cversion");
      int i3 = TMSApplication.getIntFromEnvMap("hotfix");
      if (i1 == 0)
      {
        String[] arrayOfString = TMSApplication.getStrFromEnvMap("softversion").trim().split("[\\.]");
        if (arrayOfString.length >= 3)
        {
          i1 = Integer.parseInt(arrayOfString[0]);
          i2 = Integer.parseInt(arrayOfString[n]);
          i3 = Integer.parseInt(arrayOfString[m]);
        }
      }
      this.h.setVersion(new ProductVersion(i1, i2, i3));
      this.h.setGuid(a);
      this.h.setImsi(StringUtil.assertNotNullString(PhoneInfoUtil.getIMSI(this.d)));
      UserInfo localUserInfo2 = this.h;
      int i4;
      UserInfo localUserInfo3;
      if (NetworkUtil.getNetworkType() == ConnectType.CT_WIFI)
      {
        i4 = m;
        localUserInfo2.setCt(i4);
        localUserInfo3 = this.h;
        if (!EnvUtil.isBuildIn(this.d))
          break label309;
      }
      while (true)
      {
        localUserInfo3.setIsbuildin(n);
        this.h.setIsroot(EnvUtil.getRootStatus());
        this.h.setSdkversion(SDKUtil.getSDKVersion());
        this.h.setBuildno(TMSApplication.getIntFromEnvMap("build"));
        return this.h;
        i4 = n;
        break;
        label309: n = 0;
      }
    }
    this.h.setGuid(a);
    this.h.setImei(this.b);
    this.h.setIsroot(EnvUtil.getRootStatus());
    UserInfo localUserInfo1 = this.h;
    if (NetworkUtil.getNetworkType() == ConnectType.CT_WIFI);
    while (true)
    {
      localUserInfo1.setCt(m);
      break;
      m = n;
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.tmsecure.module.wupsession.WupConfig
 * JD-Core Version:    0.6.2
 */