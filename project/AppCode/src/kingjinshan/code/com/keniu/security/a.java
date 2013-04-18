package com.keniu.security;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.util.DisplayMetrics;
import android.util.Log;
import com.ijinshan.kpref.t;
import com.jxphone.mosecurity.d.l;

public final class a
{
  private static final String A = "auto_ignore_malware";
  private static final String B = "process_system_time";
  private static final String C = "update_parse_sms_time";
  private static final String D = "first_query_charge2";
  private static Context E;
  private static long F = 0L;
  private static final String G = "is_used_scan";
  private static final String H = "last_scan_time";
  private static final String I = "scan_count";
  private static final String J = "scan_file_count";
  private static final String K = "scan_file_count_once";
  private static final String L = "scan_malware_count";
  private static final String M = "once_scan_use_cloud_scan";
  private static final String N = "cloud_scan_start";
  private static final String O = "rpt_installed";
  private static final String P = "last_clean_gmail_time";
  private static final String Q = "last_clean_maps_time";
  private static final String R = "last_clean_market_time";
  private static final String S = "clean_rubbish_dialog_alert_set_key";
  private static final String T = "desk_sms_operat_key";
  private static final String U = "is_first_use_friend_space";
  private static final String V = "is_alert_join_cloud";
  private static final String W = "is_version_first_run";
  private static final String X = "process_white_list";
  private static String Z = null;
  private static final String a = "AgreeVersion";
  private static final String b = "FriendCall";
  private static final String c = "FriendSms";
  private static final String d = "IsFriendNotice";
  private static final String e = "IsExtraCallEnable";
  private static final String f = "IsLockedinCalling";
  private static final String g = "ExtraCallStyle";
  private static final String h = "ExtraCallTimeout";
  private static final String i = "IsAutoStartup";
  private static final String j = "EnableImportWarning";
  private static final String k = "UpdateDateRecord";
  private static final String l = "LocationLayoutConfigX";
  private static final String m = "LocationLayoutConfigY";
  private static final String n = "IsLocationLayoutHorizontalCenter";
  private static final String o = "EnableDummy";
  private static final String p = "StartupVersion";
  private static final String q = "ServiceStartupVersion";
  private static final String r = "IsEnableBugFeed";
  private static final String s = "LastBugFeedTime";
  private static final String t = "LastBugFeedCount";
  private static final String u = "public_preference_startup_autoupdate";
  private static final String v = "public_preference_startup_autoupdate_in_wifi_model";
  private static final String w = "friend_dummy_space";
  private static final String x = "default_location";
  private static final String y = "public_pref_cloud_scan_key";
  private static final String z = "public_pref_upload_key";
  private final SharedPreferences Y;

  private a(Context paramContext, byte paramByte)
  {
    this.Y = t.b(paramContext);
    this.Y.registerOnSharedPreferenceChangeListener(new b(this));
    if (Z == null)
      Z = e.a(paramContext);
  }

  public static long a()
  {
    return F;
  }

  public static a a(Context paramContext)
  {
    E = paramContext.getApplicationContext();
    return c.a();
  }

  public static String aG()
  {
    return E.getString(2131428899);
  }

  private boolean aU()
  {
    return this.Y.getBoolean("autoupdateservice", false);
  }

  private boolean aV()
  {
    return this.Y.getBoolean("autoupdateapk", false);
  }

  private String aW()
  {
    return this.Y.getString("autoupdateapkpath", "");
  }

  private boolean aX()
  {
    boolean bool = this.Y.getBoolean("isFirstMainActivityShow", true);
    if (bool)
    {
      SharedPreferences.Editor localEditor = this.Y.edit();
      localEditor.putBoolean("isFirstMainActivityShow", false);
      localEditor.commit();
    }
    return bool;
  }

  private boolean aY()
  {
    return this.Y.getBoolean("isFirstInterIpDialSetting", true);
  }

  private boolean aZ()
  {
    return this.Y.getBoolean("isSelectIpDialSetting", true);
  }

  private int b(String paramString1, String paramString2)
  {
    try
    {
      int i2 = Integer.parseInt(this.Y.getString(paramString1, paramString2));
      i1 = i2;
      return i1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
      {
        Log.i("ConfigManager", paramString1.concat(" is not a number"));
        int i1 = 0;
      }
    }
  }

  private void bA()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("is_used_scan", true);
    localEditor.commit();
  }

  private int bB()
  {
    return this.Y.getInt("scan_count", 0);
  }

  private int bC()
  {
    return this.Y.getInt("scan_file_count", 0);
  }

  private int bD()
  {
    return this.Y.getInt("scan_malware_count", 0);
  }

  private int bE()
  {
    return this.Y.getInt("scan_file_count_once", 0);
  }

  private boolean bF()
  {
    return this.Y.getBoolean("once_scan_use_cloud_scan", true);
  }

  private boolean bG()
  {
    return this.Y.getBoolean("cloud_scan_start", true);
  }

  private void ba()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isSelectIpDialSetting", false);
    localEditor.commit();
  }

  private void bb()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFirstInterIpDialSetting", false);
    localEditor.commit();
  }

  private long bc()
  {
    return this.Y.getLong("process_system_time", 0L);
  }

  private static String bd()
  {
    return E.getString(2131428445);
  }

  private static String be()
  {
    return E.getString(2131428447);
  }

  private static String bf()
  {
    return E.getString(2131428452);
  }

  private boolean bg()
  {
    return this.Y.getBoolean(E.getString(2131428452), true);
  }

  private static String bh()
  {
    return E.getString(2131428450);
  }

  private boolean bi()
  {
    return this.Y.getBoolean(E.getString(2131428450), false);
  }

  private long bj()
  {
    return this.Y.getLong("last_clean_market_time", 0L);
  }

  private long bk()
  {
    return this.Y.getLong("last_clean_maps_time", 0L);
  }

  private long bl()
  {
    return this.Y.getLong("last_clean_gmail_time", 0L);
  }

  private String bm()
  {
    return this.Y.getString("AgreeVersion", "0");
  }

  private void bn()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.remove("StartupVersion");
    localEditor.commit();
  }

  private boolean bo()
  {
    return this.Y.getBoolean("StartupVersion", false);
  }

  private void bp()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.remove("ServiceStartupVersion");
    localEditor.commit();
  }

  private boolean bq()
  {
    return this.Y.getBoolean(E.getString(2131428454), false);
  }

  private static String br()
  {
    return E.getString(2131428939);
  }

  private static String bs()
  {
    return E.getString(2131428901);
  }

  private static String bt()
  {
    return E.getString(2131428941);
  }

  private String bu()
  {
    return this.Y.getString("default_location", "");
  }

  private static String bv()
  {
    return E.getString(2131428940);
  }

  private static String bw()
  {
    return E.getString(2131428954);
  }

  private static String bx()
  {
    return E.getString(2131428955);
  }

  private String by()
  {
    return this.Y.getString("pl", "19700101");
  }

  private boolean bz()
  {
    return this.Y.getBoolean("is_used_scan", false);
  }

  private void d(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("autoupdateservice", paramBoolean);
    localEditor.commit();
  }

  private void e(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("autoupdateapk", paramBoolean);
    localEditor.commit();
  }

  private void f(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("scan_count", paramInt);
    localEditor.commit();
  }

  private void f(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString("autoupdateapkpath", paramString);
    localEditor.commit();
  }

  private void f(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("once_scan_use_cloud_scan", paramBoolean);
    localEditor.commit();
  }

  private void g(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("scan_file_count", paramInt);
    localEditor.commit();
  }

  private void g(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString("AgreeVersion", paramString);
    localEditor.commit();
  }

  private void g(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("cloud_scan_start", paramBoolean);
    localEditor.commit();
  }

  private void h(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("scan_malware_count", paramInt);
    localEditor.commit();
  }

  private void h(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putLong("process_system_time", paramLong);
    localEditor.commit();
  }

  private void h(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString("default_location", paramString);
    localEditor.commit();
  }

  private void i(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("scan_file_count_once", paramInt);
    localEditor.commit();
  }

  private void i(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString("pl", paramString);
    localEditor.commit();
  }

  public final boolean A()
  {
    return this.Y.getBoolean("isAutoShowRootDialog2", true);
  }

  public final void B()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isAutoShowRootDialog2", false);
    localEditor.commit();
  }

  public final boolean C()
  {
    return this.Y.getBoolean("isTrafficFireWallRootDialog", true);
  }

  public final void D()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isTrafficFireWallRootDialog", false);
    localEditor.commit();
  }

  public final boolean E()
  {
    boolean bool = this.Y.getBoolean("isFirstInstall", true);
    if (bool)
    {
      SharedPreferences.Editor localEditor = this.Y.edit();
      localEditor.putBoolean("isFirstInstall", false);
      localEditor.commit();
    }
    return bool;
  }

  public final boolean F()
  {
    boolean bool = this.Y.getBoolean("autoAdjustTip", true);
    if (bool)
    {
      SharedPreferences.Editor localEditor = this.Y.edit();
      localEditor.putBoolean("autoAdjustTip", false);
      localEditor.commit();
    }
    return bool;
  }

  public final String G()
  {
    return this.Y.getString("process_white_list", "");
  }

  public final boolean H()
  {
    return this.Y.getBoolean("isFirstSetProcessWhiteList", true);
  }

  public final void I()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFirstSetProcessWhiteList", false);
    localEditor.commit();
  }

  public final boolean J()
  {
    return this.Y.getBoolean("isFirstSetDefaultProcessWhiteList", true);
  }

  public final void K()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFirstSetDefaultProcessWhiteList", false);
    localEditor.commit();
  }

  public final boolean L()
  {
    return this.Y.getBoolean("isFirstShowBigXuanFuChuang", true);
  }

  public final void M()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFirstShowBigXuanFuChuang", false);
    localEditor.commit();
  }

  public final boolean N()
  {
    return this.Y.getBoolean("showNewFun", true);
  }

  public final void O()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("showNewFun", false);
    localEditor.commit();
  }

  public final boolean P()
  {
    return this.Y.getBoolean("showFirstInTips", true);
  }

  public final void Q()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("showFirstInTips", false);
    localEditor.commit();
  }

  public final boolean R()
  {
    return this.Y.getBoolean("showFirstFirwallSmsTips", true);
  }

  public final void S()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("showFirstFirwallSmsTips", false);
    localEditor.commit();
  }

  public final boolean T()
  {
    return this.Y.getBoolean("isFirstScan", true);
  }

  public final void U()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFirstScan", false);
    localEditor.commit();
  }

  public final boolean V()
  {
    return this.Y.getBoolean("isFirstConfigIp", true);
  }

  public final void W()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFirstConfigIp", false);
    localEditor.commit();
  }

  public final boolean X()
  {
    return this.Y.getBoolean("isFirstInterTraffic", true);
  }

  public final boolean Y()
  {
    return this.Y.getBoolean("isconvertIpDialPrefrencesSecond", false);
  }

  public final void Z()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isconvertIpDialPrefrencesSecond", true);
    localEditor.commit();
  }

  public final int a(DisplayMetrics paramDisplayMetrics)
  {
    int i1 = (int)(paramDisplayMetrics.widthPixels / 2.0F - 90.0F * paramDisplayMetrics.density);
    if (this.Y.getBoolean("IsLocationLayoutHorizontalCenter", false));
    while (true)
    {
      return i1;
      i1 = this.Y.getInt("LocationLayoutConfigX", i1);
    }
  }

  public final void a(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("traffic_xuanfuchuang_x", paramInt);
    localEditor.commit();
  }

  public final void a(int paramInt1, int paramInt2)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("LocationLayoutConfigX", paramInt1);
    localEditor.putInt("LocationLayoutConfigY", paramInt2);
    localEditor.commit();
  }

  public final void a(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putLong("update_parse_sms_time", paramLong);
    localEditor.commit();
  }

  public final void a(Integer paramInteger)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt(bs(), paramInteger.intValue());
    localEditor.commit();
  }

  public final void a(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString("process_white_list", paramString);
    localEditor.commit();
  }

  public final void a(String paramString1, String paramString2)
  {
    if ((paramString1 == null) || ("".equals(paramString1)));
    for (String str = paramString2; ; str = paramString1)
    {
      SharedPreferences.Editor localEditor = this.Y.edit();
      localEditor.putString(aG(), str);
      localEditor.commit();
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("IsExtraCallEnable", paramBoolean);
    localEditor.commit();
  }

  public final int aA()
  {
    return this.Y.getInt(bs(), 2130837830);
  }

  public final String aB()
  {
    return this.Y.getString(bt(), E.getString(2131428942));
  }

  public final int aC()
  {
    return this.Y.getInt(bv(), 2130837636);
  }

  public final String aD()
  {
    return this.Y.getString(bw(), E.getString(2131428956));
  }

  public final int aE()
  {
    return this.Y.getInt(bx(), 2130837636);
  }

  public final String aF()
  {
    return this.Y.getString(aG(), E.getString(2131428313));
  }

  public final boolean aH()
  {
    return this.Y.getBoolean(E.getString(2131428791), true);
  }

  public final boolean aI()
  {
    return this.Y.getBoolean("public_pref_cloud_scan_key", true);
  }

  public final void aJ()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("public_pref_cloud_scan_key", true);
    localEditor.commit();
  }

  public final boolean aK()
  {
    return this.Y.getBoolean("public_pref_upload_key", false);
  }

  public final void aL()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("public_pref_upload_key", true);
    localEditor.commit();
  }

  public final boolean aM()
  {
    return this.Y.getBoolean("auto_ignore_malware", false);
  }

  public final void aN()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("auto_ignore_malware", true);
    localEditor.commit();
  }

  public final boolean aO()
  {
    return this.Y.getBoolean("first_query_charge2", false);
  }

  public final void aP()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("first_query_charge2", true);
    localEditor.commit();
  }

  public final String aQ()
  {
    return this.Y.getString("last_scan_time", "");
  }

  public final boolean aR()
  {
    return this.Y.getBoolean(Z + "rpt_installed", false);
  }

  public final void aS()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean(Z + "rpt_installed", true);
    localEditor.commit();
  }

  public final void aa()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFirstInterTraffic", false);
    localEditor.commit();
  }

  public final long ab()
  {
    return this.Y.getLong("update_parse_sms_time", 0L);
  }

  public final int ac()
  {
    String str1 = E.getString(2131428445);
    if (e.b());
    for (String str2 = "1"; ; str2 = "0")
      return b(str1, str2);
  }

  public final boolean ad()
  {
    return this.Y.getBoolean("public_preference_startup_autoupdate", true);
  }

  public final boolean ae()
  {
    return this.Y.getBoolean("public_preference_startup_autoupdate_in_wifi_model", true);
  }

  public final int af()
  {
    String str1 = E.getString(2131428447);
    if (e.b());
    for (String str2 = "1"; ; str2 = "0")
      return b(str1, str2);
  }

  public final boolean ag()
  {
    if (l.a());
    for (boolean bool = false; ; bool = true)
      return this.Y.getBoolean("IsExtraCallEnable", bool);
  }

  public final boolean ah()
  {
    return this.Y.getBoolean("IsLockedinCalling", false);
  }

  public final boolean ai()
  {
    return this.Y.getBoolean("friend_dummy_space", true);
  }

  public final boolean aj()
  {
    if (System.currentTimeMillis() - this.Y.getLong("last_clean_market_time", 0L) > 3600000L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean ak()
  {
    if (System.currentTimeMillis() - this.Y.getLong("last_clean_maps_time", 0L) > 3600000L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final boolean al()
  {
    if (System.currentTimeMillis() - this.Y.getLong("last_clean_gmail_time", 0L) > 3600000L);
    for (boolean bool = true; ; bool = false)
      return bool;
  }

  public final int am()
  {
    try
    {
      int i2 = Integer.parseInt(this.Y.getString("ExtraCallStyle", "0"));
      i1 = i2;
      return i1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      while (true)
        int i1 = 0;
    }
  }

  public final int an()
  {
    int i1 = 15;
    try
    {
      int i2 = Integer.parseInt(this.Y.getString("ExtraCallTimeout", "15"));
      i1 = i2;
      label23: return i1;
    }
    catch (NumberFormatException localNumberFormatException)
    {
      break label23;
    }
  }

  public final boolean ao()
  {
    return this.Y.getBoolean("IsAutoStartup", true);
  }

  public final void ap()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("kn_traffis_xuanfuchuang_key", false);
    localEditor.commit();
  }

  public final int aq()
  {
    return this.Y.getInt("traffic_xuanfuchuang_x", 0);
  }

  public final int ar()
  {
    return this.Y.getInt("traffic_xuanfuchuang_y", 0);
  }

  public final long as()
  {
    return this.Y.getLong("UpdateDateRecord", 0L);
  }

  public final boolean at()
  {
    return this.Y.getBoolean("kn_traffis_xuanfuchuang_key", false);
  }

  public final boolean au()
  {
    return this.Y.getBoolean("EnableImportWarning", true);
  }

  public final boolean av()
  {
    return this.Y.getBoolean("EnableDummy", false);
  }

  public final void aw()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("EnableImportWarning", false);
    localEditor.commit();
  }

  public final void ax()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString("ServiceStartupVersion", e.a(E));
    localEditor.commit();
  }

  public final long ay()
  {
    return this.Y.getLong("LastBugFeedTime", 0L);
  }

  public final int az()
  {
    return this.Y.getInt("LastBugFeedCount", 0);
  }

  public final int b(DisplayMetrics paramDisplayMetrics)
  {
    int i1 = (int)(90.0F * paramDisplayMetrics.density);
    return this.Y.getInt("LocationLayoutConfigY", i1);
  }

  public final String b(String paramString)
  {
    return this.Y.getString("ServiceStartupVersion", paramString);
  }

  public final void b(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("traffic_xuanfuchuang_y", paramInt);
    localEditor.commit();
  }

  public final void b(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putLong("last_clean_market_time", paramLong);
    localEditor.commit();
  }

  public final void b(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("IsLockedinCalling", paramBoolean);
    localEditor.commit();
  }

  public final boolean b()
  {
    return this.Y.getBoolean("is_version_first_run" + e.a(E), true);
  }

  public final void c()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("is_version_first_run" + e.a(E), false);
    localEditor.commit();
  }

  public final void c(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt("LastBugFeedCount", paramInt);
    localEditor.commit();
  }

  public final void c(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putLong("last_clean_maps_time", paramLong);
    localEditor.commit();
  }

  public final void c(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString(bt(), paramString);
    localEditor.commit();
  }

  public final void c(boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("friend_dummy_space", paramBoolean);
    localEditor.commit();
  }

  public final void d(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt(bv(), paramInt);
    localEditor.commit();
  }

  public final void d(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putLong("last_clean_gmail_time", paramLong);
    localEditor.commit();
  }

  public final void d(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString(bw(), paramString);
    localEditor.commit();
  }

  public final boolean d()
  {
    return this.Y.getBoolean("clean_rubbish_dialog_alert_set_key", true);
  }

  public final void e()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("clean_rubbish_dialog_alert_set_key", false);
    localEditor.commit();
  }

  public final void e(int paramInt)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putInt(bx(), paramInt);
    localEditor.commit();
  }

  public final void e(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putLong("UpdateDateRecord", paramLong);
    localEditor.commit();
  }

  public final void e(String paramString)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putString("last_scan_time", paramString);
    localEditor.commit();
  }

  public final void f(long paramLong)
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putLong("LastBugFeedTime", paramLong);
    localEditor.commit();
  }

  public final boolean f()
  {
    return this.Y.getBoolean("isFileDownWatcherOn", false);
  }

  public final boolean g()
  {
    return this.Y.getBoolean("isFileInstWatcherOn", true);
  }

  public final boolean h()
  {
    return this.Y.getBoolean("isFileOpenWatcherOn", false);
  }

  public final void i()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isFileInstWatcherOn", true);
    localEditor.commit();
  }

  public final boolean j()
  {
    return this.Y.getBoolean("is_alert_join_cloud", true);
  }

  public final void k()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("is_alert_join_cloud", false);
    localEditor.commit();
  }

  public final int l()
  {
    return b("FriendCall", "0");
  }

  public final int m()
  {
    return b("FriendSms", "0");
  }

  public final int n()
  {
    return b("desk_sms_operat_key", "0");
  }

  public final boolean o()
  {
    return this.Y.getBoolean("is_first_use_friend_space", true);
  }

  public final void p()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("is_first_use_friend_space", false);
    localEditor.commit();
  }

  public final boolean q()
  {
    return this.Y.getBoolean("IsFriendNotice", true);
  }

  public final boolean r()
  {
    boolean bool = this.Y.getBoolean("isFirstInstallShortCut", true);
    if (bool)
    {
      SharedPreferences.Editor localEditor = this.Y.edit();
      localEditor.putBoolean("isFirstInstallShortCut", false);
      localEditor.commit();
    }
    return bool;
  }

  public final boolean s()
  {
    boolean bool = this.Y.getBoolean("shouldRecommendExamine", true);
    if (bool)
    {
      SharedPreferences.Editor localEditor = this.Y.edit();
      localEditor.putBoolean("shouldRecommendExamine", false);
      localEditor.commit();
    }
    return bool;
  }

  public final boolean t()
  {
    boolean bool = this.Y.getBoolean("shouldNotifyOpenPref", true);
    if (bool)
    {
      SharedPreferences.Editor localEditor = this.Y.edit();
      localEditor.putBoolean("shouldNotifyOpenPref", false);
      localEditor.commit();
    }
    return bool;
  }

  public final boolean u()
  {
    return this.Y.getBoolean("usedAutoAdjustTraffic", false);
  }

  public final void v()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("usedAutoAdjustTraffic", true);
    localEditor.commit();
  }

  public final boolean w()
  {
    return this.Y.getBoolean("isPopupWindowShow", true);
  }

  public final void x()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isPopupWindowShow", false);
    localEditor.commit();
  }

  public final boolean y()
  {
    return this.Y.getBoolean("isAutoShowRootDialog", true);
  }

  public final void z()
  {
    SharedPreferences.Editor localEditor = this.Y.edit();
    localEditor.putBoolean("isAutoShowRootDialog", false);
    localEditor.commit();
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.a
 * JD-Core Version:    0.6.2
 */