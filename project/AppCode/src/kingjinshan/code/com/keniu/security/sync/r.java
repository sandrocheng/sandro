package com.keniu.security.sync;

import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Environment;
import android.provider.Contacts.People;
import android.provider.ContactsContract.Contacts;
import android.text.TextUtils;
import android.widget.Toast;
import com.ijinshan.kinghelper.a.j;
import com.keniu.security.sync.d.c.a;
import com.keniu.security.sync.d.d.a.cf;
import com.keniu.security.sync.d.d.a.gj;
import com.keniu.security.util.ap;
import com.keniu.security.util.aq;
import com.keniu.security.util.at;
import com.keniu.security.util.ax;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.math.BigInteger;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import king.org.apache.commons.codec.digest.DigestUtils;

public final class r
{
  public static final String A = "register";
  public static final String B = "com.keniu.security.sync.tpan.login.username";
  public static final String C = "com.keniu.security.sync.tpan.login.password";
  public static final String D = "com.keniu.security.sync.tpan.login.autologin";
  public static final String E = "com.keniu.security.sync.tpan.login.last_check_time";
  public static final String F = "com.keniu.security.sync.tpan.login.task_jackaroo_guide";
  public static final String G = "last_update_time";
  public static final String H = "new_images_count";
  public static final String I = "scan_state";
  public static final String J = "http://dl.1tpan.com/android/update/updateinfo.xml";
  public static final String K = "http://audit.1tpan.com/audit/phoneFeedback.action?fb.platform=2&fb.email=%s&fb.content=%s";
  public static final String L = "tpan.intent.action.UPLOAD_FILES";
  public static final String M = "tpan.intent.action.DOWNLOAD_FILES";
  public static final String N = "tpan.intent.action.CANCEL_UPLOAD";
  public static final String O = "tpan.intent.action.CANCEL_DOWNLOAD";
  public static final String P = "tpan.intent.action.SCAN_NEW_IMAGES_FINISHED";
  public static final String Q = "tpan.intent.action.BACK_TO_AG";
  public static final String R = "tpan.intent.extra.bundle";
  public static final String S = "tpan.intent.extra.request_code";
  public static final String T = "tpan.intent.extra.parent_id";
  public static final String U = "tpan.intent.extra.paths";
  public static final String V = "tpan.intent.action.UPLOAD_FINISH";
  public static final String W = "tpan.intent.action.DOWNLOAD_FINISH";
  public static final String X = "tpan.intent.extra.file_id";
  public static final String Y = "tpan.intent.extra.target_path";
  public static final String Z = "tpan.intent.extra.file_type";
  public static final String a = "TpanApp";
  public static final String aA = "shared_prefs/com.ijinshan.mguard_preferences.xml";
  public static final String aB = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/history.bak";
  public static final String aC = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/contactsbakd.bak";
  public static final String aD = Environment.getExternalStorageDirectory() + "/mosecurity/sdbackup/contactslocal.bak";
  public static final String aE = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/contactsbakd.bak.tmp";
  public static final String aF = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/settingsbakd.bak";
  public static final String aG = Environment.getExternalStorageDirectory() + "/mosecurity/sdbackup/settingslocal.bak";
  public static final String aH = Environment.getExternalStorageDirectory() + "/mosecurity/sdbackup/firedblocal.bak";
  public static final String aI = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/smsbakd.bak";
  public static final String aJ = Environment.getExternalStorageDirectory() + "/mosecurity/sdbackup/smslocal.bak";
  public static final String aK = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/smsbak.bak.tmp";
  public static final String aL = Environment.getExternalStorageDirectory() + "/mosecurity/Backup/sync.log";
  public static final String aM = "sms_backup";
  public static final String aN = "sms_backup_friend";
  public static final SimpleDateFormat aO = new SimpleDateFormat("yyyy年MM月dd日 HH:mm:ss");
  public static final int aP = 1;
  public static final int aQ = 2;
  public static final int aR = 0;
  public static final int aS = 1;
  public static final int aT = 2;
  public static final String aU = "TCOUNT";
  public static final String aV = "sync_backup_time_key";
  public static final String aW = "no_more_backup_tip";
  public static final String aX = "http://i.ijinshan.com/register/mobile?ajax=1&source=mweishi";
  public static final String aY = "http://i.ijinshan.com/register/mobile/verify?ajax=1&source=mweishi";
  public static final String aZ = "http://i.ijinshan.com/ajax/isvalidaccount?ajax=1&source=mweishi";
  public static final String aa = "tpan.intent.extra.file_size";
  public static final String ab = ";";
  public static final String ac = ":";
  public static final String ad = "ID";
  public static final String ae = "N";
  public static final String af = "FN";
  public static final String ag = "ADR";
  public static final String ah = "ADETAIL";
  public static final String ai = "ATYPE";
  public static final String aj = "EMAIL";
  public static final String ak = "ETYPE";
  public static final String al = "TEL";
  public static final String am = "TTYPE";
  public static final String an = "ORG";
  public static final String ao = "OTITLE";
  public static final String ap = "OTYPE";
  public static final String aq = "VMAP_ITEM_IMAGE";
  public static final String ar = "VMAP_ITEM_TITLE";
  public static final String as = "VMAP_ITEM_DESC";
  public static final String at = "VMAP_ITEM_CLASS";
  public static final String au = "/ks_program/mosecurity";
  public static final String av = "contact";
  public static final String aw = "sms";
  public static final String ax = "mos";
  public static final String ay = "mss";
  public static final String az = "firewall_user_rules.db";
  public static final String b = "TpanServ";
  public static final int bA = 1024;
  public static final int bB = 1023;
  public static final int bC = 1021;
  public static final int bD = 1020;
  public static final int bE = 1019;
  public static final String bF = null;
  public static final String bG = "^(13[0-9]|15[0-9]|18[0-9]|147|190)[0-9]{8}$";
  public static final String bH = "^[^* ]{6,32}$";
  public static final int bI = 0;
  public static final int bJ = 1;
  public static final int bK = 2;
  public static final String bL = "12004";
  public static final int bM = 5;
  public static final String bN = "http://login.cloud2.1tpan.com";
  public static final String bO = "/3/login";
  public static final String bP = "/3/logout";
  public static final String bQ = "user_name";
  public static final String bR = "pass_word";
  public static final String bS = "session_id";
  public static final String bT = "auto_status";
  public static final int bU = 0;
  public static final int bV = 3000;
  public static final int bW = 3017;
  public static final String bX = "null";
  public static final String bY = "0.0.0.001";
  public static final String bZ = "code";
  public static final String ba = "http://i.ijinshan.com/jump.php?act=modify&source=mosecurity";
  public static final String bb = "http://i.ijinshan.com/jump.php?act=forget_mobile&source=mosecurity&mobile=";
  public static final String bc = "http://i.ijinshan.com/m?c=";
  public static final String bd = "file:///android_asset/html/private_protect.html";
  public static final String be = "http://www.duba.net/protocol/serverUse.shtml";
  public static final String bf = "application/xhtml+xml";
  public static final String bg = "mobile";
  public static final String bh = "password";
  public static final String bi = "repassword";
  public static final int bj = 0;
  public static final String bk = "errno";
  public static final String bl = "error";
  public static final int bm = -4;
  public static final int bn = -5;
  public static final int bo = -10;
  public static final int bp = -13;
  public static final int bq = -1;
  public static final int br = 1;
  public static final int bs = 1022;
  public static final int bt = 3;
  public static final int bu = 4;
  public static final int bv = 5;
  public static final int bw = 6;
  public static final int bx = 7;
  public static final int by = 16;
  public static final int bz = 17;
  public static final String c = "https://login.cloud2.1tpan.com";
  public static final String cA = "sync_items_bak_status";
  public static final String cB = "sync_items_res_status";
  public static final String cC = "sync_contacts_size";
  public static final int cD = 123;
  public static final String cE = "msg_type";
  public static final String cF = "login";
  public static final String cG = "sync_records";
  public static final String cH = "sync_itemdir";
  public static final String cI = "local_last_record";
  public static final int cJ = 7;
  public static final int cK = 8;
  public static final int cL = 9;
  public static final int cM = 10;
  public static final int cN = 11;
  public static final int cO = 12;
  public static final int cP = 13;
  public static final int cQ = 14;
  public static final int cR = 18;
  public static final int cS = 19;
  public static final int cT = 20;
  public static final int cU = 21;
  public static final int cV = 22;
  public static final int cW = 23;
  public static final int cX = 24;
  public static final int cY = -15;
  public static final int cZ = -1;
  public static final String ca = "passport";
  public static final int cb = 30000;
  public static final String cc = "vnd.android-dir/mms-sms";
  public static final String cd = "type";
  public static final int ce = 1;
  public static final int cf = 2;
  public static final int cg = 3;
  public static final int ch = -1;
  public static final String ci = "sync";
  public static final String cj = "true";
  public static final String ck = "false";
  public static final int cl = 10;
  public static final int cm = 15;
  public static final String cn = "dialog_type";
  public static final int co = 1;
  public static final int cp = 2;
  public static final int cq = 3;
  public static final String cr = "map";
  public static final String cs = "string";
  public static final String ct = "";
  public static final String cu = "value";
  public static final String cv = "name";
  public static final String cw = "type";
  public static final String cx = "key";
  public static final String cy = "value";
  public static final String cz = "com.ijinshan.mguard_preferences.xml";
  public static final String d = "http://app.cloud3.1tpan.com/3";
  public static final byte[] dA = DigestUtils.md5("ijinshan_sync_compress".getBytes());
  public static final byte[] dB = "[".getBytes();
  public static final String dC = "backup_type";
  private static d dD = null;
  public static final int da = 10001;
  public static final int db = 10002;
  public static final int dc = 10003;
  public static final int dd = 10004;
  public static final int de = 10005;
  public static final int df = 10006;
  public static final int dg = 10007;
  public static final int dh = 10008;
  public static final int di = -10009;
  public static final int dj = -10010;
  public static final int dk = -10011;
  public static final int dl = -10012;
  public static final int dm = -10013;
  public static final int dn = -10014;
  public static final int jdField_do = -10015;
  public static final int dp = -10016;
  public static final int dq = -10017;
  public static final int dr = -10018;
  public static final int ds = -10019;
  public static final int dt = -10020;
  public static final int du = -10021;
  public static final int dv = -10022;
  public static final int dw = -10023;
  public static final int dx = -10024;
  public static final int dy = -10025;
  public static final int dz = -11;
  public static final String e = "http://fud%d.cloud2.1tpan.com";
  public static final String f = "http://task.cloud2.1tpan.com";
  public static final String g = "http://i.ijinshan.com/register/mobile?ajax=1&source=mtpan";
  public static final String h = "/login";
  public static final String i = "/relogin";
  public static final String j = "/logout";
  public static final String k = "/getspace";
  public static final String l = "/delete";
  public static final String m = "/rename";
  public static final String n = "/mkdir";
  public static final String o = "/openthumbs";
  public static final String p = "/move";
  public static final String q = "/copy";
  public static final String r = "/list";
  public static final String s = "/info";
  public static final String t = "/openwrite";
  public static final String u = "/query";
  public static final String v = "/write";
  public static final String w = "/closefile";
  public static final String x = "/openread";
  public static final String y = "/read";
  public static final String z = "/complete-task";

  private static int a(Context paramContext, String paramString)
  {
    return com.ijinshan.kpref.t.b(paramContext).getInt(paramString, 0);
  }

  public static int a(String paramString1, String paramString2, String paramString3, int paramInt)
  {
    int i1;
    if (paramString3 == null)
      i1 = 10001;
    a locala;
    String str;
    List localList2;
    while (true)
    {
      return i1;
      locala = new a();
      cf localcf1 = locala.a(paramString3, "/ks_program/mosecurity");
      if (localcf1 == null)
      {
        i1 = 10002;
      }
      else
      {
        str = a.a(localcf1, paramString1);
        if (str == null)
        {
          i1 = 10003;
        }
        else
        {
          cf localcf2 = locala.a(paramString3, str);
          if (localcf2 == null)
          {
            i1 = 10004;
          }
          else
          {
            List localList1 = localcf2.p();
            if ((localList1 == null) || (localList1.size() <= 0))
            {
              i1 = 10005;
            }
            else if (paramInt >= localList1.size())
            {
              i1 = -10023;
            }
            else
            {
              localList2 = a(localList1, 1);
              if (paramInt < localList2.size())
                break;
              i1 = -1;
            }
          }
        }
      }
    }
    if (paramInt < 0);
    for (int i2 = localList2.size() - 1; ; i2 = paramInt)
    {
      i1 = locala.a(paramString3, str, paramString2, ((gj)localList2.get(i2)).k());
      break;
    }
  }

  private static Uri a()
  {
    if (Integer.parseInt(Build.VERSION.SDK) < 5);
    for (Uri localUri = Contacts.People.CONTENT_URI; ; localUri = ContactsContract.Contacts.CONTENT_URI)
      return localUri;
  }

  public static d a(Context paramContext)
  {
    d locald;
    if (dD != null)
    {
      locald = dD;
      return locald;
    }
    if (Integer.parseInt(Build.VERSION.SDK) >= 5);
    for (Object localObject = new f(); ; localObject = new e())
    {
      dD = (d)localObject;
      ((d)localObject).a(paramContext.getContentResolver());
      locald = dD;
      break;
    }
  }

  private static String a(File paramFile)
  {
    String str;
    if (!paramFile.isFile())
      str = null;
    while (true)
    {
      return str;
      byte[] arrayOfByte = new byte[1024];
      MessageDigest localMessageDigest;
      FileInputStream localFileInputStream;
      try
      {
        localMessageDigest = MessageDigest.getInstance("SHA-1");
        localFileInputStream = new FileInputStream(paramFile);
        while (true)
        {
          int i1 = localFileInputStream.read(arrayOfByte, 0, 1024);
          if (i1 == -1)
            break;
          localMessageDigest.update(arrayOfByte, 0, i1);
        }
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
        str = null;
      }
      continue;
      localFileInputStream.close();
      str = new BigInteger(1, localMessageDigest.digest()).toString(16);
    }
  }

  public static List a(String paramString1, String paramString2)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramString2 == null)
      localArrayList = null;
    List localList1;
    do
    {
      cf localcf2;
      while (true)
      {
        return localArrayList;
        a locala = new a();
        cf localcf1 = locala.a(paramString2, "/ks_program/mosecurity");
        if (localcf1 == null)
        {
          localArrayList = null;
        }
        else
        {
          String str1 = a.a(localcf1, paramString1);
          if (str1 != null)
          {
            localcf2 = locala.a(paramString2, str1);
            if (localcf2 != null)
              break;
            localArrayList = null;
          }
        }
      }
      localList1 = localcf2.p();
    }
    while ((localList1 == null) || (localList1.size() == 0));
    List localList2 = a(localList1, -1);
    int i1 = 0;
    label108: gj localgj;
    String str2;
    int i2;
    if (i1 < localList2.size())
    {
      localgj = (gj)localList2.get(i1);
      str2 = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss").format(Long.valueOf(localgj.U_()));
      i2 = localgj.q().indexOf("__");
      if (i2 <= 0)
        break label246;
    }
    label246: for (String str3 = localgj.q().substring(i2 + 2); ; str3 = "")
    {
      localArrayList.add(new HistoryRecord(str2, str3, "[" + ax.c(localgj.s()) + "]"));
      i1++;
      break label108;
      break;
    }
  }

  private static List a(List paramList)
  {
    return a(paramList, 1);
  }

  private static List a(List paramList, int paramInt)
  {
    Object localObject;
    if ((paramList == null) || (paramList.size() <= 1))
      localObject = paramList;
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        ((List)localObject).add((gj)localIterator.next());
      Collections.sort((List)localObject, new t(paramInt));
    }
  }

  private static void a(Context paramContext, String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = com.ijinshan.kpref.t.b(paramContext).edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.commit();
  }

  private static void a(Context paramContext, String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = com.ijinshan.kpref.t.b(paramContext).edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.commit();
  }

  // ERROR //
  public static void a(String paramString)
  {
    // Byte code:
    //   0: new 773	java/io/File
    //   3: dup
    //   4: getstatic 608	com/keniu/security/sync/r:aB	Ljava/lang/String;
    //   7: invokespecial 908	java/io/File:<init>	(Ljava/lang/String;)V
    //   10: astore_1
    //   11: aconst_null
    //   12: astore_2
    //   13: new 910	java/io/BufferedWriter
    //   16: dup
    //   17: new 912	java/io/FileWriter
    //   20: dup
    //   21: aload_1
    //   22: iconst_1
    //   23: invokespecial 915	java/io/FileWriter:<init>	(Ljava/io/File;Z)V
    //   26: invokespecial 918	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   29: astore_3
    //   30: aload_3
    //   31: new 584	java/lang/StringBuilder
    //   34: dup
    //   35: invokespecial 587	java/lang/StringBuilder:<init>	()V
    //   38: aload_0
    //   39: invokevirtual 602	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc_w 920
    //   45: invokevirtual 602	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   48: invokevirtual 606	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   51: invokevirtual 923	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   54: aload_3
    //   55: invokevirtual 926	java/io/BufferedWriter:flush	()V
    //   58: aload_3
    //   59: invokevirtual 927	java/io/BufferedWriter:close	()V
    //   62: return
    //   63: astore 10
    //   65: aconst_null
    //   66: astore 5
    //   68: aload 5
    //   70: ifnull -8 -> 62
    //   73: aload 5
    //   75: invokevirtual 927	java/io/BufferedWriter:close	()V
    //   78: goto -16 -> 62
    //   81: astore 6
    //   83: goto -21 -> 62
    //   86: astore 7
    //   88: aload_2
    //   89: ifnull +7 -> 96
    //   92: aload_2
    //   93: invokevirtual 927	java/io/BufferedWriter:close	()V
    //   96: aload 7
    //   98: athrow
    //   99: astore 9
    //   101: goto -39 -> 62
    //   104: astore 8
    //   106: goto -10 -> 96
    //   109: astore 7
    //   111: aload_3
    //   112: astore_2
    //   113: goto -25 -> 88
    //   116: astore 4
    //   118: aload_3
    //   119: astore 5
    //   121: goto -53 -> 68
    //
    // Exception table:
    //   from	to	target	type
    //   13	30	63	java/lang/Exception
    //   73	78	81	java/lang/Exception
    //   13	30	86	finally
    //   58	62	99	java/lang/Exception
    //   92	96	104	java/lang/Exception
    //   30	58	109	finally
    //   30	58	116	java/lang/Exception
  }

  public static boolean a(ContentResolver paramContentResolver, ContentValues paramContentValues)
  {
    String str1 = paramContentValues.getAsString("address");
    if (TextUtils.isEmpty(str1))
      str1 = "";
    String str2 = paramContentValues.getAsString("date");
    if (TextUtils.isEmpty(str2))
      str2 = "";
    String[] arrayOfString = { str1, str2 };
    Cursor localCursor = paramContentResolver.query(android.a.t.a, new String[] { "_id" }, "address =? and date=? and type <> 3", arrayOfString, null);
    int i2;
    if (localCursor != null)
    {
      i2 = localCursor.getCount();
      localCursor.close();
    }
    for (int i1 = i2; ; i1 = 0)
    {
      if (i1 > 0);
      for (boolean bool = true; ; bool = false)
        return bool;
    }
  }

  public static boolean a(String paramString1, String paramString2, int paramInt)
  {
    boolean bool;
    if (paramString2 == null)
      bool = false;
    while (true)
    {
      return bool;
      a locala = new a();
      cf localcf1 = locala.a(paramString2, "/ks_program/mosecurity");
      if (localcf1 == null)
      {
        bool = false;
      }
      else
      {
        String str = a.a(localcf1, paramString1);
        if (str == null)
        {
          bool = false;
        }
        else
        {
          cf localcf2 = locala.a(paramString2, str);
          if (localcf2 == null)
          {
            bool = false;
          }
          else
          {
            List localList1 = localcf2.p();
            if ((localList1 == null) || (localList1.size() <= 0))
            {
              bool = false;
            }
            else
            {
              List localList2 = a(localList1, 1);
              if (paramInt >= localList2.size())
                bool = false;
              else if (locala.b(paramString2, ((gj)localList2.get(paramInt)).k()) == 0)
                bool = true;
              else
                bool = false;
            }
          }
        }
      }
    }
  }

  // ERROR //
  public static boolean a(org.json.JSONArray paramJSONArray, String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +10 -> 11
    //   4: aload_0
    //   5: invokevirtual 974	org/json/JSONArray:length	()I
    //   8: ifne +7 -> 15
    //   11: iconst_0
    //   12: istore_2
    //   13: iload_2
    //   14: ireturn
    //   15: new 773	java/io/File
    //   18: dup
    //   19: aload_1
    //   20: invokespecial 908	java/io/File:<init>	(Ljava/lang/String;)V
    //   23: astore_3
    //   24: aconst_null
    //   25: astore 4
    //   27: new 910	java/io/BufferedWriter
    //   30: dup
    //   31: new 912	java/io/FileWriter
    //   34: dup
    //   35: aload_3
    //   36: invokespecial 975	java/io/FileWriter:<init>	(Ljava/io/File;)V
    //   39: invokespecial 918	java/io/BufferedWriter:<init>	(Ljava/io/Writer;)V
    //   42: astore 5
    //   44: aload 5
    //   46: aload_0
    //   47: invokevirtual 976	org/json/JSONArray:toString	()Ljava/lang/String;
    //   50: invokevirtual 923	java/io/BufferedWriter:write	(Ljava/lang/String;)V
    //   53: aload 5
    //   55: invokevirtual 926	java/io/BufferedWriter:flush	()V
    //   58: aload 5
    //   60: invokevirtual 927	java/io/BufferedWriter:close	()V
    //   63: iconst_1
    //   64: istore_2
    //   65: goto -52 -> 13
    //   68: astore 12
    //   70: aconst_null
    //   71: astore 7
    //   73: aload 7
    //   75: ifnull +8 -> 83
    //   78: aload 7
    //   80: invokevirtual 927	java/io/BufferedWriter:close	()V
    //   83: iconst_0
    //   84: istore_2
    //   85: goto -72 -> 13
    //   88: astore 9
    //   90: aload 4
    //   92: ifnull +8 -> 100
    //   95: aload 4
    //   97: invokevirtual 927	java/io/BufferedWriter:close	()V
    //   100: aload 9
    //   102: athrow
    //   103: astore 11
    //   105: goto -42 -> 63
    //   108: astore 8
    //   110: goto -27 -> 83
    //   113: astore 10
    //   115: goto -15 -> 100
    //   118: astore 9
    //   120: aload 5
    //   122: astore 4
    //   124: goto -34 -> 90
    //   127: astore 6
    //   129: aload 5
    //   131: astore 7
    //   133: goto -60 -> 73
    //
    // Exception table:
    //   from	to	target	type
    //   27	44	68	java/lang/Exception
    //   27	44	88	finally
    //   58	63	103	java/lang/Exception
    //   78	83	108	java/lang/Exception
    //   95	100	113	java/lang/Exception
    //   44	58	118	finally
    //   44	58	127	java/lang/Exception
  }

  public static boolean a(boolean[] paramArrayOfBoolean)
  {
    int i1 = 0;
    if (i1 < paramArrayOfBoolean.length)
      if (paramArrayOfBoolean[i1] == 0);
    for (boolean bool = false; ; bool = true)
    {
      return bool;
      i1++;
      break;
    }
  }

  public static int b(boolean[] paramArrayOfBoolean)
  {
    int i1 = 0;
    int i2 = 0;
    if (i1 < paramArrayOfBoolean.length)
    {
      int i3 = (2 << i1) / 2;
      if (paramArrayOfBoolean[i1] != 0);
      for (int i4 = 1; ; i4 = 0)
      {
        i2 += i3 * i4;
        i1++;
        break;
      }
    }
    return i2;
  }

  // ERROR //
  public static List b(String paramString)
  {
    // Byte code:
    //   0: ldc_w 437
    //   3: astore_1
    //   4: new 773	java/io/File
    //   7: dup
    //   8: aload_0
    //   9: invokespecial 908	java/io/File:<init>	(Ljava/lang/String;)V
    //   12: astore_2
    //   13: new 983	java/io/BufferedReader
    //   16: dup
    //   17: new 985	java/io/FileReader
    //   20: dup
    //   21: aload_2
    //   22: invokespecial 986	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   25: invokespecial 989	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   28: astore_3
    //   29: aload_3
    //   30: invokevirtual 992	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   33: astore 11
    //   35: aload 11
    //   37: ifnull +58 -> 95
    //   40: aload 11
    //   42: ldc_w 677
    //   45: invokevirtual 996	java/lang/String:startsWith	(Ljava/lang/String;)Z
    //   48: ifeq +9 -> 57
    //   51: aload 11
    //   53: astore_1
    //   54: goto -25 -> 29
    //   57: new 663	java/lang/String
    //   60: dup
    //   61: aload 11
    //   63: iconst_2
    //   64: invokestatic 1001	com/hoi/a/a:a	(Ljava/lang/String;I)[B
    //   67: invokespecial 1004	java/lang/String:<init>	([B)V
    //   70: astore_1
    //   71: goto -42 -> 29
    //   74: astore 7
    //   76: aload_3
    //   77: astore 8
    //   79: aload 8
    //   81: ifnull +8 -> 89
    //   84: aload 8
    //   86: invokevirtual 1005	java/io/BufferedReader:close	()V
    //   89: aconst_null
    //   90: astore 9
    //   92: aload 9
    //   94: areturn
    //   95: aload_3
    //   96: invokevirtual 1005	java/io/BufferedReader:close	()V
    //   99: new 818	java/util/ArrayList
    //   102: dup
    //   103: invokespecial 819	java/util/ArrayList:<init>	()V
    //   106: astore 13
    //   108: new 971	org/json/JSONArray
    //   111: dup
    //   112: aload_1
    //   113: invokespecial 1006	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   116: astore 14
    //   118: iconst_0
    //   119: istore 15
    //   121: aload 14
    //   123: invokevirtual 974	org/json/JSONArray:length	()I
    //   126: istore 17
    //   128: iload 15
    //   130: iload 17
    //   132: if_icmpge +320 -> 452
    //   135: aload 14
    //   137: iload 15
    //   139: invokevirtual 1010	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   142: astore 19
    //   144: new 1012	com/keniu/security/sync/g
    //   147: dup
    //   148: invokespecial 1013	com/keniu/security/sync/g:<init>	()V
    //   151: astore 20
    //   153: aload 19
    //   155: ldc 151
    //   157: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   160: ifne +15 -> 175
    //   163: aload 20
    //   165: aload 19
    //   167: ldc 151
    //   169: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   172: invokevirtual 1023	com/keniu/security/sync/g:e	(Ljava/lang/String;)V
    //   175: aload 19
    //   177: ldc 154
    //   179: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   182: ifne +15 -> 197
    //   185: aload 20
    //   187: aload 19
    //   189: ldc 154
    //   191: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   194: invokevirtual 1025	com/keniu/security/sync/g:f	(Ljava/lang/String;)V
    //   197: aload 19
    //   199: ldc 157
    //   201: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   204: ifne +15 -> 219
    //   207: aload 20
    //   209: aload 19
    //   211: ldc 157
    //   213: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   216: invokevirtual 1027	com/keniu/security/sync/g:a	(Ljava/lang/String;)V
    //   219: aload 19
    //   221: ldc 160
    //   223: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   226: ifne +15 -> 241
    //   229: aload 20
    //   231: aload 19
    //   233: ldc 160
    //   235: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   238: invokevirtual 1029	com/keniu/security/sync/g:d	(Ljava/lang/String;)V
    //   241: aload 19
    //   243: ldc 169
    //   245: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   248: ifne +15 -> 263
    //   251: aload 20
    //   253: aload 19
    //   255: ldc 169
    //   257: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   260: invokevirtual 1031	com/keniu/security/sync/g:i	(Ljava/lang/String;)V
    //   263: aload 19
    //   265: ldc 163
    //   267: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   270: ifne +15 -> 285
    //   273: aload 20
    //   275: aload 19
    //   277: ldc 163
    //   279: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   282: invokevirtual 1033	com/keniu/security/sync/g:g	(Ljava/lang/String;)V
    //   285: aload 19
    //   287: ldc 166
    //   289: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   292: ifne +15 -> 307
    //   295: aload 20
    //   297: aload 19
    //   299: ldc 166
    //   301: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   304: invokevirtual 1035	com/keniu/security/sync/g:j	(Ljava/lang/String;)V
    //   307: aload 19
    //   309: ldc 172
    //   311: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   314: ifne +15 -> 329
    //   317: aload 20
    //   319: aload 19
    //   321: ldc 172
    //   323: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   326: invokevirtual 1037	com/keniu/security/sync/g:k	(Ljava/lang/String;)V
    //   329: aload 19
    //   331: ldc 175
    //   333: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   336: ifne +15 -> 351
    //   339: aload 20
    //   341: aload 19
    //   343: ldc 175
    //   345: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   348: invokevirtual 1039	com/keniu/security/sync/g:h	(Ljava/lang/String;)V
    //   351: aload 19
    //   353: ldc 178
    //   355: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   358: ifne +15 -> 373
    //   361: aload 20
    //   363: aload 19
    //   365: ldc 178
    //   367: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   370: invokevirtual 1041	com/keniu/security/sync/g:b	(Ljava/lang/String;)V
    //   373: aload 19
    //   375: ldc 181
    //   377: invokevirtual 1018	org/json/JSONObject:isNull	(Ljava/lang/String;)Z
    //   380: ifne +15 -> 395
    //   383: aload 20
    //   385: aload 19
    //   387: ldc 181
    //   389: invokevirtual 1021	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   392: invokevirtual 1043	com/keniu/security/sync/g:c	(Ljava/lang/String;)V
    //   395: aload 13
    //   397: aload 20
    //   399: invokeinterface 863 2 0
    //   404: pop
    //   405: iinc 15 1
    //   408: goto -287 -> 121
    //   411: astore 4
    //   413: aconst_null
    //   414: astore 5
    //   416: aload 5
    //   418: ifnull +8 -> 426
    //   421: aload 5
    //   423: invokevirtual 1005	java/io/BufferedReader:close	()V
    //   426: aload 4
    //   428: athrow
    //   429: astore 18
    //   431: aload 18
    //   433: invokevirtual 801	java/lang/Exception:printStackTrace	()V
    //   436: goto -31 -> 405
    //   439: astore 16
    //   441: aload 16
    //   443: invokevirtual 1044	org/json/JSONException:printStackTrace	()V
    //   446: aconst_null
    //   447: astore 9
    //   449: goto -357 -> 92
    //   452: aload 13
    //   454: astore 9
    //   456: goto -364 -> 92
    //   459: astore 12
    //   461: goto -362 -> 99
    //   464: astore 10
    //   466: goto -377 -> 89
    //   469: astore 6
    //   471: goto -45 -> 426
    //   474: astore 4
    //   476: aload_3
    //   477: astore 5
    //   479: goto -63 -> 416
    //   482: astore 22
    //   484: aconst_null
    //   485: astore 8
    //   487: goto -408 -> 79
    //
    // Exception table:
    //   from	to	target	type
    //   29	71	74	java/lang/Exception
    //   13	29	411	finally
    //   135	144	429	java/lang/Exception
    //   108	128	439	org/json/JSONException
    //   135	144	439	org/json/JSONException
    //   144	405	439	org/json/JSONException
    //   431	436	439	org/json/JSONException
    //   95	99	459	java/lang/Exception
    //   84	89	464	java/lang/Exception
    //   421	426	469	java/lang/Exception
    //   29	71	474	finally
    //   13	29	482	java/lang/Exception
  }

  public static boolean b(Context paramContext)
  {
    if (!at.c(paramContext))
    {
      aq localaq = new aq(paramContext, (byte)0);
      localaq.a(paramContext.getString(2131427865));
      localaq.b(paramContext.getString(2131429472));
      localaq.a(paramContext.getString(2131429569), new s(paramContext));
      localaq.b(paramContext.getString(2131428398), null);
      localaq.c().show();
    }
    for (boolean bool = false; ; bool = true)
      return bool;
  }

  public static boolean b(String paramString1, String paramString2)
  {
    try
    {
      FileChannel localFileChannel1 = new FileInputStream(paramString1).getChannel();
      FileChannel localFileChannel2 = new FileOutputStream(paramString2).getChannel();
      localFileChannel2.transferFrom(localFileChannel1, 0L, localFileChannel1.size());
      localFileChannel1.close();
      localFileChannel2.close();
      bool = true;
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        localException.printStackTrace();
        boolean bool = false;
      }
    }
  }

  private static String c(String paramString)
  {
    try
    {
      String str2 = new BigInteger(1, MessageDigest.getInstance("SHA-1").digest(paramString.getBytes())).toString(16);
      str1 = str2;
      return str1;
    }
    catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
    {
      while (true)
      {
        localNoSuchAlgorithmException.printStackTrace();
        String str1 = null;
      }
    }
  }

  public static boolean c(Context paramContext)
  {
    boolean bool;
    if (!j.b())
    {
      Toast.makeText(paramContext, paramContext.getString(2131427958), 0).show();
      bool = false;
    }
    while (true)
    {
      return bool;
      if (j.a() <= 102400L)
      {
        Toast.makeText(paramContext, paramContext.getString(2131429571), 0).show();
        bool = false;
      }
      else
      {
        bool = true;
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.r
 * JD-Core Version:    0.6.2
 */