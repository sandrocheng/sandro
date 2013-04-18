package com.keniu.security;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.net.Uri;
import android.os.Environment;
import java.io.File;
import java.util.Locale;

public final class e
{
  public static final String A = "protocol";
  public static final String B = "read";
  public static final String C = "type";
  public static final int D = 0;
  public static final int E = 1;
  public static final int F = 2;
  public static final int G = 3;
  public static final int H = 0;
  public static final int I = 1;
  public static final int J = 2;
  public static final int K = 3;
  public static final String L = "package_attribute";
  public static final String M = "package_name";
  public static final String N = "package_package_name";
  public static final String O = "sp_attribute";
  public static final String P = "sp_owner";
  public static final String Q = "sp_number";
  public static final String R = "sp_info";
  public static final String S = "process_service_type";
  public static final String T = "clear";
  public static final String U = "update";
  public static final String V = "0401000301";
  public static final String W = "0401000302";
  public static final String X;
  public static final String Y = "uuid";
  public static final String Z = "imei";
  public static final long a = 0L;
  public static final String aA = "pm";
  public static final String aB = "cl";
  public static final String aC = "sm";
  public static final String aD = "risk";
  public static final String aE = "ch";
  public static final String aF = "pt";
  public static final String aG = "sync";
  public static final String aH = "pmconfig";
  public static final String aI = "accelerate";
  public static final String aJ = "sysprocess";
  public static final String aK = "softwarerecommand";
  public static final String aL = "mg_apk_main";
  public static final String aM = "fd";
  public static final String aN = "smsman";
  public static final String aO = "telman";
  public static final String aP = "wblist";
  public static final String aQ = "traffic";
  public static final String aR = "virkill";
  public static final String aS = "softup";
  public static final String aT = "saolan";
  public static final String aU = "mg_main_openbar";
  public static final String aV = "mg_main_battery";
  public static final String aW = "mg_main_okcheck";
  public static final String aX = "virkill_interface_click";
  public static final String aY = "virkill_fast_click";
  public static final String aZ = "virkill_deep_click";
  public static final String aa = "imsi";
  public static final String ab = "lasttime";
  public static final String ac = "s";
  public static final String ad = "dt";
  public static final String ae = "actionname";
  public static final String af = "ver";
  public static final String ag = "value";
  public static final String ah = "res";
  public static final String ai = "channel";
  public static final String aj = "model";
  public static final String ak = "info";
  public static final String al = "type";
  public static final String am = "content";
  public static final String an = "sysversion";
  public static final String ao = "md5";
  public static final String ap = "malname";
  public static final String aq = "malpackname";
  public static final String ar = "findoperate";
  public static final String as = "authorize";
  public static final String at = "sdcard";
  public static final String au = "actiontime";
  public static final String av = "atime";
  public static final String aw = "inst";
  public static final String ax = "amobileroot";
  public static final String ay = "ac";
  public static final String az = "start";
  public static String b;
  public static final String bA = "set_unckmms";
  public static final String bB = "set_unckwapp";
  public static final String bC = "mgt_vmalres";
  public static final String bD = "mgt_vkill";
  public static final String bE = "mgt_vscantime";
  public static final String bF = "1";
  public static final String bG = "2_1";
  public static final String bH = "2_2";
  public static final String bI = "2_3";
  public static final String bJ = "3";
  public static final String bK = "4";
  public static final String bL = "5";
  public static final String bM = "6";
  public static final String bN = "7";
  public static final String bO = "traf_ck";
  public static final String bP = "1";
  public static final String bQ = "2";
  public static final String bR = "3";
  public static final String bS = "4";
  public static final String bT = "5";
  public static final String bU = "6";
  public static final String bV = "7";
  public static final String bW = "mg_traffic_crash";
  public static final String bX = "8";
  public static final String bY = "9";
  public static final String bZ = "10";
  public static final String ba = "virkill_fast_stop";
  public static final String bb = "virkill_deep_stop";
  public static final String bc = "virkill_cloud_stop";
  public static final String bd = "virkill_auto_cloud";
  public static final String be = "virkill_scan_result";
  public static final String bf = "smsman_log";
  public static final String bg = "smsman_scan";
  public static final String bh = "smsman_srv";
  public static final String bi = "smsman_zzquery";
  public static final String bj = "smsman_dsmsset";
  public static final String bk = "sao_wlist";
  public static final String bl = "sao_blist";
  public static final String bm = "sao_set";
  public static final String bn = "sao_sms_del";
  public static final String bo = "sao_call_del";
  public static final String bp = "telman_log";
  public static final String bq = "telman_ipdail";
  public static final String br = "telman_numlocal";
  public static final String bs = "telman_comshowlocal";
  public static final String bt = "telman_cmnquery";
  public static final String bu = "telman_onekey";
  public static final String bv = "menu_up";
  public static final String bw = "menu_share";
  public static final String bx = "menu_seccenter";
  public static final String by = "set_uncklj";
  public static final String bz = "set_unckdesk";
  public static final String c = "android.permission.SEND_SMS";
  public static final String cA = "2";
  public static final String cB = "3";
  public static final String cC = "4";
  public static final String cD = "5";
  public static final String cE = "smsscanres";
  public static final String cF = "desksmsctx";
  public static final String cG = "outcwds";
  public static final String cH = "outcwdsck";
  public static final String cI = "srvstop";
  public static final String cJ = "mg_unst_continue";
  public static final String cK = "mg_sms_spused";
  public static final String cL = "ck_nty";
  public static final String cM = "1";
  public static final String cN = "2";
  public static final String cO = "3";
  public static final String cP = "4";
  public static final String cQ = "cloudcheckstate";
  public static final String cR = "blocksmsbykeyword";
  public static final String cS = "bksms";
  public static final String cT = "blockteltype";
  public static final String cU = "1";
  public static final String cV = "2";
  public static final String cW = "3";
  public static final String cX = "4";
  public static final String cY = "bkwapmms";
  public static final String cZ = "bkwappush";
  public static final String ca = "11";
  public static final String cb = "12";
  public static final String cc = "13";
  public static final String cd = "14";
  public static final String ce = "15";
  public static final String cf = "16";
  public static final String cg = "17";
  public static final String ch = "18";
  public static final String ci = "19";
  public static final String cj = "20";
  public static final String ck = "21";
  public static final String cl = "22";
  public static final String cm = "traf_setting";
  public static final String cn = "1";
  public static final String co = "2";
  public static final String cp = "3";
  public static final String cq = "4";
  public static final String cr = "rates_ck";
  public static final String cs = "1";
  public static final String ct = "2";
  public static final String cu = "3";
  public static final String cv = "4";
  public static final String cw = "5";
  public static final String cx = "6";
  public static final String cy = "smsscan";
  public static final String cz = "1";
  public static final String d = "android.permission.CALL_PHONE";
  public static final String dA = "sms_info";
  public static final String dB = "sp_info";
  public static final String dC = "report_flag";
  public static final String dD = "report_timer";
  public static final String dE = "report_lasttime";
  public static final String dF = "report_uuid_imei";
  public static final String dG = "report_uuid_imsi";
  public static final String dH = "report_newinst";
  public static final String dI = "GroupPosition";
  public static final String dJ = "ChildPosition";
  public static final int dK = 1;
  public static final int dL = 2;
  public static final String dM = "device";
  public static final String dN = "3";
  public static final String dO = "4";
  public static final String dP = "5";
  public static final String dQ = "pto";
  public static final String dR = "13";
  public static final String dS = "9";
  public static final String dT = "8";
  public static final String dU = "1";
  public static final String dV = "2";
  public static final String dW = "3";
  public static final String dX = "4";
  public static final String dY = "5";
  public static final String dZ = "6";
  public static final String da = "restoremms";
  public static final String db = "opwappushurl";
  public static final String dc = "blockerror";
  public static final String dd = "blockerroraddwhite";
  public static final String de = "1";
  public static final String df = "2";
  public static final String dg = "confirmupdate";
  public static final String dh = "ms";
  public static final String di = "var";
  public static final String dj = "type";
  public static final String dk = "bk";
  public static final String dl = "ds";
  public static final String dm = "1";
  public static final String dn = "2";
  public static final String jdField_do = "start";
  public static final byte dp = 0;
  public static final byte dq = 1;
  public static final byte dr = 2;
  public static final byte ds = 3;
  public static final byte dt = 4;
  public static final byte du = 5;
  public static final byte dv = 6;
  public static final byte dw = 7;
  public static final byte dx = 8;
  public static final byte dy = 9;
  public static final String dz = "sms_group_info";
  public static final String e = "android.permission.CALL_PRIVILEGED";
  public static final String eA = "mg_rub_history_scan";
  public static final String eB = "mg_rub_history_clean";
  public static final String eC = "mg_rub_history_clean_success";
  public static final String eD = "mg_ad_check_main";
  public static final String eE = "mg_ad_check_clean_notice";
  public static final String eF = "mg_ad_check_disable_net";
  public static final String eG = "mg_ad_check_uninstall";
  public static final String eH = "ad_check_data_feedback";
  public static final String eI = "ad_check_apk_package_name";
  public static final String eJ = "ad_check_apk_package_size";
  public static final String eK = "ad_check_apk_notification_content";
  public static final String eL = "mg_auto_manger_main";
  public static final String eM = "address";
  public static final String eN = "archive";
  public static final String eO = "body";
  public static final String eP = "CALL";
  public static final String eQ = "contact";
  public static final String eR = "count";
  public static final String eS = "date";
  public static final String eT = "mosecurity_app.db";
  public static final String eU = "mosecurity_process_list.db";
  public static final String eV = "mosecurity_comm.db";
  public static final String eW = "mosecurity_dummy_comm.db";
  public static final String eX = "file_path";
  public static final String eY = "flag";
  public static final String eZ = "id";
  public static final String ea = "10";
  public static final String eb = "14";
  public static final String ec = "11";
  public static final String ed = "12";
  public static final String ee = "synco";
  public static final String ef = "1";
  public static final String eg = "2";
  public static final String eh = "3";
  public static final String ei = "4";
  public static final String ej = "7";
  public static final String ek = "8";
  public static final String el = "9";
  public static final String em = "10";
  public static final String en = "11";
  public static final String eo = "12";
  public static final String ep = "5";
  public static final String eq = "6";
  public static final String er = "0";
  public static final String es = "1";
  public static final String et = "mg_rub_clean_main";
  public static final String eu = "mg_rub_cache_scan";
  public static final String ev = "mg_rub_cache_clean";
  public static final String ew = "mg_rub_cache_clean_success";
  public static final String ex = "mg_rub_sdcard_scan";
  public static final String ey = "mg_rub_sdcard_clean";
  public static final String ez = "mg_rub_sdcard_clean_success";
  public static final String f = "android.permission.WRITE_SMS";
  public static final int fA = 3000;
  public static final Uri fB;
  public static final Uri fC;
  public static final String[] fD;
  public static final int fE = 1;
  public static final int fF = 2;
  public static final int fG = 3;
  public static final int fH = 0;
  public static final int fI = 4;
  public static final int fJ = 5;
  public static final String[] fK;
  public static final int fL = 0;
  public static final int fM = 1;
  public static final int fN = 2;
  public static final int fO = 3;
  public static final int fP = 4;
  public static final String fQ = "https://secure.jxphone.com/fb/api/v1/feedback.do";
  public static final String fR = "sid";
  public static final String fS = "version";
  public static final String fT = "content";
  public static final String fU = "email";
  public static final String fV = "[^@]+@[^@.]+\\.[^@]+";
  public static final String fW = "mobile";
  public static final String fX = "imei";
  public static final String fY = "imsi";
  public static final String fZ = "os";
  public static final String fa = "_id";
  public static final String fb = "isDummy";
  public static final String fc = "IsAutoStartup";
  public static final String fd = "list_type";
  public static final String fe = "message";
  public static final String ff = "https://secure.jxphone.com/fb/api/v1/message.do";
  public static final String fg = "NAME";
  public static final String fh = "need_check_pwd";
  public static final String fi = "object_token";
  public static final String fj = "size";
  public static final String fk = "sms";
  public static final String fl = "android.provider.Telephony.SMS_RECEIVED";
  public static final String fm = "sms_delivered_action";
  public static final String fn = "android.provider.Telephony.SMS_RECEIVED";
  public static final String fo = "sms_send_action";
  public static final String fp = "status";
  public static final String fq = "tabIndex";
  public static final String fr = "version";
  public static final String fs = "/sdcard/.jxphone/MoSecurity/";
  public static final int ft = 2;
  public static final int fu = 1;
  public static final int fv = 2;
  public static final int fw = 1;
  public static final int fx = -1;
  public static final int fy = 3;
  public static final int fz = 5;
  public static final String g = "android.permission.ACCESS_FINE_LOCATION";
  public static final int ga = 1;
  public static final int gb = 2;
  public static final String gc = "http://wap.jxphone.com/asc";
  private static final String gd = "KnEnv";
  private static boolean ge = false;
  public static final String h = "android.permission.WRITE_SYNC_SETTINGS";
  public static final String i = "android.permission.WRITE_SECURE_SETTINGS";
  public static final String j = "android.permission.WRITE_SETTINGS";
  public static final String k = "IS_EVEN";
  public static final String l = "PACKAGE_NAME";
  public static final String m = "total";
  public static final String n = "index";
  public static final String o = "riskAdapter";
  public static final String p = "content://sms/inbox";
  public static final String q = "content://sms/sent";
  public static final String r = "content://sms";
  public static final String s = "/data";
  public static final String t = "/sdcard";
  public static final String u = "_id";
  public static final String v = "thread_id";
  public static final String w = "address";
  public static final String x = "subject";
  public static final String y = "body";
  public static final String z = "date";

  // ERROR //
  static
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_0
    //   2: invokestatic 882	java/lang/Runtime:getRuntime	()Ljava/lang/Runtime;
    //   5: ldc_w 884
    //   8: invokevirtual 888	java/lang/Runtime:exec	(Ljava/lang/String;)Ljava/lang/Process;
    //   11: astore 8
    //   13: aload 8
    //   15: astore_0
    //   16: iconst_1
    //   17: putstatic 890	com/keniu/security/e:ge	Z
    //   20: aload_0
    //   21: ifnull +7 -> 28
    //   24: aload_0
    //   25: invokevirtual 895	java/lang/Process:destroy	()V
    //   28: ldc_w 823
    //   31: new 897	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 900	java/lang/StringBuilder:<init>	()V
    //   38: ldc_w 902
    //   41: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   44: getstatic 890	com/keniu/security/e:ge	Z
    //   47: invokevirtual 909	java/lang/StringBuilder:append	(Z)Ljava/lang/StringBuilder;
    //   50: invokevirtual 913	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   53: invokestatic 918	android/util/Log:d	(Ljava/lang/String;Ljava/lang/String;)I
    //   56: pop
    //   57: invokestatic 924	java/lang/System:currentTimeMillis	()J
    //   60: putstatic 926	com/keniu/security/e:a	J
    //   63: ldc_w 928
    //   66: putstatic 930	com/keniu/security/e:b	Ljava/lang/String;
    //   69: ldc_w 932
    //   72: invokestatic 937	com/keniu/security/util/ag:b	(Ljava/lang/String;)Ljava/lang/String;
    //   75: astore 7
    //   77: aload 7
    //   79: ldc_w 939
    //   82: invokevirtual 945	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   85: ifeq +16 -> 101
    //   88: aload 7
    //   90: ldc_w 939
    //   93: invokevirtual 949	java/lang/String:length	()I
    //   96: invokevirtual 953	java/lang/String:substring	(I)Ljava/lang/String;
    //   99: astore 7
    //   101: aload 7
    //   103: ldc_w 955
    //   106: invokevirtual 945	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   109: ifeq +16 -> 125
    //   112: aload 7
    //   114: ldc_w 955
    //   117: invokevirtual 949	java/lang/String:length	()I
    //   120: invokevirtual 953	java/lang/String:substring	(I)Ljava/lang/String;
    //   123: astore 7
    //   125: aload 7
    //   127: ldc_w 957
    //   130: invokevirtual 960	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   133: ifeq +18 -> 151
    //   136: aload 7
    //   138: iconst_0
    //   139: aload 7
    //   141: invokevirtual 949	java/lang/String:length	()I
    //   144: iconst_1
    //   145: isub
    //   146: invokevirtual 963	java/lang/String:substring	(II)Ljava/lang/String;
    //   149: astore 7
    //   151: aload 7
    //   153: ldc_w 957
    //   156: invokevirtual 960	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   159: ifeq +18 -> 177
    //   162: aload 7
    //   164: iconst_0
    //   165: aload 7
    //   167: invokevirtual 949	java/lang/String:length	()I
    //   170: iconst_1
    //   171: isub
    //   172: invokevirtual 963	java/lang/String:substring	(II)Ljava/lang/String;
    //   175: astore 7
    //   177: aload 7
    //   179: putstatic 965	com/keniu/security/e:X	Ljava/lang/String;
    //   182: ldc_w 857
    //   185: invokestatic 971	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   188: putstatic 973	com/keniu/security/e:fB	Landroid/net/Uri;
    //   191: ldc_w 851
    //   194: invokestatic 971	android/net/Uri:parse	(Ljava/lang/String;)Landroid/net/Uri;
    //   197: putstatic 975	com/keniu/security/e:fC	Landroid/net/Uri;
    //   200: bipush 6
    //   202: anewarray 941	java/lang/String
    //   205: dup
    //   206: iconst_0
    //   207: ldc_w 755
    //   210: aastore
    //   211: dup
    //   212: iconst_1
    //   213: ldc_w 623
    //   216: aastore
    //   217: dup
    //   218: iconst_2
    //   219: ldc_w 629
    //   222: aastore
    //   223: dup
    //   224: iconst_3
    //   225: ldc_w 641
    //   228: aastore
    //   229: dup
    //   230: iconst_4
    //   231: ldc 14
    //   233: aastore
    //   234: dup
    //   235: iconst_5
    //   236: ldc_w 797
    //   239: aastore
    //   240: putstatic 977	com/keniu/security/e:fD	[Ljava/lang/String;
    //   243: iconst_5
    //   244: anewarray 941	java/lang/String
    //   247: dup
    //   248: iconst_0
    //   249: ldc_w 755
    //   252: aastore
    //   253: dup
    //   254: iconst_1
    //   255: ldc_w 979
    //   258: aastore
    //   259: dup
    //   260: iconst_2
    //   261: ldc_w 641
    //   264: aastore
    //   265: dup
    //   266: iconst_3
    //   267: ldc 14
    //   269: aastore
    //   270: dup
    //   271: iconst_4
    //   272: ldc_w 981
    //   275: aastore
    //   276: putstatic 983	com/keniu/security/e:fK	[Ljava/lang/String;
    //   279: return
    //   280: astore 4
    //   282: iconst_0
    //   283: putstatic 890	com/keniu/security/e:ge	Z
    //   286: aload_0
    //   287: ifnull -259 -> 28
    //   290: aload_0
    //   291: invokevirtual 895	java/lang/Process:destroy	()V
    //   294: goto -266 -> 28
    //   297: astore_1
    //   298: aconst_null
    //   299: astore_2
    //   300: aload_1
    //   301: astore_3
    //   302: aload_2
    //   303: ifnull +7 -> 310
    //   306: aload_2
    //   307: invokevirtual 895	java/lang/Process:destroy	()V
    //   310: aload_3
    //   311: athrow
    //   312: astore 5
    //   314: aload_0
    //   315: astore_2
    //   316: aload 5
    //   318: astore_3
    //   319: goto -17 -> 302
    //
    // Exception table:
    //   from	to	target	type
    //   2	13	280	java/io/IOException
    //   16	20	280	java/io/IOException
    //   2	13	297	finally
    //   16	20	312	finally
    //   282	286	312	finally
  }

  public static String a(Context paramContext)
  {
    ComponentName localComponentName = new ComponentName(paramContext, paramContext.getClass());
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(localComponentName.getPackageName(), 0);
      String str2 = localPackageInfo.versionName + "(" + localPackageInfo.versionCode + ")";
      str1 = str2;
      return str1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        String str1 = null;
    }
  }

  public static boolean a()
  {
    return ge;
  }

  public static String b(Context paramContext)
  {
    ComponentName localComponentName = new ComponentName(paramContext, paramContext.getClass());
    try
    {
      str = paramContext.getPackageManager().getPackageInfo(localComponentName.getPackageName(), 0).versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        String str = null;
    }
  }

  public static boolean b()
  {
    return Locale.getDefault().getLanguage().equals("ja");
  }

  private static String c()
  {
    File localFile = Environment.getExternalStorageDirectory();
    String str = localFile.getAbsolutePath() + "/mosecurity";
    try
    {
      new File(str + "/").mkdirs();
      return str;
    }
    catch (Exception localException)
    {
      while (true)
        localException.printStackTrace();
    }
  }

  // ERROR //
  public static String c(Context paramContext)
  {
    // Byte code:
    //   0: getstatic 930	com/keniu/security/e:b	Ljava/lang/String;
    //   3: ldc_w 928
    //   6: invokevirtual 1042	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   9: ifeq +316 -> 325
    //   12: new 897	java/lang/StringBuilder
    //   15: dup
    //   16: invokespecial 900	java/lang/StringBuilder:<init>	()V
    //   19: invokestatic 1050	android/os/Environment:getExternalStorageDirectory	()Ljava/io/File;
    //   22: invokevirtual 1055	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   25: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: ldc_w 1068
    //   31: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   34: invokevirtual 913	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   37: astore_2
    //   38: new 1052	java/io/File
    //   41: dup
    //   42: new 897	java/lang/StringBuilder
    //   45: dup
    //   46: invokespecial 900	java/lang/StringBuilder:<init>	()V
    //   49: aload_2
    //   50: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   53: ldc_w 1070
    //   56: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   59: invokevirtual 913	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   62: invokespecial 1060	java/io/File:<init>	(Ljava/lang/String;)V
    //   65: astore_3
    //   66: new 1052	java/io/File
    //   69: dup
    //   70: aload_2
    //   71: invokespecial 1060	java/io/File:<init>	(Ljava/lang/String;)V
    //   74: invokevirtual 1063	java/io/File:mkdirs	()Z
    //   77: pop
    //   78: new 1072	java/io/FileInputStream
    //   81: dup
    //   82: aload_3
    //   83: invokespecial 1075	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   86: astore 5
    //   88: sipush 255
    //   91: newarray byte
    //   93: astore 19
    //   95: aload 5
    //   97: aload 19
    //   99: invokevirtual 1078	java/io/FileInputStream:read	([B)I
    //   102: pop
    //   103: new 941	java/lang/String
    //   106: dup
    //   107: aload 19
    //   109: invokespecial 1081	java/lang/String:<init>	([B)V
    //   112: astore 21
    //   114: aload 21
    //   116: ldc_w 1083
    //   119: invokevirtual 1087	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   122: istore 22
    //   124: aload 21
    //   126: ldc_w 1089
    //   129: invokevirtual 1087	java/lang/String:indexOf	(Ljava/lang/String;)I
    //   132: istore 23
    //   134: iload 22
    //   136: iconst_m1
    //   137: if_icmpeq +37 -> 174
    //   140: iload 23
    //   142: iconst_m1
    //   143: if_icmpeq +31 -> 174
    //   146: aload 21
    //   148: iload 22
    //   150: iconst_1
    //   151: iadd
    //   152: iload 23
    //   154: invokevirtual 963	java/lang/String:substring	(II)Ljava/lang/String;
    //   157: astore 25
    //   159: aload 25
    //   161: putstatic 930	com/keniu/security/e:b	Ljava/lang/String;
    //   164: aload 5
    //   166: invokevirtual 1092	java/io/FileInputStream:close	()V
    //   169: aload 25
    //   171: astore_1
    //   172: aload_1
    //   173: areturn
    //   174: aload 5
    //   176: invokevirtual 1092	java/io/FileInputStream:close	()V
    //   179: aload_0
    //   180: ldc_w 1093
    //   183: invokevirtual 1096	android/content/Context:getString	(I)Ljava/lang/String;
    //   186: astore_1
    //   187: new 1098	java/io/FileOutputStream
    //   190: dup
    //   191: aload_3
    //   192: invokespecial 1099	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   195: astore 8
    //   197: aload 8
    //   199: new 897	java/lang/StringBuilder
    //   202: dup
    //   203: invokespecial 900	java/lang/StringBuilder:<init>	()V
    //   206: ldc_w 1083
    //   209: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   212: aload_1
    //   213: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: ldc_w 1089
    //   219: invokevirtual 906	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   222: invokevirtual 913	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   225: invokevirtual 1103	java/lang/String:getBytes	()[B
    //   228: invokevirtual 1106	java/io/FileOutputStream:write	([B)V
    //   231: aload 8
    //   233: invokevirtual 1107	java/io/FileOutputStream:close	()V
    //   236: aload_1
    //   237: putstatic 930	com/keniu/security/e:b	Ljava/lang/String;
    //   240: goto -68 -> 172
    //   243: astore 27
    //   245: aconst_null
    //   246: astore 5
    //   248: aload 5
    //   250: ifnull -71 -> 179
    //   253: aload 5
    //   255: invokevirtual 1092	java/io/FileInputStream:close	()V
    //   258: goto -79 -> 179
    //   261: astore 7
    //   263: goto -84 -> 179
    //   266: astore 17
    //   268: aconst_null
    //   269: astore 16
    //   271: aload 16
    //   273: ifnull +8 -> 281
    //   276: aload 16
    //   278: invokevirtual 1092	java/io/FileInputStream:close	()V
    //   281: aload 17
    //   283: athrow
    //   284: astore 14
    //   286: aconst_null
    //   287: astore 8
    //   289: aload 8
    //   291: ifnull -55 -> 236
    //   294: aload 8
    //   296: invokevirtual 1107	java/io/FileOutputStream:close	()V
    //   299: goto -63 -> 236
    //   302: astore 10
    //   304: goto -68 -> 236
    //   307: astore 11
    //   309: aconst_null
    //   310: astore 8
    //   312: aload 8
    //   314: ifnull +8 -> 322
    //   317: aload 8
    //   319: invokevirtual 1107	java/io/FileOutputStream:close	()V
    //   322: aload 11
    //   324: athrow
    //   325: getstatic 930	com/keniu/security/e:b	Ljava/lang/String;
    //   328: astore_1
    //   329: goto -157 -> 172
    //   332: astore 26
    //   334: goto -165 -> 169
    //   337: astore 24
    //   339: goto -160 -> 179
    //   342: astore 18
    //   344: goto -63 -> 281
    //   347: astore 13
    //   349: goto -113 -> 236
    //   352: astore 12
    //   354: goto -32 -> 322
    //   357: astore 11
    //   359: goto -47 -> 312
    //   362: astore 9
    //   364: goto -75 -> 289
    //   367: astore 15
    //   369: aload 5
    //   371: astore 16
    //   373: aload 15
    //   375: astore 17
    //   377: goto -106 -> 271
    //   380: astore 6
    //   382: goto -134 -> 248
    //
    // Exception table:
    //   from	to	target	type
    //   78	88	243	java/lang/Exception
    //   253	258	261	java/lang/Exception
    //   78	88	266	finally
    //   187	197	284	java/lang/Exception
    //   294	299	302	java/lang/Exception
    //   187	197	307	finally
    //   164	169	332	java/lang/Exception
    //   174	179	337	java/lang/Exception
    //   276	281	342	java/lang/Exception
    //   231	236	347	java/lang/Exception
    //   317	322	352	java/lang/Exception
    //   197	231	357	finally
    //   197	231	362	java/lang/Exception
    //   88	164	367	finally
    //   88	164	380	java/lang/Exception
  }

  private static int d(Context paramContext)
  {
    ComponentName localComponentName = new ComponentName(paramContext, paramContext.getClass());
    try
    {
      i1 = paramContext.getPackageManager().getPackageInfo(localComponentName.getPackageName(), 0).versionCode;
      return i1;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
        int i1 = -1;
    }
  }

  private static String d()
  {
    String str = c();
    return str + "/network_log.txt";
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.e
 * JD-Core Version:    0.6.2
 */