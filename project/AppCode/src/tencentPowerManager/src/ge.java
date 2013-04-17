import QQPIM.ConnectType;
import QQPIM.DeviceInfo;
import QQPIM.EProduct;
import QQPIM.GUIDInfo;
import QQPIM.PhoneType;
import QQPIM.ProductVersion;
import QQPIM.SUIKey;
import QQPIM.UserInfo;
import android.content.Context;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Build;
import android.os.Build.VERSION;
import android.os.Environment;
import android.os.StatFs;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.File;
import java.util.concurrent.atomic.AtomicReference;

public final class ge
{
  public static final String a = TMSApplication.getStrFromEnvMap("host_url");
  private static String b;
  private static gf[] c = arrayOfgf;
  private String d = null;
  private String e = null;
  private Context f;
  private ex g;
  private PhoneType h;
  private UserInfo i;
  private DeviceInfo j;
  private SUIKey k;

  static
  {
    new StringBuilder("AQQSecure_GA_2_0/011201&ADR&").append(Build.MODEL).append("&V2").toString();
    b = null;
    gf[] arrayOfgf = new gf[50];
    arrayOfgf[0] = new gf("info", "getSoftInfo");
    arrayOfgf[1] = new gf("info", "reportSoftType");
    arrayOfgf[2] = new gf("info", "reportUserComment");
    arrayOfgf[3] = new gf("info", "reportUnknowSoftInfo");
    arrayOfgf[4] = new gf("info", "reportFBIllegaReason");
    arrayOfgf[5] = new gf("info", "reportChannelInfo");
    arrayOfgf[6] = new gf("info", "reportVirusLibUpdate");
    arrayOfgf[7] = new gf("info", "getVirusInfos");
    arrayOfgf[8] = new gf("info", "getCategoryList");
    arrayOfgf[9] = new gf("info", "getSoftList");
    arrayOfgf[10] = new gf("info", "getMySoftList");
    arrayOfgf[11] = new gf("info", "getAnalyseInfo");
    arrayOfgf[12] = new gf("info", "getUpdatesV2");
    arrayOfgf[13] = new gf("info", "reportTipsRes");
    arrayOfgf[14] = new gf("info", "reportDownSoft");
    arrayOfgf[15] = new gf("info", "reportSoftDesc");
    arrayOfgf[16] = new gf("info", "getTime");
    arrayOfgf[17] = new gf("info", "getADs");
    arrayOfgf[18] = new gf("info", "getGuid");
    arrayOfgf[19] = new gf("info", "getHotWord");
    arrayOfgf[20] = new gf("info", "reportSoftAction");
    arrayOfgf[21] = new gf("info", "reportNotifyInfo");
    arrayOfgf[22] = new gf("info", "getChangeUrl");
    arrayOfgf[23] = new gf("conf", "getConfig");
    arrayOfgf[24] = new gf("conf", "getConfigV3");
    arrayOfgf[25] = new gf("conf", "getConfigV3CPT");
    arrayOfgf[26] = new gf("conf", "reportMobile");
    arrayOfgf[27] = new gf("conf", "reportWBList");
    arrayOfgf[28] = new gf("sms", "reportSms");
    arrayOfgf[29] = new gf("sms", "reportTel");
    arrayOfgf[30] = new gf("sms", "reportSoftFeature");
    arrayOfgf[31] = new gf("report", "reportSoftUsageInfo");
    arrayOfgf[32] = new gf("traffic", "getTrafficTemplate");
    arrayOfgf[33] = new gf("traffic", "getQueryInfo");
    arrayOfgf[34] = new gf("traffic", "getCloudOrder");
    arrayOfgf[35] = new gf("traffic", "reportErrorMsg");
    arrayOfgf[36] = new gf("traffic", "reportLocalNet");
    arrayOfgf[37] = new gf("traffic", "getQueryInfo_Multi");
    arrayOfgf[38] = new gf("traffic", "getOrderForReAct");
    arrayOfgf[39] = new gf("check", "checkUrl");
    arrayOfgf[40] = new gf("check", "checkUrlExt");
    arrayOfgf[41] = new gf("info", "browerCheck");
    arrayOfgf[42] = new gf("check", "getlicencedate");
    arrayOfgf[43] = new gf("benchmark", "getMark");
    arrayOfgf[44] = new gf("antitheft", "reportAntiTheft");
    arrayOfgf[45] = new gf("antitheft", "getBindList");
    arrayOfgf[46] = new gf("antitheft", "setUrgentInfo");
    arrayOfgf[47] = new gf("benchmark", "reportPKPosition");
    arrayOfgf[48] = new gf("benchmark", "getPKUserInfo");
    arrayOfgf[49] = new gf("benchmark", "reportPKResult");
  }

  public ge(Context paramContext)
  {
    this.f = paramContext;
    this.g = new ex("wup");
    if (b == null)
      b = this.g.a("guid", null);
    String str1 = ((TelephonyManager)this.f.getSystemService("phone")).getDeviceId();
    if (str1 == null)
      str1 = "";
    this.d = str1;
    WifiInfo localWifiInfo = ((WifiManager)this.f.getSystemService("wifi")).getConnectionInfo();
    if (localWifiInfo != null);
    for (String str2 = localWifiInfo.getMacAddress(); ; str2 = null)
    {
      if (str2 == null)
        str2 = "";
      this.e = str2;
      return;
    }
  }

  public static String a(int paramInt)
  {
    return c[paramInt].a;
  }

  public static String b(int paramInt)
  {
    return c[paramInt].b;
  }

  public final PhoneType a()
  {
    if (this.h == null)
    {
      this.h = new PhoneType();
      this.h.setPhonetype(2);
      this.h.setSubplatform(TMSApplication.getIntFromEnvMap("sub_platform"));
    }
    return this.h;
  }

  public final UserInfo b()
  {
    int m = 2;
    if (this.i == null)
    {
      this.i = new UserInfo();
      this.i.setImei(this.d);
      UserInfo localUserInfo3 = this.i;
      String str1 = TMSApplication.getStrFromEnvMap("lc");
      if (str1 == null)
        str1 = "";
      localUserInfo3.setLc(str1);
      UserInfo localUserInfo4 = this.i;
      String str2 = TMSApplication.getStrFromEnvMap("channel");
      if (str2 == null)
        str2 = "";
      localUserInfo4.setChannelid(str2);
      UserInfo localUserInfo5 = this.i;
      String str3 = Build.MODEL;
      if (str3 == null)
        str3 = "";
      localUserInfo5.setUa(str3);
      this.i.setProduct(TMSApplication.getIntFromEnvMap("product"));
      int i1 = TMSApplication.getIntFromEnvMap("pversion");
      int i2 = TMSApplication.getIntFromEnvMap("cversion");
      int i3 = TMSApplication.getIntFromEnvMap("hotfix");
      if (i1 == 0)
      {
        String[] arrayOfString = TMSApplication.getStrFromEnvMap("softversion").trim().split("[\\.]");
        if (arrayOfString.length >= 3)
        {
          i1 = Integer.parseInt(arrayOfString[0]);
          i2 = Integer.parseInt(arrayOfString[1]);
          i3 = Integer.parseInt(arrayOfString[m]);
        }
      }
      this.i.setVersion(new ProductVersion(i1, i2, i3));
      this.i.setGuid(b);
      UserInfo localUserInfo6 = this.i;
      String str4 = ((TelephonyManager)this.f.getSystemService("phone")).getSubscriberId();
      if (str4 == null)
        str4 = "";
      localUserInfo6.setImsi(str4);
      UserInfo localUserInfo7 = this.i;
      int i4;
      UserInfo localUserInfo8;
      if (bk.a() == ConnectType.CT_WIFI)
      {
        i4 = m;
        localUserInfo7.setCt(i4);
        localUserInfo8 = this.i;
        if (!a.b(this.f))
          break label410;
      }
      label410: for (int i5 = 1; ; i5 = 0)
      {
        localUserInfo8.setIsbuildin(i5);
        UserInfo localUserInfo9 = this.i;
        boolean bool3 = gl.a;
        int i6 = 0;
        if (!bool3)
        {
          boolean bool4 = gl.b();
          i6 = 0;
          if (bool4)
            i6 = 1;
        }
        localUserInfo9.setIsroot(i6);
        this.i.setSdkversion(Integer.parseInt(Build.VERSION.SDK));
        this.i.setBuildno(TMSApplication.getIntFromEnvMap("build"));
        return this.i;
        i4 = 1;
        break;
      }
    }
    this.i.setGuid(b);
    this.i.setImei(this.d);
    UserInfo localUserInfo1 = this.i;
    boolean bool1 = gl.a;
    int n = 0;
    if (!bool1)
    {
      boolean bool2 = gl.b();
      n = 0;
      if (bool2)
        n = 1;
    }
    localUserInfo1.setIsroot(n);
    UserInfo localUserInfo2 = this.i;
    if (bk.a() == ConnectType.CT_WIFI);
    while (true)
    {
      localUserInfo2.setCt(m);
      break;
      m = 1;
    }
  }

  public final SUIKey c()
  {
    int i1;
    if (this.k == null)
    {
      this.k = new SUIKey();
      this.k.setGuid(b);
      SUIKey localSUIKey1 = this.k;
      String str1 = TMSApplication.getStrFromEnvMap("lc");
      if (str1 == null)
        str1 = "";
      localSUIKey1.setLc(str1);
      this.k.setName(EProduct.convert(TMSApplication.getIntFromEnvMap("product")).toString());
      SUIKey localSUIKey2 = this.k;
      String str2 = TMSApplication.getStrFromEnvMap("softversion");
      if (str2 == null)
        str2 = "";
      localSUIKey2.setVersion(str2);
      this.k.setImei(this.d);
      SUIKey localSUIKey3 = this.k;
      String str3 = ((TelephonyManager)this.f.getSystemService("phone")).getSubscriberId();
      if (str3 == null)
        str3 = "";
      localSUIKey3.setImsi(str3);
      this.k.setType(2);
      SUIKey localSUIKey4 = this.k;
      String str4 = Build.VERSION.SDK;
      if (str4 == null)
        str4 = "";
      localSUIKey4.setOsversion(str4);
      SUIKey localSUIKey5 = this.k;
      String str5 = Build.MODEL;
      if (str5 == null)
        str5 = "";
      localSUIKey5.setMachineuid(str5);
      int m = this.f.getResources().getDisplayMetrics().widthPixels;
      int n = this.f.getResources().getDisplayMetrics().heightPixels;
      this.k.setMachineconf("screen=" + m + "*" + n);
      this.k.setSubplatform(TMSApplication.getIntFromEnvMap("sub_platform"));
      SUIKey localSUIKey6 = this.k;
      String str6 = TMSApplication.getStrFromEnvMap("channel");
      if (str6 == null)
        str6 = "";
      localSUIKey6.setChannelid(str6);
      SUIKey localSUIKey7 = this.k;
      if (a.b(this.f))
      {
        i1 = 1;
        localSUIKey7.setIsbuildin(i1);
      }
    }
    while (true)
    {
      return this.k;
      i1 = 0;
      break;
      this.k.setImei(this.d);
    }
  }

  public final int d()
  {
    String str11;
    String str12;
    WifiInfo localWifiInfo;
    if ((b != null) && (!b.equals("")))
    {
      str11 = ((TelephonyManager)this.f.getSystemService("phone")).getDeviceId();
      if (str11 != null)
        break label801;
      str12 = "";
      localWifiInfo = ((WifiManager)this.f.getSystemService("wifi")).getConnectionInfo();
      if (localWifiInfo == null)
        break label924;
    }
    label911: label924: for (String str13 = localWifiInfo.getMacAddress(); ; str13 = null)
    {
      if (str13 == null)
        str13 = "";
      this.d = this.g.a("imei", str12);
      this.e = this.g.a("mac", str13);
      if ((!str12.equals(this.d)) || (!str13.equals(this.e)))
      {
        this.d = str12;
        this.e = str13;
      }
      for (int i1 = 1; ; i1 = 0)
      {
        DeviceInfo localDeviceInfo6;
        String str7;
        fk localfk;
        if (i1 != 0)
          if (this.j == null)
          {
            this.j = new DeviceInfo();
            this.j.setImei(this.d);
            DeviceInfo localDeviceInfo2 = this.j;
            String str2 = ((TelephonyManager)this.f.getSystemService("phone")).getSubscriberId();
            if (str2 == null)
              str2 = "";
            localDeviceInfo2.setImsi(str2);
            this.j.setMac(this.e);
            DeviceInfo localDeviceInfo3 = this.j;
            String str3 = ((TelephonyManager)this.f.getSystemService("phone")).getSimSerialNumber();
            if (str3 == null)
              str3 = "";
            localDeviceInfo3.setIccid(str3);
            this.j.setAndroidid("android_id");
            this.j.setSdkversion(Integer.parseInt(Build.VERSION.SDK));
            DeviceInfo localDeviceInfo4 = this.j;
            String str4 = Build.MODEL;
            if (str4 == null)
              str4 = "";
            localDeviceInfo4.setModel(str4);
            DeviceInfo localDeviceInfo5 = this.j;
            String str5 = Build.PRODUCT;
            if (str5 == null)
              str5 = "";
            localDeviceInfo5.setProduct(str5);
            localDeviceInfo6 = this.j;
            Context localContext = this.f;
            String str6 = new String();
            String[] arrayOfString = a.a(localContext);
            str7 = new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(new StringBuilder(String.valueOf(str6)).append("MODEL ").append(arrayOfString[0]).append(";").toString())).append("ANDROID ").append(arrayOfString[1]).append(";").toString())).append("CPU ").append(arrayOfString[2]).append(";").toString() + "resolution " + arrayOfString[3] + ";";
            localfk = ((fn)ManagerCreator.getManager(fn.class)).a();
            if (localfk == null)
              break label911;
          }
        for (String str8 = str7 + "ram " + localfk.a() + ";"; ; str8 = str7)
        {
          StringBuilder localStringBuilder = new StringBuilder(String.valueOf(str8)).append("rom ");
          StatFs localStatFs = new StatFs(Environment.getDataDirectory().getPath());
          String str9 = localStatFs.getBlockSize() * localStatFs.getBlockCount() + ";";
          String str10 = new ex("NetInterfaceManager").a("upload_config_des", null);
          if ((str10 != null) && (str10.length() != 0))
            str9 = str9 + str10;
          if (str9 == null)
            str9 = "";
          localDeviceInfo6.setNetfile(str9);
          this.j.setLguid(b);
          label714: DeviceInfo localDeviceInfo1 = this.j;
          AtomicReference localAtomicReference = new AtomicReference();
          int m = ((gg)ManagerCreator.getManager(gg.class)).a(localDeviceInfo1, localAtomicReference);
          if (m == 0)
          {
            GUIDInfo localGUIDInfo = (GUIDInfo)localAtomicReference.get();
            if (localGUIDInfo != null)
            {
              String str1 = localGUIDInfo.getGuid();
              b = str1;
              if ((str1 != null) && (!b.equals("")));
            }
          }
          for (int n = -2001; ; n = m)
          {
            if (n != 0);
            while (true)
            {
              return n;
              label801: str12 = str11;
              break;
              this.j.setLguid(b);
              this.j.setImei(this.d);
              this.j.setMac(this.e);
              break label714;
              this.g.a("imei", this.d, false);
              this.g.a("mac", this.e, false);
              this.g.a("guid", b, false);
              this.g.b.commit();
              n = 0;
            }
          }
        }
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     ge
 * JD-Core Version:    0.6.2
 */