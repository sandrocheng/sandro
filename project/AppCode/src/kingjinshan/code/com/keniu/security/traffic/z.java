package com.keniu.security.traffic;

import android.app.ActivityManager;
import android.app.ActivityManager.RunningAppProcessInfo;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.os.SystemClock;
import com.hoi.netstat.f;
import com.hoi.netstat.g;
import com.jxphone.mosecurity.a.a;
import com.keniu.security.util.ax;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.util.Comparator;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Vector;

public final class z extends SQLiteOpenHelper
{
  private static final String A = "wifiSended";
  private static final String B = "wifiTotalRecved";
  private static final String C = "wifiTotalSended";
  private static final String D = "netRecved";
  private static final String E = "netSended";
  private static final String F = "netTotalRecved";
  private static final String G = "netTotalSended";
  private static final String H = "updateDate";
  private static final String I = "dayRecord";
  private static final String J = "recved";
  private static final String K = "sended";
  private static final String L = "daySoftRecord";
  private static final g M = f.a();
  public static final String a = "mosecurity_traffic.db";
  public static final int b = 1000000;
  public static final int c = 1000001;
  public static final int d = 1000002;
  public static final String e = "3G2G";
  public static final String f = "wifi";
  public static final String g = "uninstaledSoft";
  public static Comparator h = new aa();
  public static Comparator i = new ab();
  private static boolean n = false;
  private static long o = 0L;
  private static boolean p = false;
  private static final int q = 0;
  private static final int r = 1;
  private static final int s = 2;
  private static int t = 0;
  private static String u = "";
  private static final int v = 7;
  private static final String w = "lastRecord";
  private static final String x = "userID";
  private static final String y = "apkName";
  private static final String z = "wifiRecved";
  private Context j;
  private boolean k;
  private SQLiteDatabase l;
  private int m = 0;

  private z(Context paramContext)
  {
    super(paramContext, "mosecurity_traffic.db", null, 7);
    this.j = paramContext;
  }

  // ERROR //
  private ad a(int paramInt, String paramString)
  {
    // Byte code:
    //   0: bipush 11
    //   2: anewarray 147	java/lang/String
    //   5: dup
    //   6: iconst_0
    //   7: ldc 86
    //   9: aastore
    //   10: dup
    //   11: iconst_1
    //   12: ldc 89
    //   14: aastore
    //   15: dup
    //   16: iconst_2
    //   17: ldc 8
    //   19: aastore
    //   20: dup
    //   21: iconst_3
    //   22: ldc 92
    //   24: aastore
    //   25: dup
    //   26: iconst_4
    //   27: ldc 14
    //   29: aastore
    //   30: dup
    //   31: iconst_5
    //   32: ldc 11
    //   34: aastore
    //   35: dup
    //   36: bipush 6
    //   38: ldc 20
    //   40: aastore
    //   41: dup
    //   42: bipush 7
    //   44: ldc 17
    //   46: aastore
    //   47: dup
    //   48: bipush 8
    //   50: ldc 26
    //   52: aastore
    //   53: dup
    //   54: bipush 9
    //   56: ldc 23
    //   58: aastore
    //   59: dup
    //   60: bipush 10
    //   62: ldc 29
    //   64: aastore
    //   65: astore_3
    //   66: new 149	java/lang/StringBuilder
    //   69: dup
    //   70: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   73: ldc 152
    //   75: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   78: iload_1
    //   79: invokevirtual 159	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   82: ldc 161
    //   84: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   87: ldc 89
    //   89: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: ldc 163
    //   94: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   97: aload_2
    //   98: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: ldc 165
    //   103: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   109: astore 4
    //   111: aload_0
    //   112: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   115: ldc 83
    //   117: aload_3
    //   118: aload 4
    //   120: aconst_null
    //   121: aconst_null
    //   122: aconst_null
    //   123: aconst_null
    //   124: ldc 173
    //   126: invokevirtual 179	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   129: astore 10
    //   131: aload 10
    //   133: ifnull +282 -> 415
    //   136: aload 10
    //   138: invokeinterface 184 1 0
    //   143: ifeq +272 -> 415
    //   146: new 186	com/keniu/security/traffic/ad
    //   149: dup
    //   150: aload_0
    //   151: invokespecial 189	com/keniu/security/traffic/ad:<init>	(Lcom/keniu/security/traffic/z;)V
    //   154: astore 11
    //   156: aload 11
    //   158: aload 10
    //   160: iconst_0
    //   161: invokeinterface 193 2 0
    //   166: putfield 195	com/keniu/security/traffic/ad:a	I
    //   169: aload 11
    //   171: aload 10
    //   173: iconst_1
    //   174: invokeinterface 199 2 0
    //   179: putfield 201	com/keniu/security/traffic/ad:b	Ljava/lang/String;
    //   182: aload 11
    //   184: aload 10
    //   186: iconst_2
    //   187: invokeinterface 205 2 0
    //   192: putfield 207	com/keniu/security/traffic/ad:c	J
    //   195: aload 11
    //   197: aload 10
    //   199: iconst_3
    //   200: invokeinterface 205 2 0
    //   205: putfield 209	com/keniu/security/traffic/ad:d	J
    //   208: aload 11
    //   210: aload 10
    //   212: iconst_4
    //   213: invokeinterface 205 2 0
    //   218: putfield 211	com/keniu/security/traffic/ad:e	J
    //   221: aload 11
    //   223: aload 10
    //   225: iconst_5
    //   226: invokeinterface 205 2 0
    //   231: putfield 213	com/keniu/security/traffic/ad:f	J
    //   234: aload 11
    //   236: aload 10
    //   238: bipush 6
    //   240: invokeinterface 205 2 0
    //   245: putfield 215	com/keniu/security/traffic/ad:g	J
    //   248: aload 11
    //   250: aload 10
    //   252: bipush 7
    //   254: invokeinterface 205 2 0
    //   259: putfield 217	com/keniu/security/traffic/ad:h	J
    //   262: aload 11
    //   264: aload 10
    //   266: bipush 8
    //   268: invokeinterface 205 2 0
    //   273: putfield 219	com/keniu/security/traffic/ad:i	J
    //   276: aload 11
    //   278: aload 10
    //   280: bipush 9
    //   282: invokeinterface 205 2 0
    //   287: putfield 221	com/keniu/security/traffic/ad:j	J
    //   290: aload 11
    //   292: aload 10
    //   294: bipush 10
    //   296: invokeinterface 205 2 0
    //   301: putfield 223	com/keniu/security/traffic/ad:k	J
    //   304: aload 10
    //   306: ifnull +102 -> 408
    //   309: aload 10
    //   311: invokeinterface 226 1 0
    //   316: aload 11
    //   318: astore 8
    //   320: aload 8
    //   322: areturn
    //   323: astore 7
    //   325: aconst_null
    //   326: astore 8
    //   328: aconst_null
    //   329: astore 9
    //   331: aload 9
    //   333: ifnull -13 -> 320
    //   336: aload 9
    //   338: invokeinterface 226 1 0
    //   343: goto -23 -> 320
    //   346: astore 5
    //   348: aconst_null
    //   349: astore 6
    //   351: aload 6
    //   353: ifnull +10 -> 363
    //   356: aload 6
    //   358: invokeinterface 226 1 0
    //   363: aload 5
    //   365: athrow
    //   366: astore 13
    //   368: aload 10
    //   370: astore 6
    //   372: aload 13
    //   374: astore 5
    //   376: goto -25 -> 351
    //   379: astore 12
    //   381: aload 10
    //   383: astore 9
    //   385: aconst_null
    //   386: astore 8
    //   388: goto -57 -> 331
    //   391: astore 14
    //   393: aload 11
    //   395: astore 15
    //   397: aload 10
    //   399: astore 9
    //   401: aload 15
    //   403: astore 8
    //   405: goto -74 -> 331
    //   408: aload 11
    //   410: astore 8
    //   412: goto -92 -> 320
    //   415: aconst_null
    //   416: astore 11
    //   418: goto -114 -> 304
    //
    // Exception table:
    //   from	to	target	type
    //   111	131	323	java/lang/Exception
    //   111	131	346	finally
    //   136	156	366	finally
    //   156	304	366	finally
    //   136	156	379	java/lang/Exception
    //   156	304	391	java/lang/Exception
  }

  // ERROR //
  private ad a(int paramInt, String paramString, long paramLong)
  {
    // Byte code:
    //   0: lload_3
    //   1: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   4: lstore 5
    //   6: bipush 7
    //   8: anewarray 147	java/lang/String
    //   11: dup
    //   12: iconst_0
    //   13: ldc 86
    //   15: aastore
    //   16: dup
    //   17: iconst_1
    //   18: ldc 89
    //   20: aastore
    //   21: dup
    //   22: iconst_2
    //   23: ldc 14
    //   25: aastore
    //   26: dup
    //   27: iconst_3
    //   28: ldc 11
    //   30: aastore
    //   31: dup
    //   32: iconst_4
    //   33: ldc 26
    //   35: aastore
    //   36: dup
    //   37: iconst_5
    //   38: ldc 23
    //   40: aastore
    //   41: dup
    //   42: bipush 6
    //   44: ldc 29
    //   46: aastore
    //   47: astore 7
    //   49: new 149	java/lang/StringBuilder
    //   52: dup
    //   53: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   56: ldc 152
    //   58: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: iload_1
    //   62: invokevirtual 159	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   65: ldc 161
    //   67: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: ldc 89
    //   72: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   75: ldc 163
    //   77: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   80: aload_2
    //   81: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   84: ldc 165
    //   86: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   89: ldc 161
    //   91: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc 29
    //   96: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: ldc 234
    //   101: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   104: lload 5
    //   106: invokevirtual 237	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   109: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: astore 13
    //   114: aload_0
    //   115: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   118: ldc 41
    //   120: aload 7
    //   122: aload 13
    //   124: aconst_null
    //   125: aconst_null
    //   126: aconst_null
    //   127: aconst_null
    //   128: ldc 173
    //   130: invokevirtual 179	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   133: astore 14
    //   135: aload 14
    //   137: ifnull +205 -> 342
    //   140: aload 14
    //   142: invokeinterface 184 1 0
    //   147: ifeq +195 -> 342
    //   150: new 186	com/keniu/security/traffic/ad
    //   153: dup
    //   154: aload_0
    //   155: invokespecial 189	com/keniu/security/traffic/ad:<init>	(Lcom/keniu/security/traffic/z;)V
    //   158: astore 15
    //   160: aload 15
    //   162: iload_1
    //   163: putfield 195	com/keniu/security/traffic/ad:a	I
    //   166: aload 15
    //   168: aload_2
    //   169: putfield 201	com/keniu/security/traffic/ad:b	Ljava/lang/String;
    //   172: aload 15
    //   174: aload 14
    //   176: iconst_2
    //   177: invokeinterface 205 2 0
    //   182: putfield 211	com/keniu/security/traffic/ad:e	J
    //   185: aload 15
    //   187: aload 14
    //   189: iconst_3
    //   190: invokeinterface 205 2 0
    //   195: putfield 213	com/keniu/security/traffic/ad:f	J
    //   198: aload 15
    //   200: aload 14
    //   202: iconst_4
    //   203: invokeinterface 205 2 0
    //   208: putfield 219	com/keniu/security/traffic/ad:i	J
    //   211: aload 15
    //   213: aload 14
    //   215: iconst_5
    //   216: invokeinterface 205 2 0
    //   221: putfield 221	com/keniu/security/traffic/ad:j	J
    //   224: aload 15
    //   226: lload 5
    //   228: putfield 223	com/keniu/security/traffic/ad:k	J
    //   231: aload 14
    //   233: ifnull +102 -> 335
    //   236: aload 14
    //   238: invokeinterface 226 1 0
    //   243: aload 15
    //   245: astore 11
    //   247: aload 11
    //   249: areturn
    //   250: astore 10
    //   252: aconst_null
    //   253: astore 11
    //   255: aconst_null
    //   256: astore 12
    //   258: aload 12
    //   260: ifnull -13 -> 247
    //   263: aload 12
    //   265: invokeinterface 226 1 0
    //   270: goto -23 -> 247
    //   273: astore 8
    //   275: aconst_null
    //   276: astore 9
    //   278: aload 9
    //   280: ifnull +10 -> 290
    //   283: aload 9
    //   285: invokeinterface 226 1 0
    //   290: aload 8
    //   292: athrow
    //   293: astore 17
    //   295: aload 14
    //   297: astore 9
    //   299: aload 17
    //   301: astore 8
    //   303: goto -25 -> 278
    //   306: astore 16
    //   308: aload 14
    //   310: astore 12
    //   312: aconst_null
    //   313: astore 11
    //   315: goto -57 -> 258
    //   318: astore 18
    //   320: aload 15
    //   322: astore 19
    //   324: aload 14
    //   326: astore 12
    //   328: aload 19
    //   330: astore 11
    //   332: goto -74 -> 258
    //   335: aload 15
    //   337: astore 11
    //   339: goto -92 -> 247
    //   342: aconst_null
    //   343: astore 15
    //   345: goto -114 -> 231
    //
    // Exception table:
    //   from	to	target	type
    //   6	135	250	java/lang/Exception
    //   6	135	273	finally
    //   140	160	293	finally
    //   160	231	293	finally
    //   140	160	306	java/lang/Exception
    //   160	231	318	java/lang/Exception
  }

  public static z a(Context paramContext)
  {
    return new z(paramContext);
  }

  private void a(long paramLong)
  {
    if ((o != 0L) && (o == paramLong));
    while (true)
    {
      return;
      if (p)
      {
        String str2 = "DELETE FROM lastRecord WHERE updateDate < " + paramLong + " AND " + "userID" + " < " + 1000000;
        this.l.execSQL(str2);
        String str3 = "DELETE FROM daySoftRecord WHERE updateDate < " + paramLong;
        this.l.execSQL(str3);
      }
      String str1 = "DELETE FROM dayRecord WHERE updateDate < " + paramLong;
      this.l.execSQL(str1);
      o = paramLong;
    }
  }

  // ERROR //
  private void a(long paramLong1, long paramLong2, long paramLong3)
  {
    // Byte code:
    //   0: lconst_0
    //   1: lstore 7
    //   3: lload 5
    //   5: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   8: lstore 9
    //   10: ldc2_w 255
    //   13: lload 9
    //   15: ladd
    //   16: lstore 11
    //   18: aload_0
    //   19: lload_3
    //   20: lload 11
    //   22: invokevirtual 259	com/keniu/security/traffic/z:b	(JJ)Lcom/keniu/security/traffic/ac;
    //   25: astore 37
    //   27: aload 37
    //   29: ifnull +34 -> 63
    //   32: aload 37
    //   34: getfield 263	com/keniu/security/traffic/ac:b	J
    //   37: lstore 38
    //   39: aload 37
    //   41: getfield 264	com/keniu/security/traffic/ac:c	J
    //   44: lstore 40
    //   46: lload_1
    //   47: lload 40
    //   49: lload 38
    //   51: ladd
    //   52: lsub
    //   53: lstore 7
    //   55: lload 7
    //   57: lconst_0
    //   58: lcmp
    //   59: ifne +10 -> 69
    //   62: return
    //   63: lload_1
    //   64: lstore 7
    //   66: goto -11 -> 55
    //   69: lload 7
    //   71: lconst_0
    //   72: lcmp
    //   73: ifle +111 -> 184
    //   76: lconst_1
    //   77: lload_3
    //   78: ladd
    //   79: lstore 31
    //   81: aload_0
    //   82: ldc 48
    //   84: lload 31
    //   86: invokespecial 267	com/keniu/security/traffic/z:b	(IJ)Lcom/keniu/security/traffic/ac;
    //   89: astore 33
    //   91: aload 33
    //   93: ifnull +49 -> 142
    //   96: aload 33
    //   98: lload 7
    //   100: aload 33
    //   102: getfield 263	com/keniu/security/traffic/ac:b	J
    //   105: ladd
    //   106: putfield 263	com/keniu/security/traffic/ac:b	J
    //   109: aload 33
    //   111: astore 35
    //   113: iconst_0
    //   114: istore 36
    //   116: aload_0
    //   117: aload 35
    //   119: iload 36
    //   121: invokespecial 270	com/keniu/security/traffic/z:a	(Lcom/keniu/security/traffic/ac;Z)V
    //   124: aconst_null
    //   125: astore 14
    //   127: aload 14
    //   129: ifnull -67 -> 62
    //   132: aload 14
    //   134: invokeinterface 226 1 0
    //   139: goto -77 -> 62
    //   142: new 261	com/keniu/security/traffic/ac
    //   145: dup
    //   146: aload_0
    //   147: invokespecial 271	com/keniu/security/traffic/ac:<init>	(Lcom/keniu/security/traffic/z;)V
    //   150: astore 34
    //   152: aload 34
    //   154: ldc 48
    //   156: putfield 272	com/keniu/security/traffic/ac:a	I
    //   159: aload 34
    //   161: lload 7
    //   163: putfield 263	com/keniu/security/traffic/ac:b	J
    //   166: aload 34
    //   168: lconst_1
    //   169: lload_3
    //   170: ladd
    //   171: putfield 273	com/keniu/security/traffic/ac:d	J
    //   174: aload 34
    //   176: astore 35
    //   178: iconst_1
    //   179: istore 36
    //   181: goto -65 -> 116
    //   184: lload 7
    //   186: lconst_0
    //   187: lcmp
    //   188: ifge +469 -> 657
    //   191: aload_0
    //   192: ldc 48
    //   194: lconst_1
    //   195: lload_3
    //   196: ladd
    //   197: invokespecial 267	com/keniu/security/traffic/z:b	(IJ)Lcom/keniu/security/traffic/ac;
    //   200: astore 18
    //   202: aload 18
    //   204: ifnull +48 -> 252
    //   207: aload 18
    //   209: getfield 263	com/keniu/security/traffic/ac:b	J
    //   212: lconst_0
    //   213: lcmp
    //   214: ifeq +38 -> 252
    //   217: aload 18
    //   219: getfield 263	com/keniu/security/traffic/ac:b	J
    //   222: lload 7
    //   224: lneg
    //   225: lcmp
    //   226: iflt +295 -> 521
    //   229: aload 18
    //   231: lload 7
    //   233: aload 18
    //   235: getfield 263	com/keniu/security/traffic/ac:b	J
    //   238: ladd
    //   239: putfield 263	com/keniu/security/traffic/ac:b	J
    //   242: lconst_0
    //   243: lstore 7
    //   245: aload_0
    //   246: aload 18
    //   248: iconst_0
    //   249: invokespecial 270	com/keniu/security/traffic/z:a	(Lcom/keniu/security/traffic/ac;Z)V
    //   252: lload 7
    //   254: lstore 19
    //   256: lload 19
    //   258: lconst_0
    //   259: lcmp
    //   260: ifge +397 -> 657
    //   263: iconst_3
    //   264: anewarray 147	java/lang/String
    //   267: dup
    //   268: iconst_0
    //   269: ldc 38
    //   271: aastore
    //   272: dup
    //   273: iconst_1
    //   274: ldc 35
    //   276: aastore
    //   277: dup
    //   278: iconst_2
    //   279: ldc 29
    //   281: aastore
    //   282: astore 21
    //   284: bipush 6
    //   286: anewarray 275	java/lang/Object
    //   289: astore 22
    //   291: aload 22
    //   293: iconst_0
    //   294: ldc 86
    //   296: aastore
    //   297: aload 22
    //   299: iconst_1
    //   300: ldc 48
    //   302: invokestatic 281	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   305: aastore
    //   306: aload 22
    //   308: iconst_2
    //   309: ldc 29
    //   311: aastore
    //   312: aload 22
    //   314: iconst_3
    //   315: lload_3
    //   316: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   319: aastore
    //   320: aload 22
    //   322: iconst_4
    //   323: ldc 29
    //   325: aastore
    //   326: aload 22
    //   328: iconst_5
    //   329: lload 9
    //   331: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   334: aastore
    //   335: ldc_w 288
    //   338: aload 22
    //   340: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   343: astore 23
    //   345: new 261	com/keniu/security/traffic/ac
    //   348: dup
    //   349: aload_0
    //   350: invokespecial 271	com/keniu/security/traffic/ac:<init>	(Lcom/keniu/security/traffic/z;)V
    //   353: astore 24
    //   355: aload 24
    //   357: ldc 48
    //   359: putfield 272	com/keniu/security/traffic/ac:a	I
    //   362: aload_0
    //   363: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   366: ldc 32
    //   368: aload 21
    //   370: aload 23
    //   372: aconst_null
    //   373: aconst_null
    //   374: aconst_null
    //   375: ldc 29
    //   377: invokevirtual 295	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   380: astore 25
    //   382: aload 25
    //   384: astore 14
    //   386: aload 14
    //   388: ifnull -261 -> 127
    //   391: aload 14
    //   393: invokeinterface 184 1 0
    //   398: ifeq -271 -> 127
    //   401: lload 19
    //   403: lstore 28
    //   405: aload 24
    //   407: aload 14
    //   409: iconst_0
    //   410: invokeinterface 205 2 0
    //   415: putfield 263	com/keniu/security/traffic/ac:b	J
    //   418: aload 24
    //   420: aload 14
    //   422: iconst_1
    //   423: invokeinterface 205 2 0
    //   428: putfield 264	com/keniu/security/traffic/ac:c	J
    //   431: aload 24
    //   433: getfield 263	com/keniu/security/traffic/ac:b	J
    //   436: aload 24
    //   438: getfield 264	com/keniu/security/traffic/ac:c	J
    //   441: ladd
    //   442: lload 28
    //   444: lneg
    //   445: lcmp
    //   446: iflt +142 -> 588
    //   449: aload 24
    //   451: getfield 263	com/keniu/security/traffic/ac:b	J
    //   454: lload 28
    //   456: lneg
    //   457: lcmp
    //   458: iflt +102 -> 560
    //   461: aload 24
    //   463: lload 28
    //   465: aload 24
    //   467: getfield 263	com/keniu/security/traffic/ac:b	J
    //   470: ladd
    //   471: putfield 263	com/keniu/security/traffic/ac:b	J
    //   474: goto +189 -> 663
    //   477: aload 24
    //   479: aload 14
    //   481: iconst_2
    //   482: invokeinterface 205 2 0
    //   487: putfield 273	com/keniu/security/traffic/ac:d	J
    //   490: aload_0
    //   491: aload 24
    //   493: iconst_0
    //   494: invokespecial 270	com/keniu/security/traffic/z:a	(Lcom/keniu/security/traffic/ac;Z)V
    //   497: lload 28
    //   499: lconst_0
    //   500: lcmp
    //   501: ifeq -374 -> 127
    //   504: aload 14
    //   506: invokeinterface 298 1 0
    //   511: istore 30
    //   513: iload 30
    //   515: ifne -110 -> 405
    //   518: goto -391 -> 127
    //   521: lload 7
    //   523: aload 18
    //   525: getfield 263	com/keniu/security/traffic/ac:b	J
    //   528: ladd
    //   529: lstore 7
    //   531: aload 18
    //   533: lconst_0
    //   534: putfield 263	com/keniu/security/traffic/ac:b	J
    //   537: goto -292 -> 245
    //   540: astore 17
    //   542: aconst_null
    //   543: astore 14
    //   545: aload 14
    //   547: ifnull -485 -> 62
    //   550: aload 14
    //   552: invokeinterface 226 1 0
    //   557: goto -495 -> 62
    //   560: aload 24
    //   562: aload 24
    //   564: getfield 264	com/keniu/security/traffic/ac:c	J
    //   567: lload 28
    //   569: aload 24
    //   571: getfield 263	com/keniu/security/traffic/ac:b	J
    //   574: ladd
    //   575: ladd
    //   576: putfield 264	com/keniu/security/traffic/ac:c	J
    //   579: aload 24
    //   581: lconst_0
    //   582: putfield 263	com/keniu/security/traffic/ac:b	J
    //   585: goto +78 -> 663
    //   588: lload 28
    //   590: aload 24
    //   592: getfield 263	com/keniu/security/traffic/ac:b	J
    //   595: aload 24
    //   597: getfield 264	com/keniu/security/traffic/ac:c	J
    //   600: ladd
    //   601: ladd
    //   602: lstore 28
    //   604: aload 24
    //   606: lconst_0
    //   607: putfield 263	com/keniu/security/traffic/ac:b	J
    //   610: aload 24
    //   612: lconst_0
    //   613: putfield 264	com/keniu/security/traffic/ac:c	J
    //   616: goto -139 -> 477
    //   619: astore 26
    //   621: aload 14
    //   623: astore 16
    //   625: aload 26
    //   627: astore 15
    //   629: aload 16
    //   631: ifnull +10 -> 641
    //   634: aload 16
    //   636: invokeinterface 226 1 0
    //   641: aload 15
    //   643: athrow
    //   644: astore 15
    //   646: aconst_null
    //   647: astore 16
    //   649: goto -20 -> 629
    //   652: astore 13
    //   654: goto -599 -> 55
    //   657: aconst_null
    //   658: astore 14
    //   660: goto -533 -> 127
    //   663: lconst_0
    //   664: lstore 28
    //   666: goto -189 -> 477
    //   669: astore 27
    //   671: goto -126 -> 545
    //
    // Exception table:
    //   from	to	target	type
    //   81	124	540	java/lang/Exception
    //   142	382	540	java/lang/Exception
    //   521	537	540	java/lang/Exception
    //   391	513	619	finally
    //   560	616	619	finally
    //   81	124	644	finally
    //   142	382	644	finally
    //   521	537	644	finally
    //   18	46	652	java/lang/Exception
    //   391	513	669	java/lang/Exception
    //   560	616	669	java/lang/Exception
  }

  // ERROR //
  public static void a(Context paramContext, int paramInt)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 301	com/keniu/security/traffic/z:a	(Landroid/content/Context;)Lcom/keniu/security/traffic/z;
    //   4: astore_2
    //   5: aload_2
    //   6: iconst_0
    //   7: invokevirtual 304	com/keniu/security/traffic/z:b	(Z)Z
    //   10: ifne +4 -> 14
    //   13: return
    //   14: aload_2
    //   15: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   18: invokevirtual 307	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   21: iconst_3
    //   22: anewarray 275	java/lang/Object
    //   25: astore 5
    //   27: aload 5
    //   29: iconst_0
    //   30: ldc 32
    //   32: aastore
    //   33: aload 5
    //   35: iconst_1
    //   36: ldc 86
    //   38: aastore
    //   39: aload 5
    //   41: iconst_2
    //   42: iload_1
    //   43: invokestatic 281	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   46: aastore
    //   47: ldc_w 309
    //   50: aload 5
    //   52: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   55: astore 6
    //   57: aload_2
    //   58: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   61: aload 6
    //   63: invokevirtual 249	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   66: aload_2
    //   67: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   70: invokevirtual 312	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   73: aload_2
    //   74: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   77: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   80: aload_2
    //   81: invokevirtual 317	com/keniu/security/traffic/z:a	()V
    //   84: goto -71 -> 13
    //   87: astore 4
    //   89: aload_2
    //   90: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   93: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   96: aload_2
    //   97: invokevirtual 317	com/keniu/security/traffic/z:a	()V
    //   100: goto -87 -> 13
    //   103: astore_3
    //   104: aload_2
    //   105: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   108: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   111: aload_2
    //   112: invokevirtual 317	com/keniu/security/traffic/z:a	()V
    //   115: aload_3
    //   116: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   21	73	87	java/lang/Exception
    //   21	73	103	finally
  }

  public static void a(Context paramContext, long paramLong1, long paramLong2, long paramLong3, boolean paramBoolean)
  {
    z localz = a(paramContext);
    if (!localz.b(false))
      return;
    Date localDate;
    y localy;
    ac localac1;
    if (paramBoolean)
    {
      localDate = new Date();
      localy = y.a(paramContext);
      localac1 = localz.b(paramLong2, localy.b(localDate));
      if (localac1 == null)
        break label199;
    }
    label193: label199: for (long l1 = localac1.c + localac1.b; ; l1 = 0L)
    {
      a.a(paramContext, "6", ax.b(l1));
      a.a(paramContext, "7", ax.b(paramLong1));
      long l3;
      if (localy.v == 1)
        if (TrafficMainActivity.a(new Date(paramLong2), localDate))
          l3 = l1;
      while (true)
      {
        label121: if (l3 > 0L);
        for (long l2 = paramLong1 + l3; ; l2 = paramLong1)
        {
          localz.a(l2, paramLong2, paramLong3);
          localz.a();
          break;
          ac localac2 = localz.a(1000000, localDate.getTime());
          if (localac2 == null)
            break label193;
          l3 = localac2.c + localac2.b;
          break label121;
        }
        l3 = 0L;
      }
    }
  }

  public static void a(Context paramContext, Intent paramIntent)
  {
    NetworkInfo localNetworkInfo = (NetworkInfo)paramIntent.getParcelableExtra("networkInfo");
    if (localNetworkInfo == null);
    while ((localNetworkInfo.getType() != 0) && (localNetworkInfo.getType() != 1))
      return;
    while (true)
    {
      int i1;
      synchronized (u)
      {
        if (localNetworkInfo.getType() == 1)
        {
          if (!localNetworkInfo.isConnected())
            break label128;
          y localy = y.a(paramContext);
          localy.t = System.currentTimeMillis();
          localy.a(paramContext, 2131428290);
          i1 = 1;
          if (i1 != t)
          {
            t = i1;
            if (i1 != 0)
              f();
          }
        }
      }
      boolean bool = localNetworkInfo.isConnected();
      if (bool)
        i1 = 2;
      else
        label128: i1 = 0;
    }
  }

  private void a(ac paramac, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("userID", Integer.valueOf(paramac.a));
    localContentValues.put("sended", Long.valueOf(paramac.b));
    localContentValues.put("recved", Long.valueOf(paramac.c));
    localContentValues.put("updateDate", Long.valueOf(paramac.d));
    if (paramBoolean)
      this.l.insert("dayRecord", null, localContentValues);
    while (true)
    {
      return;
      this.l.replace("dayRecord", null, localContentValues);
    }
  }

  private void a(ad paramad, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("userID", Integer.valueOf(paramad.a));
    localContentValues.put("apkName", paramad.b);
    localContentValues.put("wifiSended", Long.valueOf(paramad.c));
    localContentValues.put("wifiRecved", Long.valueOf(paramad.d));
    localContentValues.put("wifiTotalSended", Long.valueOf(paramad.e));
    localContentValues.put("wifiTotalRecved", Long.valueOf(paramad.f));
    localContentValues.put("netSended", Long.valueOf(paramad.g));
    localContentValues.put("netRecved", Long.valueOf(paramad.h));
    localContentValues.put("netTotalSended", Long.valueOf(paramad.i));
    localContentValues.put("netTotalRecved", Long.valueOf(paramad.j));
    localContentValues.put("updateDate", Long.valueOf(paramad.k));
    if (paramBoolean)
      this.l.insert("lastRecord", null, localContentValues);
    while (true)
    {
      return;
      this.l.replace("lastRecord", null, localContentValues);
    }
  }

  private void a(Date paramDate)
  {
    ad localad1 = new ad(this);
    localad1.k = y.a(paramDate.getTime());
    Intent localIntent = new Intent("android.intent.action.MAIN", null);
    localIntent.addCategory("android.intent.category.LAUNCHER");
    Iterator localIterator = this.j.getPackageManager().queryIntentActivities(localIntent, 0).iterator();
    long l1;
    long l2;
    Object localObject1;
    boolean bool;
    long l4;
    long l5;
    while (true)
      if (localIterator.hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
        localad1.a = localResolveInfo.activityInfo.applicationInfo.uid;
        localad1.b = localResolveInfo.activityInfo.applicationInfo.packageName;
        localad1.g = M.a(localad1.a);
        localad1.h = M.b(localad1.a);
        if ((localad1.g > 0L) || (localad1.h > 0L))
        {
          l1 = 0L;
          l2 = 0L;
          localObject1 = a(localad1.a, localad1.b);
          if (localObject1 != null)
          {
            bool = false;
            if ((((ad)localObject1).h == -1L) || (((ad)localObject1).g == -1L))
              break label716;
            l1 = localad1.g - ((ad)localObject1).g;
            l2 = localad1.h - ((ad)localObject1).h;
            if ((l1 == 0L) && (l2 == 0L))
              continue;
            if (l1 < 0L)
              l1 = localad1.g;
            if (l2 >= 0L)
              break label716;
            long l7 = localad1.h;
            l4 = l1;
            l5 = l7;
          }
        }
      }
    while (true)
    {
      label285: ((ad)localObject1).g = localad1.g;
      ((ad)localObject1).h = localad1.h;
      label336: Object localObject2;
      int i1;
      if (t == 2)
      {
        ((ad)localObject1).i = (l4 + ((ad)localObject1).i);
        ((ad)localObject1).j = (l5 + ((ad)localObject1).j);
        ((ad)localObject1).k = localad1.k;
        a((ad)localObject1, bool);
        localObject2 = a(localad1.a, localad1.b, localad1.k);
        if (localObject2 != null)
          break label664;
        ad localad3 = new ad(this);
        localad3.a = localad1.a;
        localad3.b = localad1.b;
        i1 = 1;
        localObject2 = localad3;
        label411: if (t != 2)
          break label670;
        ((ad)localObject2).i = (l4 + ((ad)localObject2).i);
        ((ad)localObject2).j = (l5 + ((ad)localObject2).j);
      }
      ContentValues localContentValues;
      while (true)
      {
        ((ad)localObject2).k = localad1.k;
        localContentValues = new ContentValues();
        localContentValues.put("userID", Integer.valueOf(((ad)localObject2).a));
        localContentValues.put("apkName", ((ad)localObject2).b);
        localContentValues.put("wifiTotalSended", Long.valueOf(((ad)localObject2).e));
        localContentValues.put("wifiTotalRecved", Long.valueOf(((ad)localObject2).f));
        localContentValues.put("netTotalSended", Long.valueOf(((ad)localObject2).i));
        localContentValues.put("netTotalRecved", Long.valueOf(((ad)localObject2).j));
        localContentValues.put("updateDate", Long.valueOf(((ad)localObject2).k));
        if (i1 == 0)
          break label699;
        this.l.insert("daySoftRecord", null, localContentValues);
        break;
        ad localad2 = new ad(this);
        localad2.a = localad1.a;
        localad2.b = localad1.b;
        long l3 = l2;
        l4 = l1;
        l5 = l3;
        bool = true;
        localObject1 = localad2;
        break label285;
        ((ad)localObject1).e = (l4 + ((ad)localObject1).e);
        ((ad)localObject1).f = (l5 + ((ad)localObject1).f);
        break label336;
        label664: i1 = 0;
        break label411;
        label670: ((ad)localObject2).e = (l4 + ((ad)localObject2).e);
        ((ad)localObject2).f = (l5 + ((ad)localObject2).f);
      }
      label699: this.l.replace("daySoftRecord", null, localContentValues);
      break;
      return;
      label716: long l6 = l2;
      l4 = l1;
      l5 = l6;
      bool = false;
    }
  }

  public static void a(boolean paramBoolean)
  {
    n = paramBoolean;
  }

  private static boolean a(Context paramContext, String paramString)
  {
    try
    {
      PackageInfo localPackageInfo = paramContext.getPackageManager().getPackageInfo(paramString, 4096);
      if ((localPackageInfo != null) && (localPackageInfo.requestedPermissions != null))
      {
        String[] arrayOfString = localPackageInfo.requestedPermissions;
        for (int i1 = 0; i1 < arrayOfString.length; i1++)
        {
          boolean bool2 = arrayOfString[i1].equals("android.permission.INTERNET");
          if (bool2)
          {
            bool1 = true;
            return bool1;
          }
        }
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      while (true)
      {
        localNameNotFoundException.printStackTrace();
        boolean bool1 = false;
      }
    }
  }

  private boolean a(ad paramad)
  {
    long l1 = 0L;
    long l2 = 0L;
    long l3 = 0L;
    long l4 = 0L;
    ad localad1 = a(paramad.a, paramad.b);
    boolean bool3;
    long l5;
    Object localObject1;
    boolean bool1;
    long l7;
    long l8;
    if (localad1 != null)
    {
      if ((localad1.d == -1L) || (localad1.c == -1L) || (localad1.h == -1L) || (localad1.g == -1L))
        break label494;
      l1 = paramad.c - localad1.c;
      l2 = paramad.d - localad1.d;
      l3 = paramad.g - localad1.g;
      l4 = paramad.h - localad1.h;
      if ((l1 == 0L) && (l2 == 0L) && (l3 == 0L) && (l4 == 0L))
      {
        bool3 = false;
        return bool3;
      }
      if (l1 < 0L)
        l1 = paramad.c;
      if (l2 < 0L)
        l2 = paramad.d;
      if (l3 < 0L)
        l3 = paramad.g;
      if (l4 >= 0L)
        break label494;
      long l10 = paramad.h;
      l5 = l1;
      localObject1 = localad1;
      bool1 = false;
      long l11 = l2;
      l7 = l10;
      l8 = l11;
    }
    while (true)
    {
      label230: ((ad)localObject1).c = paramad.c;
      ((ad)localObject1).d = paramad.d;
      ((ad)localObject1).g = paramad.g;
      ((ad)localObject1).h = paramad.h;
      ((ad)localObject1).e = (l5 + ((ad)localObject1).e);
      ((ad)localObject1).f = (l8 + ((ad)localObject1).f);
      ((ad)localObject1).i = (l3 + ((ad)localObject1).i);
      ((ad)localObject1).j = (l7 + ((ad)localObject1).j);
      ((ad)localObject1).k = paramad.k;
      a((ad)localObject1, bool1);
      Object localObject2 = a(paramad.a, paramad.k);
      boolean bool2;
      if (localObject2 == null)
      {
        ac localac = new ac(this);
        localac.a = paramad.a;
        localac.d = paramad.k;
        bool2 = true;
        localObject2 = localac;
      }
      while (true)
      {
        ((ac)localObject2).b += l3 + l5;
        ((ac)localObject2).c += l7 + l8;
        a((ac)localObject2, bool2);
        bool3 = true;
        break;
        ad localad2 = new ad(this);
        localad2.a = paramad.a;
        localad2.b = paramad.b;
        l5 = l1;
        localObject1 = localad2;
        bool1 = true;
        long l6 = l2;
        l7 = l4;
        l8 = l6;
        break label230;
        bool2 = false;
      }
      label494: l5 = l1;
      localObject1 = localad1;
      long l9 = l2;
      l7 = l4;
      l8 = l9;
      bool1 = false;
    }
  }

  public static long b()
  {
    long l1 = 0L;
    synchronized (u)
    {
      if (u.length() != 0)
        l1 = M.b(u);
      return l1;
    }
  }

  // ERROR //
  private ac b(int paramInt, long paramLong)
  {
    // Byte code:
    //   0: iconst_2
    //   1: anewarray 147	java/lang/String
    //   4: dup
    //   5: iconst_0
    //   6: ldc 38
    //   8: aastore
    //   9: dup
    //   10: iconst_1
    //   11: ldc 35
    //   13: aastore
    //   14: astore 4
    //   16: new 149	java/lang/StringBuilder
    //   19: dup
    //   20: invokespecial 150	java/lang/StringBuilder:<init>	()V
    //   23: ldc 152
    //   25: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   28: iload_1
    //   29: invokevirtual 159	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   32: ldc 161
    //   34: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   37: ldc 29
    //   39: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   42: ldc 234
    //   44: invokevirtual 156	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   47: lload_2
    //   48: invokevirtual 237	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   51: invokevirtual 169	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   54: astore 10
    //   56: aload_0
    //   57: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   60: ldc 32
    //   62: aload 4
    //   64: aload 10
    //   66: aconst_null
    //   67: aconst_null
    //   68: aconst_null
    //   69: aconst_null
    //   70: ldc 173
    //   72: invokevirtual 179	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   75: astore 11
    //   77: aload 11
    //   79: ifnull +172 -> 251
    //   82: aload 11
    //   84: invokeinterface 184 1 0
    //   89: ifeq +162 -> 251
    //   92: new 261	com/keniu/security/traffic/ac
    //   95: dup
    //   96: aload_0
    //   97: invokespecial 271	com/keniu/security/traffic/ac:<init>	(Lcom/keniu/security/traffic/z;)V
    //   100: astore 12
    //   102: aload 12
    //   104: iload_1
    //   105: putfield 272	com/keniu/security/traffic/ac:a	I
    //   108: aload 12
    //   110: aload 11
    //   112: iconst_0
    //   113: invokeinterface 205 2 0
    //   118: putfield 263	com/keniu/security/traffic/ac:b	J
    //   121: aload 12
    //   123: aload 11
    //   125: iconst_1
    //   126: invokeinterface 205 2 0
    //   131: putfield 264	com/keniu/security/traffic/ac:c	J
    //   134: aload 12
    //   136: lload_2
    //   137: putfield 273	com/keniu/security/traffic/ac:d	J
    //   140: aload 11
    //   142: ifnull +102 -> 244
    //   145: aload 11
    //   147: invokeinterface 226 1 0
    //   152: aload 12
    //   154: astore 8
    //   156: aload 8
    //   158: areturn
    //   159: astore 7
    //   161: aconst_null
    //   162: astore 8
    //   164: aconst_null
    //   165: astore 9
    //   167: aload 9
    //   169: ifnull -13 -> 156
    //   172: aload 9
    //   174: invokeinterface 226 1 0
    //   179: goto -23 -> 156
    //   182: astore 5
    //   184: aconst_null
    //   185: astore 6
    //   187: aload 6
    //   189: ifnull +10 -> 199
    //   192: aload 6
    //   194: invokeinterface 226 1 0
    //   199: aload 5
    //   201: athrow
    //   202: astore 14
    //   204: aload 11
    //   206: astore 6
    //   208: aload 14
    //   210: astore 5
    //   212: goto -25 -> 187
    //   215: astore 13
    //   217: aload 11
    //   219: astore 9
    //   221: aconst_null
    //   222: astore 8
    //   224: goto -57 -> 167
    //   227: astore 15
    //   229: aload 12
    //   231: astore 16
    //   233: aload 11
    //   235: astore 9
    //   237: aload 16
    //   239: astore 8
    //   241: goto -74 -> 167
    //   244: aload 12
    //   246: astore 8
    //   248: goto -92 -> 156
    //   251: aconst_null
    //   252: astore 12
    //   254: goto -114 -> 140
    //
    // Exception table:
    //   from	to	target	type
    //   0	77	159	java/lang/Exception
    //   0	77	182	finally
    //   82	102	202	finally
    //   102	140	202	finally
    //   82	102	215	java/lang/Exception
    //   102	140	227	java/lang/Exception
  }

  public static void b(Context paramContext)
  {
    ConnectivityManager localConnectivityManager;
    NetworkInfo localNetworkInfo1;
    synchronized (u)
    {
      localConnectivityManager = (ConnectivityManager)paramContext.getSystemService("connectivity");
      if (localConnectivityManager == null)
        return;
      localNetworkInfo1 = localConnectivityManager.getNetworkInfo(0);
      if (localNetworkInfo1 != null);
    }
    if (localNetworkInfo1.getState() == NetworkInfo.State.CONNECTED)
      t = 2;
    while (true)
    {
      if (t != 0)
        f();
      break;
      NetworkInfo localNetworkInfo2 = localConnectivityManager.getNetworkInfo(1);
      if (localNetworkInfo2 == null)
        break;
      if (localNetworkInfo2.getState() == NetworkInfo.State.CONNECTED)
        t = 1;
    }
  }

  private void b(ad paramad, boolean paramBoolean)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("userID", Integer.valueOf(paramad.a));
    localContentValues.put("apkName", paramad.b);
    localContentValues.put("wifiTotalSended", Long.valueOf(paramad.e));
    localContentValues.put("wifiTotalRecved", Long.valueOf(paramad.f));
    localContentValues.put("netTotalSended", Long.valueOf(paramad.i));
    localContentValues.put("netTotalRecved", Long.valueOf(paramad.j));
    localContentValues.put("updateDate", Long.valueOf(paramad.k));
    if (paramBoolean)
      this.l.insert("daySoftRecord", null, localContentValues);
    while (true)
    {
      return;
      this.l.replace("daySoftRecord", null, localContentValues);
    }
  }

  private void b(Date paramDate)
  {
    ad localad1 = new ad(this);
    localad1.k = y.a(paramDate.getTime());
    long l1 = M.b(u);
    long l2 = M.a(u);
    long l3;
    long l4;
    long l5;
    long l6;
    Object localObject;
    boolean bool1;
    long l8;
    long l9;
    long l11;
    long l12;
    if ((l1 > 0L) || (l2 > 0L))
    {
      if (t != 2)
        break label528;
      localad1.a = 1000000;
      localad1.b = "3G2G";
      localad1.c = 0L;
      localad1.d = 0L;
      localad1.g = l1;
      localad1.h = l2;
      l3 = 0L;
      l4 = 0L;
      l5 = 0L;
      l6 = 0L;
      localObject = a(localad1.a, localad1.b);
      if (localObject == null)
        break label564;
      bool1 = false;
      if ((((ad)localObject).d == -1L) || (((ad)localObject).c == -1L) || (((ad)localObject).h == -1L) || (((ad)localObject).g == -1L))
        break label636;
      l3 = localad1.c - ((ad)localObject).c;
      l4 = localad1.d - ((ad)localObject).d;
      l5 = localad1.g - ((ad)localObject).g;
      l6 = localad1.h - ((ad)localObject).h;
      if ((l3 != 0L) || (l4 != 0L) || (l5 != 0L) || (l6 != 0L))
      {
        if (l3 < 0L)
          l3 = localad1.c;
        if (l4 < 0L)
          l4 = localad1.d;
        if (l5 < 0L)
          l5 = localad1.g;
        if (l6 >= 0L)
          break label636;
        long l15 = localad1.h;
        l8 = l3;
        l9 = l15;
        long l16 = l4;
        l11 = l5;
        l12 = l16;
      }
    }
    while (true)
    {
      label328: ((ad)localObject).c = localad1.c;
      ((ad)localObject).d = localad1.d;
      ((ad)localObject).g = localad1.g;
      ((ad)localObject).h = localad1.h;
      ((ad)localObject).e = (l8 + ((ad)localObject).e);
      ((ad)localObject).f = (l12 + ((ad)localObject).f);
      ((ad)localObject).i = (l11 + ((ad)localObject).i);
      ((ad)localObject).j = (l9 + ((ad)localObject).j);
      ((ad)localObject).k = localad1.k;
      a((ad)localObject, bool1);
      ac localac1 = a(localad1.a, localad1.k);
      boolean bool2;
      ac localac2;
      if (localac1 == null)
      {
        bool2 = true;
        ac localac3 = new ac(this);
        localac3.a = localad1.a;
        localac3.d = localad1.k;
        localac2 = localac3;
      }
      while (true)
      {
        localac2.b += l11 + l8;
        localac2.c += l9 + l12;
        a(localac2, bool2);
        return;
        label528: localad1.a = 1000001;
        localad1.b = "wifi";
        localad1.c = l1;
        localad1.d = l2;
        localad1.g = 0L;
        localad1.h = 0L;
        break;
        label564: ad localad2 = new ad(this);
        localad2.a = localad1.a;
        localad2.b = localad1.b;
        long l7 = l6;
        l8 = l3;
        l9 = l7;
        long l10 = l4;
        l11 = l5;
        l12 = l10;
        bool1 = true;
        localObject = localad2;
        break label328;
        localac2 = localac1;
        bool2 = false;
      }
      label636: long l13 = l6;
      l8 = l3;
      l9 = l13;
      long l14 = l4;
      l11 = l5;
      l12 = l14;
      bool1 = false;
    }
  }

  private boolean b(ad paramad)
  {
    long l1 = 0L;
    long l2 = 0L;
    ad localad1 = a(paramad.a, paramad.b);
    boolean bool2;
    long l3;
    Object localObject1;
    boolean bool1;
    if (localad1 != null)
    {
      if ((localad1.h == -1L) || (localad1.g == -1L))
        break label548;
      l1 = paramad.g - localad1.g;
      l2 = paramad.h - localad1.h;
      if ((l1 == 0L) && (l2 == 0L))
      {
        bool2 = false;
        return bool2;
      }
      if (l1 < 0L)
        l1 = paramad.g;
      if (l2 >= 0L)
        break label548;
      l2 = paramad.h;
      l3 = l1;
      localObject1 = localad1;
      bool1 = false;
    }
    while (true)
    {
      label124: ((ad)localObject1).g = paramad.g;
      ((ad)localObject1).h = paramad.h;
      label175: Object localObject2;
      int i1;
      label250: ContentValues localContentValues;
      if (t == 2)
      {
        ((ad)localObject1).i = (l3 + ((ad)localObject1).i);
        ((ad)localObject1).j = (l2 + ((ad)localObject1).j);
        ((ad)localObject1).k = paramad.k;
        a((ad)localObject1, bool1);
        localObject2 = a(paramad.a, paramad.b, paramad.k);
        if (localObject2 != null)
          break label497;
        ad localad3 = new ad(this);
        localad3.a = paramad.a;
        localad3.b = paramad.b;
        i1 = 1;
        localObject2 = localad3;
        if (t != 2)
          break label503;
        ((ad)localObject2).i = (l3 + ((ad)localObject2).i);
        ((ad)localObject2).j = (l2 + ((ad)localObject2).j);
        label283: ((ad)localObject2).k = paramad.k;
        localContentValues = new ContentValues();
        localContentValues.put("userID", Integer.valueOf(((ad)localObject2).a));
        localContentValues.put("apkName", ((ad)localObject2).b);
        localContentValues.put("wifiTotalSended", Long.valueOf(((ad)localObject2).e));
        localContentValues.put("wifiTotalRecved", Long.valueOf(((ad)localObject2).f));
        localContentValues.put("netTotalSended", Long.valueOf(((ad)localObject2).i));
        localContentValues.put("netTotalRecved", Long.valueOf(((ad)localObject2).j));
        localContentValues.put("updateDate", Long.valueOf(((ad)localObject2).k));
        if (i1 == 0)
          break label532;
        this.l.insert("daySoftRecord", null, localContentValues);
      }
      while (true)
      {
        bool2 = true;
        break;
        ad localad2 = new ad(this);
        localad2.a = paramad.a;
        localad2.b = paramad.b;
        l3 = l1;
        localObject1 = localad2;
        bool1 = true;
        break label124;
        ((ad)localObject1).e = (l3 + ((ad)localObject1).e);
        ((ad)localObject1).f = (l2 + ((ad)localObject1).f);
        break label175;
        label497: i1 = 0;
        break label250;
        label503: ((ad)localObject2).e = (l3 + ((ad)localObject2).e);
        ((ad)localObject2).f = (l2 + ((ad)localObject2).f);
        break label283;
        label532: this.l.replace("daySoftRecord", null, localContentValues);
      }
      label548: l3 = l1;
      localObject1 = localad1;
      bool1 = false;
    }
  }

  public static long c()
  {
    long l1 = 0L;
    synchronized (u)
    {
      if (u.length() != 0)
        l1 = M.a(u);
      return l1;
    }
  }

  // ERROR //
  public static void c(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 301	com/keniu/security/traffic/z:a	(Landroid/content/Context;)Lcom/keniu/security/traffic/z;
    //   4: astore_1
    //   5: aload_1
    //   6: iconst_0
    //   7: invokevirtual 304	com/keniu/security/traffic/z:b	(Z)Z
    //   10: ifne +4 -> 14
    //   13: return
    //   14: aload_1
    //   15: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ldc_w 538
    //   21: invokevirtual 249	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   24: aload_1
    //   25: invokevirtual 317	com/keniu/security/traffic/z:a	()V
    //   28: goto -15 -> 13
    //   31: astore_3
    //   32: aload_3
    //   33: athrow
    //   34: astore_2
    //   35: goto -11 -> 24
    //
    // Exception table:
    //   from	to	target	type
    //   14	24	31	finally
    //   14	24	34	java/lang/Exception
  }

  public static void d(Context paramContext)
  {
    z localz = a(paramContext);
    if (!localz.g());
    while (true)
    {
      return;
      y localy = y.a(paramContext);
      Date localDate = new Date();
      long l1 = localy.a(localDate);
      try
      {
        localz.a(l1);
        String str = "UPDATE lastRecord SET wifiRecved = 0, wifiSended = 0, netRecved = 0, netSended = 0 WHERE updateDate < " + (localDate.getTime() - SystemClock.elapsedRealtime());
        localz.l.execSQL(str);
        label77: localz.a();
      }
      catch (Exception localException)
      {
        break label77;
      }
    }
  }

  public static boolean d()
  {
    try
    {
      boolean bool2 = new File("/proc/uid_stat").exists();
      bool1 = bool2;
      return bool1;
    }
    catch (Exception localException)
    {
      while (true)
        boolean bool1 = false;
    }
  }

  // ERROR //
  public static void e(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokestatic 301	com/keniu/security/traffic/z:a	(Landroid/content/Context;)Lcom/keniu/security/traffic/z;
    //   4: astore_1
    //   5: aload_1
    //   6: iconst_0
    //   7: invokevirtual 304	com/keniu/security/traffic/z:b	(Z)Z
    //   10: ifne +4 -> 14
    //   13: return
    //   14: aload_1
    //   15: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   18: invokevirtual 307	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   21: aload_1
    //   22: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   25: ldc 83
    //   27: aconst_null
    //   28: aconst_null
    //   29: invokevirtual 564	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   32: pop
    //   33: aload_1
    //   34: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   37: ldc 32
    //   39: aconst_null
    //   40: aconst_null
    //   41: invokevirtual 564	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   44: pop
    //   45: aload_1
    //   46: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   49: ldc 41
    //   51: aconst_null
    //   52: aconst_null
    //   53: invokevirtual 564	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   56: pop
    //   57: aload_1
    //   58: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   61: invokevirtual 312	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   64: aload_1
    //   65: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   68: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   71: aload_1
    //   72: invokevirtual 317	com/keniu/security/traffic/z:a	()V
    //   75: goto -62 -> 13
    //   78: astore_3
    //   79: aload_1
    //   80: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   83: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   86: goto -15 -> 71
    //   89: astore_2
    //   90: aload_1
    //   91: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   94: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   97: aload_2
    //   98: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   21	64	78	java/lang/Exception
    //   21	64	89	finally
  }

  private static boolean e()
  {
    return n;
  }

  private static void f()
  {
    try
    {
      u = "";
      BufferedReader localBufferedReader = new BufferedReader(new FileReader("/proc/net/route"));
      if (localBufferedReader.readLine() != null)
      {
        String str;
        for (Object localObject = localBufferedReader.readLine(); localObject != null; localObject = str)
        {
          String[] arrayOfString = ((String)localObject).split("\t");
          if ((arrayOfString != null) && (arrayOfString.length >= 4))
          {
            if (arrayOfString[3].compareTo("0003") == 0)
            {
              u = arrayOfString[0];
              break;
            }
            if (arrayOfString[3].compareTo("0001") == 0)
              u = arrayOfString[0];
          }
          str = localBufferedReader.readLine();
        }
      }
    }
    catch (Exception localException)
    {
    }
  }

  public static Vector g(Context paramContext)
  {
    while (true)
    {
      Object localObject2;
      Vector localVector;
      try
      {
        List localList = ((ActivityManager)paramContext.getSystemService("activity")).getRunningAppProcesses();
        if (localList != null)
        {
          int i1 = localList.size();
          if (i1 != 0);
        }
        else
        {
          localObject2 = null;
          return localObject2;
        }
        localVector = new Vector();
        PackageManager localPackageManager = paramContext.getPackageManager();
        Iterator localIterator = localList.iterator();
        if (localIterator.hasNext())
        {
          String str = ((ActivityManager.RunningAppProcessInfo)localIterator.next()).processName;
          try
          {
            PackageInfo localPackageInfo = localPackageManager.getPackageInfo(str, 1);
            if (!a(paramContext, str))
              continue;
            localVector.add(localPackageInfo);
          }
          catch (PackageManager.NameNotFoundException localNameNotFoundException)
          {
            localNameNotFoundException.printStackTrace();
          }
          continue;
        }
      }
      finally
      {
      }
      int i2 = localVector.size();
      if (i2 == 0)
        localObject2 = null;
      else
        localObject2 = localVector;
    }
  }

  private boolean g()
  {
    try
    {
      this.k = false;
      if (this.k);
      for (this.l = getReadableDatabase(); this.l != null; this.l = getWritableDatabase())
      {
        bool = true;
        return bool;
      }
    }
    catch (SQLException localSQLException1)
    {
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          this.j.deleteDatabase("mosecurity_traffic.db");
          if (this.k)
            this.l = getReadableDatabase();
          else
            this.l = getWritableDatabase();
        }
        catch (Exception localException2)
        {
          continue;
          boolean bool = false;
          continue;
          localException1 = localException1;
        }
        catch (SQLException localSQLException2)
        {
        }
    }
  }

  // ERROR //
  private void h()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   4: ldc_w 538
    //   7: invokevirtual 249	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   10: return
    //   11: astore_2
    //   12: aload_2
    //   13: athrow
    //   14: astore_1
    //   15: goto -5 -> 10
    //
    // Exception table:
    //   from	to	target	type
    //   0	10	11	finally
    //   0	10	14	java/lang/Exception
  }

  private void h(Context paramContext)
  {
    y localy = y.a(paramContext);
    Date localDate = new Date();
    long l1 = localy.a(localDate);
    try
    {
      a(l1);
      String str = "UPDATE lastRecord SET wifiRecved = 0, wifiSended = 0, netRecved = 0, netSended = 0 WHERE updateDate < " + (localDate.getTime() - SystemClock.elapsedRealtime());
      this.l.execSQL(str);
      label64: return;
    }
    catch (Exception localException)
    {
      break label64;
    }
  }

  public final ac a(int paramInt, long paramLong)
  {
    return b(paramInt, y.a(paramLong));
  }

  // ERROR //
  public final u a(long paramLong, int paramInt, String paramString)
  {
    // Byte code:
    //   0: lload_1
    //   1: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   4: lstore 10
    //   6: bipush 11
    //   8: anewarray 275	java/lang/Object
    //   11: astore 12
    //   13: aload 12
    //   15: iconst_0
    //   16: ldc 14
    //   18: aastore
    //   19: aload 12
    //   21: iconst_1
    //   22: ldc 11
    //   24: aastore
    //   25: aload 12
    //   27: iconst_2
    //   28: ldc 26
    //   30: aastore
    //   31: aload 12
    //   33: iconst_3
    //   34: ldc 23
    //   36: aastore
    //   37: aload 12
    //   39: iconst_4
    //   40: ldc 41
    //   42: aastore
    //   43: aload 12
    //   45: iconst_5
    //   46: ldc 86
    //   48: aastore
    //   49: aload 12
    //   51: bipush 6
    //   53: iload_3
    //   54: invokestatic 281	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   57: aastore
    //   58: aload 12
    //   60: bipush 7
    //   62: ldc 89
    //   64: aastore
    //   65: aload 12
    //   67: bipush 8
    //   69: aload 4
    //   71: aastore
    //   72: aload 12
    //   74: bipush 9
    //   76: ldc 29
    //   78: aastore
    //   79: aload 12
    //   81: bipush 10
    //   83: lload 10
    //   85: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   88: aastore
    //   89: ldc_w 635
    //   92: aload 12
    //   94: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   97: astore 13
    //   99: aload_0
    //   100: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   103: aload 13
    //   105: aconst_null
    //   106: invokevirtual 639	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   109: astore 14
    //   111: aload 14
    //   113: ifnull +184 -> 297
    //   116: aload 14
    //   118: invokeinterface 184 1 0
    //   123: ifeq +174 -> 297
    //   126: new 641	com/keniu/security/traffic/u
    //   129: dup
    //   130: invokespecial 642	com/keniu/security/traffic/u:<init>	()V
    //   133: astore 15
    //   135: aload 15
    //   137: aload 14
    //   139: iconst_0
    //   140: invokeinterface 205 2 0
    //   145: putfield 643	com/keniu/security/traffic/u:b	J
    //   148: aload 15
    //   150: aload 14
    //   152: iconst_1
    //   153: invokeinterface 205 2 0
    //   158: putfield 645	com/keniu/security/traffic/u:a	J
    //   161: aload 14
    //   163: ifnull +127 -> 290
    //   166: aload 14
    //   168: invokeinterface 226 1 0
    //   173: aload 15
    //   175: astore 9
    //   177: aload 9
    //   179: areturn
    //   180: astore 7
    //   182: aconst_null
    //   183: astore 6
    //   185: aconst_null
    //   186: astore 8
    //   188: aload 7
    //   190: invokevirtual 646	java/lang/Exception:printStackTrace	()V
    //   193: aload 6
    //   195: ifnull +88 -> 283
    //   198: aload 6
    //   200: invokeinterface 226 1 0
    //   205: aload 8
    //   207: astore 9
    //   209: goto -32 -> 177
    //   212: astore 5
    //   214: aconst_null
    //   215: astore 6
    //   217: aload 6
    //   219: ifnull +10 -> 229
    //   222: aload 6
    //   224: invokeinterface 226 1 0
    //   229: aload 5
    //   231: athrow
    //   232: astore 17
    //   234: aload 14
    //   236: astore 6
    //   238: aload 17
    //   240: astore 5
    //   242: goto -25 -> 217
    //   245: astore 5
    //   247: goto -30 -> 217
    //   250: astore 16
    //   252: aload 16
    //   254: astore 7
    //   256: aload 14
    //   258: astore 6
    //   260: aconst_null
    //   261: astore 8
    //   263: goto -75 -> 188
    //   266: astore 18
    //   268: aload 15
    //   270: astore 8
    //   272: aload 14
    //   274: astore 6
    //   276: aload 18
    //   278: astore 7
    //   280: goto -92 -> 188
    //   283: aload 8
    //   285: astore 9
    //   287: goto -110 -> 177
    //   290: aload 15
    //   292: astore 9
    //   294: goto -117 -> 177
    //   297: aconst_null
    //   298: astore 15
    //   300: goto -139 -> 161
    //
    // Exception table:
    //   from	to	target	type
    //   0	111	180	java/lang/Exception
    //   0	111	212	finally
    //   116	135	232	finally
    //   135	161	232	finally
    //   188	193	245	finally
    //   116	135	250	java/lang/Exception
    //   135	161	266	java/lang/Exception
  }

  // ERROR //
  public final Vector a(Context paramContext, long paramLong)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokestatic 324	com/keniu/security/traffic/y:a	(Landroid/content/Context;)Lcom/keniu/security/traffic/y;
    //   5: new 320	java/util/Date
    //   8: dup
    //   9: invokespecial 321	java/util/Date:<init>	()V
    //   12: invokevirtual 542	com/keniu/security/traffic/y:a	(Ljava/util/Date;)J
    //   15: invokespecial 544	com/keniu/security/traffic/z:a	(J)V
    //   18: aload_1
    //   19: invokevirtual 427	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   22: astore 4
    //   24: new 649	java/util/HashMap
    //   27: dup
    //   28: invokespecial 650	java/util/HashMap:<init>	()V
    //   31: astore 5
    //   33: aload 4
    //   35: sipush 4096
    //   38: invokevirtual 654	android/content/pm/PackageManager:getInstalledPackages	(I)Ljava/util/List;
    //   41: invokeinterface 439 1 0
    //   46: astore 6
    //   48: aload 6
    //   50: invokeinterface 444 1 0
    //   55: ifeq +66 -> 121
    //   58: aload 6
    //   60: invokeinterface 448 1 0
    //   65: checkcast 492	android/content/pm/PackageInfo
    //   68: astore 40
    //   70: new 656	com/keniu/security/traffic/x
    //   73: dup
    //   74: invokespecial 657	com/keniu/security/traffic/x:<init>	()V
    //   77: astore 41
    //   79: aload 41
    //   81: aload 40
    //   83: getfield 658	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   86: getfield 465	android/content/pm/ApplicationInfo:uid	I
    //   89: putfield 659	com/keniu/security/traffic/x:a	I
    //   92: aload 41
    //   94: aload 40
    //   96: getfield 658	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   99: getfield 468	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   102: putfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   105: aload 5
    //   107: aload 41
    //   109: aload 40
    //   111: getfield 658	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   114: invokevirtual 663	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   117: pop
    //   118: goto -70 -> 48
    //   121: aload_0
    //   122: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   125: invokevirtual 307	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   128: lload_2
    //   129: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   132: lstore 13
    //   134: bipush 13
    //   136: anewarray 275	java/lang/Object
    //   139: astore 15
    //   141: aload 15
    //   143: iconst_0
    //   144: ldc 86
    //   146: aastore
    //   147: aload 15
    //   149: iconst_1
    //   150: ldc 89
    //   152: aastore
    //   153: aload 15
    //   155: iconst_2
    //   156: ldc 14
    //   158: aastore
    //   159: aload 15
    //   161: iconst_3
    //   162: ldc 11
    //   164: aastore
    //   165: aload 15
    //   167: iconst_4
    //   168: ldc 26
    //   170: aastore
    //   171: aload 15
    //   173: iconst_5
    //   174: ldc 23
    //   176: aastore
    //   177: aload 15
    //   179: bipush 6
    //   181: ldc 14
    //   183: aastore
    //   184: aload 15
    //   186: bipush 7
    //   188: ldc 11
    //   190: aastore
    //   191: aload 15
    //   193: bipush 8
    //   195: ldc 26
    //   197: aastore
    //   198: aload 15
    //   200: bipush 9
    //   202: ldc 23
    //   204: aastore
    //   205: aload 15
    //   207: bipush 10
    //   209: ldc 41
    //   211: aastore
    //   212: aload 15
    //   214: bipush 11
    //   216: ldc 29
    //   218: aastore
    //   219: aload 15
    //   221: bipush 12
    //   223: lload 13
    //   225: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   228: aastore
    //   229: ldc_w 665
    //   232: aload 15
    //   234: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   237: astore 16
    //   239: new 656	com/keniu/security/traffic/x
    //   242: dup
    //   243: invokespecial 657	com/keniu/security/traffic/x:<init>	()V
    //   246: astore 17
    //   248: aload_0
    //   249: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   252: aload 16
    //   254: aconst_null
    //   255: invokevirtual 639	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   258: astore 18
    //   260: aload 18
    //   262: ifnull +651 -> 913
    //   265: aload 18
    //   267: invokeinterface 184 1 0
    //   272: ifeq +641 -> 913
    //   275: new 605	java/util/Vector
    //   278: dup
    //   279: invokespecial 606	java/util/Vector:<init>	()V
    //   282: astore 24
    //   284: aconst_null
    //   285: astore 25
    //   287: aconst_null
    //   288: astore 26
    //   290: iconst_0
    //   291: istore 27
    //   293: aload 17
    //   295: aload 18
    //   297: iconst_0
    //   298: invokeinterface 193 2 0
    //   303: putfield 659	com/keniu/security/traffic/x:a	I
    //   306: aload 17
    //   308: getfield 659	com/keniu/security/traffic/x:a	I
    //   311: ldc 48
    //   313: if_icmpeq +233 -> 546
    //   316: aload 17
    //   318: getfield 659	com/keniu/security/traffic/x:a	I
    //   321: ldc 50
    //   323: if_icmpeq +223 -> 546
    //   326: aload 17
    //   328: aload 18
    //   330: iconst_1
    //   331: invokeinterface 199 2 0
    //   336: putfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   339: aload 5
    //   341: aload 17
    //   343: invokevirtual 669	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   346: checkcast 462	android/content/pm/ApplicationInfo
    //   349: astore 31
    //   351: aload 18
    //   353: iconst_2
    //   354: invokeinterface 205 2 0
    //   359: lstore 32
    //   361: aload 18
    //   363: iconst_3
    //   364: invokeinterface 205 2 0
    //   369: lstore 34
    //   371: lload 32
    //   373: lconst_0
    //   374: lcmp
    //   375: ifne +10 -> 385
    //   378: lload 34
    //   380: lconst_0
    //   381: lcmp
    //   382: ifeq +164 -> 546
    //   385: aload 31
    //   387: ifnull +361 -> 748
    //   390: aload 17
    //   392: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   395: ldc_w 671
    //   398: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   401: ifne +45 -> 446
    //   404: aload 17
    //   406: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   409: ldc_w 673
    //   412: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   415: ifne +31 -> 446
    //   418: aload 17
    //   420: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   423: ldc_w 675
    //   426: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   429: ifne +17 -> 446
    //   432: aload 17
    //   434: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   437: ldc_w 677
    //   440: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   443: ifeq +191 -> 634
    //   446: aload 25
    //   448: ifnonnull +12 -> 460
    //   451: new 605	java/util/Vector
    //   454: dup
    //   455: invokespecial 606	java/util/Vector:<init>	()V
    //   458: astore 25
    //   460: new 679	com/keniu/security/traffic/ae
    //   463: dup
    //   464: aload_0
    //   465: invokespecial 680	com/keniu/security/traffic/ae:<init>	(Lcom/keniu/security/traffic/z;)V
    //   468: astore 36
    //   470: aload 36
    //   472: aload 17
    //   474: getfield 659	com/keniu/security/traffic/x:a	I
    //   477: putfield 681	com/keniu/security/traffic/ae:a	I
    //   480: aload 36
    //   482: aload 17
    //   484: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   487: putfield 682	com/keniu/security/traffic/ae:b	Ljava/lang/String;
    //   490: aload 36
    //   492: aload 4
    //   494: aload 31
    //   496: invokevirtual 686	android/content/pm/PackageManager:getApplicationIcon	(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    //   499: putfield 689	com/keniu/security/traffic/ae:c	Landroid/graphics/drawable/Drawable;
    //   502: aload 36
    //   504: aload 4
    //   506: aload 31
    //   508: invokevirtual 693	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   511: invokevirtual 694	java/lang/Object:toString	()Ljava/lang/String;
    //   514: putfield 696	com/keniu/security/traffic/ae:d	Ljava/lang/String;
    //   517: aload 36
    //   519: lload 32
    //   521: lload 34
    //   523: ladd
    //   524: putfield 697	com/keniu/security/traffic/ae:e	J
    //   527: aload 36
    //   529: ldc2_w 698
    //   532: putfield 700	com/keniu/security/traffic/ae:f	J
    //   535: aload 25
    //   537: aload 36
    //   539: invokevirtual 616	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   542: pop
    //   543: goto +376 -> 919
    //   546: aload 18
    //   548: invokeinterface 298 1 0
    //   553: ifeq +10 -> 563
    //   556: iload 27
    //   558: bipush 50
    //   560: if_icmplt -267 -> 293
    //   563: aload 26
    //   565: ifnull +19 -> 584
    //   568: aload 24
    //   570: aload 26
    //   572: invokevirtual 616	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   575: pop
    //   576: aload 24
    //   578: getstatic 134	com/keniu/security/traffic/z:i	Ljava/util/Comparator;
    //   581: invokestatic 706	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   584: aload 25
    //   586: ifnull +11 -> 597
    //   589: aload 24
    //   591: aload 25
    //   593: invokevirtual 710	java/util/Vector:addAll	(Ljava/util/Collection;)Z
    //   596: pop
    //   597: aload 24
    //   599: astore 19
    //   601: aload_0
    //   602: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   605: invokevirtual 312	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   608: aload 18
    //   610: ifnull +10 -> 620
    //   613: aload 18
    //   615: invokeinterface 226 1 0
    //   620: aload_0
    //   621: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   624: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   627: aload 19
    //   629: astore 8
    //   631: aload 8
    //   633: areturn
    //   634: new 679	com/keniu/security/traffic/ae
    //   637: dup
    //   638: aload_0
    //   639: invokespecial 680	com/keniu/security/traffic/ae:<init>	(Lcom/keniu/security/traffic/z;)V
    //   642: astore 38
    //   644: aload 38
    //   646: aload 17
    //   648: getfield 659	com/keniu/security/traffic/x:a	I
    //   651: putfield 681	com/keniu/security/traffic/ae:a	I
    //   654: aload 38
    //   656: aload 17
    //   658: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   661: putfield 682	com/keniu/security/traffic/ae:b	Ljava/lang/String;
    //   664: aload 38
    //   666: aload 4
    //   668: aload 31
    //   670: invokevirtual 686	android/content/pm/PackageManager:getApplicationIcon	(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    //   673: putfield 689	com/keniu/security/traffic/ae:c	Landroid/graphics/drawable/Drawable;
    //   676: aload 38
    //   678: aload 4
    //   680: aload 31
    //   682: invokevirtual 693	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   685: invokevirtual 694	java/lang/Object:toString	()Ljava/lang/String;
    //   688: putfield 696	com/keniu/security/traffic/ae:d	Ljava/lang/String;
    //   691: aload 38
    //   693: lload 32
    //   695: putfield 697	com/keniu/security/traffic/ae:e	J
    //   698: aload 38
    //   700: lload 34
    //   702: putfield 700	com/keniu/security/traffic/ae:f	J
    //   705: aload 24
    //   707: aload 38
    //   709: invokevirtual 616	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   712: pop
    //   713: goto +206 -> 919
    //   716: astore 28
    //   718: aload 18
    //   720: astore 9
    //   722: aload 24
    //   724: astore 8
    //   726: aload 9
    //   728: ifnull +10 -> 738
    //   731: aload 9
    //   733: invokeinterface 226 1 0
    //   738: aload_0
    //   739: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   742: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   745: goto -114 -> 631
    //   748: aload 26
    //   750: ifnonnull +50 -> 800
    //   753: new 679	com/keniu/security/traffic/ae
    //   756: dup
    //   757: aload_0
    //   758: invokespecial 680	com/keniu/security/traffic/ae:<init>	(Lcom/keniu/security/traffic/z;)V
    //   761: astore 26
    //   763: aload 26
    //   765: ldc 52
    //   767: putfield 681	com/keniu/security/traffic/ae:a	I
    //   770: aload 26
    //   772: ldc 61
    //   774: putfield 682	com/keniu/security/traffic/ae:b	Ljava/lang/String;
    //   777: aload 26
    //   779: aload_1
    //   780: invokevirtual 714	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   783: ldc_w 715
    //   786: invokevirtual 721	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   789: putfield 689	com/keniu/security/traffic/ae:c	Landroid/graphics/drawable/Drawable;
    //   792: aload 26
    //   794: ldc_w 723
    //   797: putfield 696	com/keniu/security/traffic/ae:d	Ljava/lang/String;
    //   800: aload 26
    //   802: lload 32
    //   804: aload 26
    //   806: getfield 697	com/keniu/security/traffic/ae:e	J
    //   809: ladd
    //   810: putfield 697	com/keniu/security/traffic/ae:e	J
    //   813: aload 26
    //   815: lload 34
    //   817: aload 26
    //   819: getfield 700	com/keniu/security/traffic/ae:f	J
    //   822: ladd
    //   823: putfield 700	com/keniu/security/traffic/ae:f	J
    //   826: goto -280 -> 546
    //   829: astore 22
    //   831: aload 18
    //   833: astore 12
    //   835: aload 22
    //   837: astore 11
    //   839: aload 12
    //   841: ifnull +10 -> 851
    //   844: aload 12
    //   846: invokeinterface 226 1 0
    //   851: aload_0
    //   852: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   855: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   858: aload 11
    //   860: athrow
    //   861: astore 10
    //   863: aload 10
    //   865: astore 11
    //   867: aconst_null
    //   868: astore 12
    //   870: goto -31 -> 839
    //   873: astore 7
    //   875: aconst_null
    //   876: astore 8
    //   878: aconst_null
    //   879: astore 9
    //   881: goto -155 -> 726
    //   884: astore 23
    //   886: aload 18
    //   888: astore 9
    //   890: aconst_null
    //   891: astore 8
    //   893: goto -167 -> 726
    //   896: astore 20
    //   898: aload 19
    //   900: astore 21
    //   902: aload 18
    //   904: astore 9
    //   906: aload 21
    //   908: astore 8
    //   910: goto -184 -> 726
    //   913: aconst_null
    //   914: astore 19
    //   916: goto -315 -> 601
    //   919: iinc 27 1
    //   922: goto -376 -> 546
    //
    // Exception table:
    //   from	to	target	type
    //   293	597	716	java/lang/Exception
    //   634	713	716	java/lang/Exception
    //   753	826	716	java/lang/Exception
    //   265	284	829	finally
    //   293	597	829	finally
    //   601	608	829	finally
    //   634	713	829	finally
    //   753	826	829	finally
    //   128	260	861	finally
    //   128	260	873	java/lang/Exception
    //   265	284	884	java/lang/Exception
    //   601	608	896	java/lang/Exception
  }

  public final void a()
  {
    this.l = null;
    close();
  }

  public final boolean a(Context paramContext, Date paramDate, long paramLong, boolean paramBoolean)
  {
    boolean bool1 = true;
    while (true)
    {
      long l26;
      long l27;
      ad localad4;
      Object localObject5;
      ContentValues localContentValues;
      try
      {
        a(paramLong);
        if (n)
        {
          if ((!paramBoolean) || (!p))
            break label793;
          localad3 = new ad(this);
          localad3.k = y.a(paramDate.getTime());
          Intent localIntent = new Intent("android.intent.action.MAIN", null);
          localIntent.addCategory("android.intent.category.LAUNCHER");
          Iterator localIterator = this.j.getPackageManager().queryIntentActivities(localIntent, 0).iterator();
          if (!localIterator.hasNext())
            break label793;
          ResolveInfo localResolveInfo = (ResolveInfo)localIterator.next();
          localad3.a = localResolveInfo.activityInfo.applicationInfo.uid;
          localad3.b = localResolveInfo.activityInfo.applicationInfo.packageName;
          localad3.g = M.a(localad3.a);
          localad3.h = M.b(localad3.a);
          if ((localad3.g <= 0L) && (localad3.h <= 0L))
            continue;
          l26 = 0L;
          l27 = 0L;
          localad4 = a(localad3.a, localad3.b);
          if (localad4 == null)
            continue;
          if ((localad4.h == -1L) || (localad4.g == -1L))
            break label1608;
          l26 = localad3.g - localad4.g;
          l27 = localad3.h - localad4.h;
          if ((l26 == 0L) && (l27 == 0L))
            continue;
          if (l26 < 0L)
            l26 = localad3.g;
          if (l27 >= 0L)
            break label1608;
          l27 = localad3.h;
          l28 = l26;
          localObject4 = localad4;
          bool4 = false;
          ((ad)localObject4).g = localad3.g;
          ((ad)localObject4).h = localad3.h;
          if (t != 2)
            continue;
          ((ad)localObject4).i = (l28 + ((ad)localObject4).i);
          ((ad)localObject4).j = (l27 + ((ad)localObject4).j);
          ((ad)localObject4).k = localad3.k;
          a((ad)localObject4, bool4);
          localObject5 = a(localad3.a, localad3.b, localad3.k);
          if (localObject5 != null)
            break label742;
          ad localad6 = new ad(this);
          localad6.a = localad3.a;
          localad6.b = localad3.b;
          i2 = 1;
          localObject5 = localad6;
          if (t != 2)
            break label748;
          ((ad)localObject5).i = (l28 + ((ad)localObject5).i);
          ((ad)localObject5).j = (l27 + ((ad)localObject5).j);
          ((ad)localObject5).k = localad3.k;
          localContentValues = new ContentValues();
          localContentValues.put("userID", Integer.valueOf(((ad)localObject5).a));
          localContentValues.put("apkName", ((ad)localObject5).b);
          localContentValues.put("wifiTotalSended", Long.valueOf(((ad)localObject5).e));
          localContentValues.put("wifiTotalRecved", Long.valueOf(((ad)localObject5).f));
          localContentValues.put("netTotalSended", Long.valueOf(((ad)localObject5).i));
          localContentValues.put("netTotalRecved", Long.valueOf(((ad)localObject5).j));
          localContentValues.put("updateDate", Long.valueOf(((ad)localObject5).k));
          if (i2 == 0)
            break label777;
          this.l.insert("daySoftRecord", null, localContentValues);
          continue;
        }
      }
      catch (Exception localException)
      {
        ad localad3;
        localException = localException;
        bool1 = false;
        if (this.m >= 3)
          break label1540;
        this.m = (1 + this.m);
        return bool1;
        ad localad5 = new ad(this);
        localad5.a = localad3.a;
        localad5.b = localad3.b;
        l28 = l26;
        localObject4 = localad5;
        bool4 = true;
        continue;
        ((ad)localObject4).e = (l28 + ((ad)localObject4).e);
        ((ad)localObject4).f = (l27 + ((ad)localObject4).f);
        continue;
      }
      finally
      {
      }
      label742: int i2 = 0;
      continue;
      label748: ((ad)localObject5).e = (l28 + ((ad)localObject5).e);
      ((ad)localObject5).f = (l27 + ((ad)localObject5).f);
      continue;
      label777: this.l.replace("daySoftRecord", null, localContentValues);
      continue;
      while (true)
      {
        label793: ad localad1;
        long l1;
        long l2;
        long l3;
        long l4;
        long l5;
        long l6;
        ac localac1;
        synchronized (u)
        {
          if ((t != 0) && (u.length() != 0))
          {
            localad1 = new ad(this);
            localad1.k = y.a(paramDate.getTime());
            l1 = M.b(u);
            l2 = M.a(u);
            if ((l1 > 0L) || (l2 > 0L))
            {
              if (t != 2)
                break label1423;
              localad1.a = 1000000;
              localad1.b = "3G2G";
              localad1.c = 0L;
              localad1.d = 0L;
              localad1.g = l1;
              localad1.h = l2;
              l3 = 0L;
              l4 = 0L;
              l5 = 0L;
              l6 = 0L;
              localObject3 = a(localad1.a, localad1.b);
              if (localObject3 == null)
                break label1466;
              bool2 = false;
              if ((((ad)localObject3).d == -1L) || (((ad)localObject3).c == -1L) || (((ad)localObject3).h == -1L) || (((ad)localObject3).g == -1L))
                break label1578;
              l3 = localad1.c - ((ad)localObject3).c;
              l4 = localad1.d - ((ad)localObject3).d;
              l5 = localad1.g - ((ad)localObject3).g;
              l6 = localad1.h - ((ad)localObject3).h;
              if ((l3 != 0L) || (l4 != 0L) || (l5 != 0L) || (l6 != 0L))
              {
                if (l3 < 0L)
                  l3 = localad1.c;
                if (l4 < 0L)
                  l4 = localad1.d;
                if (l5 < 0L)
                  l5 = localad1.g;
                if (l6 >= 0L)
                  break label1578;
                long l24 = localad1.h;
                l8 = l3;
                l9 = l24;
                long l25 = l4;
                l11 = l5;
                l12 = l25;
                long l13 = localad1.c;
                ((ad)localObject3).c = l13;
                long l14 = localad1.d;
                ((ad)localObject3).d = l14;
                long l15 = localad1.g;
                ((ad)localObject3).g = l15;
                long l16 = localad1.h;
                ((ad)localObject3).h = l16;
                long l17 = l8 + ((ad)localObject3).e;
                ((ad)localObject3).e = l17;
                long l18 = l12 + ((ad)localObject3).f;
                ((ad)localObject3).f = l18;
                long l19 = l11 + ((ad)localObject3).i;
                ((ad)localObject3).i = l19;
                long l20 = l9 + ((ad)localObject3).j;
                ((ad)localObject3).j = l20;
                long l21 = localad1.k;
                ((ad)localObject3).k = l21;
                a((ad)localObject3, bool2);
                localac1 = a(localad1.a, localad1.k);
                if (localac1 != null)
                  break label1530;
                bool3 = true;
                ac localac3 = new ac(this);
                localac3.a = localad1.a;
                localac3.d = localad1.k;
                localac2 = localac3;
                localac2.b += l11 + l8;
                localac2.c += l9 + l12;
                a(localac2, bool3);
              }
            }
          }
        }
        label1423: localad1.a = 1000001;
        localad1.b = "wifi";
        localad1.c = l1;
        localad1.d = l2;
        localad1.g = 0L;
        localad1.h = 0L;
        continue;
        label1466: ad localad2 = new ad(this);
        localad2.a = localad1.a;
        localad2.b = localad1.b;
        long l7 = l6;
        long l8 = l3;
        long l9 = l7;
        long l10 = l4;
        long l11 = l5;
        long l12 = l10;
        boolean bool2 = true;
        Object localObject3 = localad2;
        continue;
        label1530: ac localac2 = localac1;
        boolean bool3 = false;
        continue;
        label1540: int i1 = this.m;
        bool1 = false;
        if (i1 != 3)
          break;
        a.i(paramContext, "mg_traffic_crash");
        this.m = (1 + this.m);
        bool1 = false;
        break;
        label1578: long l22 = l6;
        l8 = l3;
        l9 = l22;
        long l23 = l4;
        l11 = l5;
        l12 = l23;
        bool2 = false;
      }
      label1608: long l28 = l26;
      Object localObject4 = localad4;
      boolean bool4 = false;
    }
  }

  // ERROR //
  public final long[] a(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: lload_1
    //   1: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   4: lstore 11
    //   6: lload_3
    //   7: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   10: lstore 13
    //   12: bipush 11
    //   14: anewarray 275	java/lang/Object
    //   17: astore 15
    //   19: aload 15
    //   21: iconst_0
    //   22: ldc 35
    //   24: aastore
    //   25: aload 15
    //   27: iconst_1
    //   28: ldc 38
    //   30: aastore
    //   31: aload 15
    //   33: iconst_2
    //   34: ldc 29
    //   36: aastore
    //   37: aload 15
    //   39: iconst_3
    //   40: ldc 32
    //   42: aastore
    //   43: aload 15
    //   45: iconst_4
    //   46: ldc 86
    //   48: aastore
    //   49: aload 15
    //   51: iconst_5
    //   52: ldc 48
    //   54: invokestatic 281	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   57: aastore
    //   58: aload 15
    //   60: bipush 6
    //   62: ldc 29
    //   64: aastore
    //   65: aload 15
    //   67: bipush 7
    //   69: lload 11
    //   71: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   74: aastore
    //   75: aload 15
    //   77: bipush 8
    //   79: ldc 29
    //   81: aastore
    //   82: aload 15
    //   84: bipush 9
    //   86: lload 13
    //   88: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   91: aastore
    //   92: aload 15
    //   94: bipush 10
    //   96: ldc 29
    //   98: aastore
    //   99: ldc_w 733
    //   102: aload 15
    //   104: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   107: astore 16
    //   109: aload_0
    //   110: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   113: aload 16
    //   115: aconst_null
    //   116: invokevirtual 639	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   119: astore 17
    //   121: aload 17
    //   123: ifnull +197 -> 320
    //   126: aload 17
    //   128: invokeinterface 184 1 0
    //   133: ifeq +187 -> 320
    //   136: bipush 31
    //   138: newarray long
    //   140: astore 19
    //   142: aload 17
    //   144: iconst_1
    //   145: invokeinterface 205 2 0
    //   150: lstore 21
    //   152: lload 21
    //   154: lconst_1
    //   155: lload 11
    //   157: ladd
    //   158: lcmp
    //   159: ifeq +40 -> 199
    //   162: lload 21
    //   164: lload 11
    //   166: lsub
    //   167: ldc2_w 255
    //   170: ldiv
    //   171: l2i
    //   172: istore 24
    //   174: iload 24
    //   176: iflt +23 -> 199
    //   179: iload 24
    //   181: bipush 31
    //   183: if_icmpge +16 -> 199
    //   186: aload 19
    //   188: iload 24
    //   190: aload 17
    //   192: iconst_0
    //   193: invokeinterface 205 2 0
    //   198: lastore
    //   199: aload 17
    //   201: invokeinterface 298 1 0
    //   206: istore 23
    //   208: iload 23
    //   210: ifne -68 -> 142
    //   213: aload 19
    //   215: astore 10
    //   217: aload 17
    //   219: ifnull +10 -> 229
    //   222: aload 17
    //   224: invokeinterface 226 1 0
    //   229: aload 10
    //   231: areturn
    //   232: astore 7
    //   234: aconst_null
    //   235: astore 8
    //   237: aconst_null
    //   238: astore 9
    //   240: aload 8
    //   242: ifnull +71 -> 313
    //   245: aload 8
    //   247: invokeinterface 226 1 0
    //   252: aload 9
    //   254: astore 10
    //   256: goto -27 -> 229
    //   259: astore 5
    //   261: aconst_null
    //   262: astore 6
    //   264: aload 6
    //   266: ifnull +10 -> 276
    //   269: aload 6
    //   271: invokeinterface 226 1 0
    //   276: aload 5
    //   278: athrow
    //   279: astore 5
    //   281: aload 17
    //   283: astore 6
    //   285: goto -21 -> 264
    //   288: astore 18
    //   290: aload 17
    //   292: astore 8
    //   294: aconst_null
    //   295: astore 9
    //   297: goto -57 -> 240
    //   300: astore 20
    //   302: aload 17
    //   304: astore 8
    //   306: aload 19
    //   308: astore 9
    //   310: goto -70 -> 240
    //   313: aload 9
    //   315: astore 10
    //   317: goto -88 -> 229
    //   320: aconst_null
    //   321: astore 10
    //   323: goto -106 -> 217
    //
    // Exception table:
    //   from	to	target	type
    //   0	121	232	java/lang/Exception
    //   0	121	259	finally
    //   126	142	279	finally
    //   142	208	279	finally
    //   126	142	288	java/lang/Exception
    //   142	208	300	java/lang/Exception
  }

  // ERROR //
  public final u[] a(long paramLong1, long paramLong2, int paramInt, String paramString)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 7
    //   3: aconst_null
    //   4: astore 8
    //   6: lload_1
    //   7: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   10: lstore 13
    //   12: lload_3
    //   13: invokestatic 232	com/keniu/security/traffic/y:a	(J)J
    //   16: lstore 15
    //   18: bipush 15
    //   20: anewarray 275	java/lang/Object
    //   23: astore 17
    //   25: aload 17
    //   27: iconst_0
    //   28: ldc 14
    //   30: aastore
    //   31: aload 17
    //   33: iconst_1
    //   34: ldc 11
    //   36: aastore
    //   37: aload 17
    //   39: iconst_2
    //   40: ldc 26
    //   42: aastore
    //   43: aload 17
    //   45: iconst_3
    //   46: ldc 23
    //   48: aastore
    //   49: aload 17
    //   51: iconst_4
    //   52: ldc 29
    //   54: aastore
    //   55: aload 17
    //   57: iconst_5
    //   58: ldc 41
    //   60: aastore
    //   61: aload 17
    //   63: bipush 6
    //   65: ldc 86
    //   67: aastore
    //   68: aload 17
    //   70: bipush 7
    //   72: iload 5
    //   74: invokestatic 281	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   77: aastore
    //   78: aload 17
    //   80: bipush 8
    //   82: ldc 89
    //   84: aastore
    //   85: aload 17
    //   87: bipush 9
    //   89: aload 6
    //   91: aastore
    //   92: aload 17
    //   94: bipush 10
    //   96: ldc 29
    //   98: aastore
    //   99: aload 17
    //   101: bipush 11
    //   103: lload 13
    //   105: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   108: aastore
    //   109: aload 17
    //   111: bipush 12
    //   113: ldc 29
    //   115: aastore
    //   116: aload 17
    //   118: bipush 13
    //   120: lload 15
    //   122: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   125: aastore
    //   126: aload 17
    //   128: bipush 14
    //   130: ldc 29
    //   132: aastore
    //   133: ldc_w 736
    //   136: aload 17
    //   138: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   141: astore 18
    //   143: aload_0
    //   144: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   147: aload 18
    //   149: aconst_null
    //   150: invokevirtual 639	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   153: astore 8
    //   155: aconst_null
    //   156: astore 7
    //   158: aload 8
    //   160: ifnull +131 -> 291
    //   163: aload 8
    //   165: invokeinterface 184 1 0
    //   170: istore 19
    //   172: aconst_null
    //   173: astore 7
    //   175: iload 19
    //   177: ifeq +114 -> 291
    //   180: bipush 31
    //   182: anewarray 641	com/keniu/security/traffic/u
    //   185: astore 7
    //   187: iconst_0
    //   188: istore 20
    //   190: iload 20
    //   192: bipush 31
    //   194: if_icmpge +21 -> 215
    //   197: aload 7
    //   199: iload 20
    //   201: new 641	com/keniu/security/traffic/u
    //   204: dup
    //   205: invokespecial 642	com/keniu/security/traffic/u:<init>	()V
    //   208: aastore
    //   209: iinc 20 1
    //   212: goto -22 -> 190
    //   215: aload 8
    //   217: iconst_2
    //   218: invokeinterface 205 2 0
    //   223: lload 13
    //   225: lsub
    //   226: ldc2_w 255
    //   229: ldiv
    //   230: l2i
    //   231: istore 22
    //   233: iload 22
    //   235: iflt +42 -> 277
    //   238: iload 22
    //   240: bipush 31
    //   242: if_icmpge +35 -> 277
    //   245: aload 7
    //   247: iload 22
    //   249: aaload
    //   250: aload 8
    //   252: iconst_0
    //   253: invokeinterface 205 2 0
    //   258: putfield 643	com/keniu/security/traffic/u:b	J
    //   261: aload 7
    //   263: iload 22
    //   265: aaload
    //   266: aload 8
    //   268: iconst_1
    //   269: invokeinterface 205 2 0
    //   274: putfield 645	com/keniu/security/traffic/u:a	J
    //   277: aload 8
    //   279: invokeinterface 298 1 0
    //   284: istore 23
    //   286: iload 23
    //   288: ifne -73 -> 215
    //   291: aload 8
    //   293: ifnull +10 -> 303
    //   296: aload 8
    //   298: invokeinterface 226 1 0
    //   303: aload 7
    //   305: areturn
    //   306: astore 10
    //   308: aload 7
    //   310: astore 11
    //   312: aload 10
    //   314: astore 12
    //   316: aload 12
    //   318: invokevirtual 646	java/lang/Exception:printStackTrace	()V
    //   321: aload 8
    //   323: ifnull +47 -> 370
    //   326: aload 8
    //   328: invokeinterface 226 1 0
    //   333: aload 11
    //   335: astore 7
    //   337: goto -34 -> 303
    //   340: astore 9
    //   342: aload 8
    //   344: ifnull +10 -> 354
    //   347: aload 8
    //   349: invokeinterface 226 1 0
    //   354: aload 9
    //   356: athrow
    //   357: astore 21
    //   359: aload 7
    //   361: astore 11
    //   363: aload 21
    //   365: astore 12
    //   367: goto -51 -> 316
    //   370: aload 11
    //   372: astore 7
    //   374: goto -71 -> 303
    //
    // Exception table:
    //   from	to	target	type
    //   6	187	306	java/lang/Exception
    //   6	187	340	finally
    //   197	286	340	finally
    //   316	321	340	finally
    //   197	286	357	java/lang/Exception
  }

  // ERROR //
  public final ac b(long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: bipush 9
    //   2: anewarray 275	java/lang/Object
    //   5: astore 10
    //   7: aload 10
    //   9: iconst_0
    //   10: ldc 38
    //   12: aastore
    //   13: aload 10
    //   15: iconst_1
    //   16: ldc 35
    //   18: aastore
    //   19: aload 10
    //   21: iconst_2
    //   22: ldc 32
    //   24: aastore
    //   25: aload 10
    //   27: iconst_3
    //   28: ldc 86
    //   30: aastore
    //   31: aload 10
    //   33: iconst_4
    //   34: ldc 48
    //   36: invokestatic 281	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   39: aastore
    //   40: aload 10
    //   42: iconst_5
    //   43: ldc 29
    //   45: aastore
    //   46: aload 10
    //   48: bipush 6
    //   50: lload_1
    //   51: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   54: aastore
    //   55: aload 10
    //   57: bipush 7
    //   59: ldc 29
    //   61: aastore
    //   62: aload 10
    //   64: bipush 8
    //   66: lload_3
    //   67: invokestatic 286	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   70: aastore
    //   71: ldc_w 738
    //   74: aload 10
    //   76: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   79: astore 11
    //   81: aload_0
    //   82: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   85: aload 11
    //   87: aconst_null
    //   88: invokevirtual 639	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   91: astore 12
    //   93: aload 12
    //   95: ifnull +173 -> 268
    //   98: aload 12
    //   100: invokeinterface 184 1 0
    //   105: ifeq +163 -> 268
    //   108: new 261	com/keniu/security/traffic/ac
    //   111: dup
    //   112: aload_0
    //   113: invokespecial 271	com/keniu/security/traffic/ac:<init>	(Lcom/keniu/security/traffic/z;)V
    //   116: astore 13
    //   118: aload 13
    //   120: ldc 48
    //   122: putfield 272	com/keniu/security/traffic/ac:a	I
    //   125: aload 13
    //   127: aload 12
    //   129: iconst_0
    //   130: invokeinterface 205 2 0
    //   135: putfield 263	com/keniu/security/traffic/ac:b	J
    //   138: aload 13
    //   140: aload 12
    //   142: iconst_1
    //   143: invokeinterface 205 2 0
    //   148: putfield 264	com/keniu/security/traffic/ac:c	J
    //   151: aload 13
    //   153: lload_1
    //   154: putfield 273	com/keniu/security/traffic/ac:d	J
    //   157: aload 12
    //   159: ifnull +102 -> 261
    //   162: aload 12
    //   164: invokeinterface 226 1 0
    //   169: aload 13
    //   171: astore 8
    //   173: aload 8
    //   175: areturn
    //   176: astore 7
    //   178: aconst_null
    //   179: astore 8
    //   181: aconst_null
    //   182: astore 9
    //   184: aload 9
    //   186: ifnull -13 -> 173
    //   189: aload 9
    //   191: invokeinterface 226 1 0
    //   196: goto -23 -> 173
    //   199: astore 5
    //   201: aconst_null
    //   202: astore 6
    //   204: aload 6
    //   206: ifnull +10 -> 216
    //   209: aload 6
    //   211: invokeinterface 226 1 0
    //   216: aload 5
    //   218: athrow
    //   219: astore 15
    //   221: aload 12
    //   223: astore 6
    //   225: aload 15
    //   227: astore 5
    //   229: goto -25 -> 204
    //   232: astore 14
    //   234: aload 12
    //   236: astore 9
    //   238: aconst_null
    //   239: astore 8
    //   241: goto -57 -> 184
    //   244: astore 16
    //   246: aload 13
    //   248: astore 17
    //   250: aload 12
    //   252: astore 9
    //   254: aload 17
    //   256: astore 8
    //   258: goto -74 -> 184
    //   261: aload 13
    //   263: astore 8
    //   265: goto -92 -> 173
    //   268: aconst_null
    //   269: astore 13
    //   271: goto -114 -> 157
    //
    // Exception table:
    //   from	to	target	type
    //   0	93	176	java/lang/Exception
    //   0	93	199	finally
    //   98	118	219	finally
    //   118	157	219	finally
    //   98	118	232	java/lang/Exception
    //   118	157	244	java/lang/Exception
  }

  public final boolean b(boolean paramBoolean)
  {
    try
    {
      this.k = paramBoolean;
      if (this.k);
      for (this.l = getReadableDatabase(); this.l != null; this.l = getWritableDatabase())
      {
        bool = true;
        return bool;
      }
    }
    catch (SQLException localSQLException1)
    {
    }
    catch (Exception localException1)
    {
      while (true)
        try
        {
          this.j.deleteDatabase("mosecurity_traffic.db");
          if (this.k)
            this.l = getReadableDatabase();
          else
            this.l = getWritableDatabase();
        }
        catch (Exception localException2)
        {
          continue;
          boolean bool = false;
          continue;
          localException1 = localException1;
        }
        catch (SQLException localSQLException2)
        {
        }
    }
  }

  // ERROR //
  public final Vector f(Context paramContext)
  {
    // Byte code:
    //   0: aload_1
    //   1: invokestatic 324	com/keniu/security/traffic/y:a	(Landroid/content/Context;)Lcom/keniu/security/traffic/y;
    //   4: astore_2
    //   5: aload_2
    //   6: new 320	java/util/Date
    //   9: dup
    //   10: invokespecial 321	java/util/Date:<init>	()V
    //   13: invokevirtual 542	com/keniu/security/traffic/y:a	(Ljava/util/Date;)J
    //   16: lstore_3
    //   17: aload_0
    //   18: lload_3
    //   19: invokespecial 544	com/keniu/security/traffic/z:a	(J)V
    //   22: aload_1
    //   23: invokevirtual 427	android/content/Context:getPackageManager	()Landroid/content/pm/PackageManager;
    //   26: astore 5
    //   28: new 649	java/util/HashMap
    //   31: dup
    //   32: invokespecial 650	java/util/HashMap:<init>	()V
    //   35: astore 6
    //   37: aload 5
    //   39: sipush 4096
    //   42: invokevirtual 654	android/content/pm/PackageManager:getInstalledPackages	(I)Ljava/util/List;
    //   45: invokeinterface 439 1 0
    //   50: astore 7
    //   52: aload 7
    //   54: invokeinterface 444 1 0
    //   59: ifeq +66 -> 125
    //   62: aload 7
    //   64: invokeinterface 448 1 0
    //   69: checkcast 492	android/content/pm/PackageInfo
    //   72: astore 42
    //   74: new 656	com/keniu/security/traffic/x
    //   77: dup
    //   78: invokespecial 657	com/keniu/security/traffic/x:<init>	()V
    //   81: astore 43
    //   83: aload 43
    //   85: aload 42
    //   87: getfield 658	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   90: getfield 465	android/content/pm/ApplicationInfo:uid	I
    //   93: putfield 659	com/keniu/security/traffic/x:a	I
    //   96: aload 43
    //   98: aload 42
    //   100: getfield 658	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   103: getfield 468	android/content/pm/ApplicationInfo:packageName	Ljava/lang/String;
    //   106: putfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   109: aload 6
    //   111: aload 43
    //   113: aload 42
    //   115: getfield 658	android/content/pm/PackageInfo:applicationInfo	Landroid/content/pm/ApplicationInfo;
    //   118: invokevirtual 663	java/util/HashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   121: pop
    //   122: goto -70 -> 52
    //   125: aload_0
    //   126: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   129: invokevirtual 307	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   132: ldc_w 740
    //   135: bipush 11
    //   137: anewarray 275	java/lang/Object
    //   140: dup
    //   141: iconst_0
    //   142: ldc 86
    //   144: aastore
    //   145: dup
    //   146: iconst_1
    //   147: ldc 89
    //   149: aastore
    //   150: dup
    //   151: iconst_2
    //   152: ldc 14
    //   154: aastore
    //   155: dup
    //   156: iconst_3
    //   157: ldc 11
    //   159: aastore
    //   160: dup
    //   161: iconst_4
    //   162: ldc 26
    //   164: aastore
    //   165: dup
    //   166: iconst_5
    //   167: ldc 23
    //   169: aastore
    //   170: dup
    //   171: bipush 6
    //   173: ldc 14
    //   175: aastore
    //   176: dup
    //   177: bipush 7
    //   179: ldc 11
    //   181: aastore
    //   182: dup
    //   183: bipush 8
    //   185: ldc 26
    //   187: aastore
    //   188: dup
    //   189: bipush 9
    //   191: ldc 23
    //   193: aastore
    //   194: dup
    //   195: bipush 10
    //   197: ldc 83
    //   199: aastore
    //   200: invokestatic 292	java/lang/String:format	(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    //   203: astore 14
    //   205: new 656	com/keniu/security/traffic/x
    //   208: dup
    //   209: invokespecial 657	com/keniu/security/traffic/x:<init>	()V
    //   212: astore 15
    //   214: aload_0
    //   215: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   218: aload 14
    //   220: aconst_null
    //   221: invokevirtual 639	android/database/sqlite/SQLiteDatabase:rawQuery	(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    //   224: astore 16
    //   226: aload 16
    //   228: ifnull +746 -> 974
    //   231: aload 16
    //   233: invokeinterface 184 1 0
    //   238: ifeq +736 -> 974
    //   241: new 605	java/util/Vector
    //   244: dup
    //   245: invokespecial 606	java/util/Vector:<init>	()V
    //   248: astore 19
    //   250: iconst_0
    //   251: istore 20
    //   253: aconst_null
    //   254: astore 21
    //   256: aconst_null
    //   257: astore 22
    //   259: aload 15
    //   261: aload 16
    //   263: iconst_0
    //   264: invokeinterface 193 2 0
    //   269: putfield 659	com/keniu/security/traffic/x:a	I
    //   272: aload 15
    //   274: getfield 659	com/keniu/security/traffic/x:a	I
    //   277: ldc 48
    //   279: if_icmpeq +665 -> 944
    //   282: aload 15
    //   284: getfield 659	com/keniu/security/traffic/x:a	I
    //   287: ldc 50
    //   289: if_icmpeq +655 -> 944
    //   292: aload 15
    //   294: aload 16
    //   296: iconst_1
    //   297: invokeinterface 199 2 0
    //   302: putfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   305: aload 6
    //   307: aload 15
    //   309: invokevirtual 669	java/util/HashMap:get	(Ljava/lang/Object;)Ljava/lang/Object;
    //   312: checkcast 462	android/content/pm/ApplicationInfo
    //   315: astore 29
    //   317: aload 16
    //   319: iconst_2
    //   320: invokeinterface 205 2 0
    //   325: lstore 30
    //   327: aload 16
    //   329: iconst_3
    //   330: invokeinterface 205 2 0
    //   335: lstore 32
    //   337: lload 30
    //   339: lconst_0
    //   340: lcmp
    //   341: ifne +10 -> 351
    //   344: lload 32
    //   346: lconst_0
    //   347: lcmp
    //   348: ifeq +596 -> 944
    //   351: aload 29
    //   353: ifnull +383 -> 736
    //   356: aload 15
    //   358: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   361: ldc_w 671
    //   364: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   367: ifne +45 -> 412
    //   370: aload 15
    //   372: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   375: ldc_w 673
    //   378: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   381: ifne +31 -> 412
    //   384: aload 15
    //   386: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   389: ldc_w 675
    //   392: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   395: ifne +17 -> 412
    //   398: aload 15
    //   400: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   403: ldc_w 677
    //   406: invokevirtual 502	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   409: ifeq +241 -> 650
    //   412: aload 21
    //   414: ifnonnull +12 -> 426
    //   417: new 605	java/util/Vector
    //   420: dup
    //   421: invokespecial 606	java/util/Vector:<init>	()V
    //   424: astore 21
    //   426: new 679	com/keniu/security/traffic/ae
    //   429: dup
    //   430: aload_0
    //   431: invokespecial 680	com/keniu/security/traffic/ae:<init>	(Lcom/keniu/security/traffic/z;)V
    //   434: astore 36
    //   436: aload 36
    //   438: aload 15
    //   440: getfield 659	com/keniu/security/traffic/x:a	I
    //   443: putfield 681	com/keniu/security/traffic/ae:a	I
    //   446: aload 36
    //   448: aload 15
    //   450: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   453: putfield 682	com/keniu/security/traffic/ae:b	Ljava/lang/String;
    //   456: aload 36
    //   458: aload 5
    //   460: aload 29
    //   462: invokevirtual 686	android/content/pm/PackageManager:getApplicationIcon	(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    //   465: putfield 689	com/keniu/security/traffic/ae:c	Landroid/graphics/drawable/Drawable;
    //   468: aload 36
    //   470: aload 5
    //   472: aload 29
    //   474: invokevirtual 693	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   477: invokevirtual 694	java/lang/Object:toString	()Ljava/lang/String;
    //   480: putfield 696	com/keniu/security/traffic/ae:d	Ljava/lang/String;
    //   483: aload 36
    //   485: lload 30
    //   487: lload 32
    //   489: ladd
    //   490: putfield 697	com/keniu/security/traffic/ae:e	J
    //   493: aload 36
    //   495: ldc2_w 698
    //   498: putfield 700	com/keniu/security/traffic/ae:f	J
    //   501: aload 21
    //   503: aload 36
    //   505: invokevirtual 616	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   508: pop
    //   509: aload 21
    //   511: astore 38
    //   513: goto +467 -> 980
    //   516: aload 16
    //   518: invokeinterface 298 1 0
    //   523: ifeq +10 -> 533
    //   526: iload 24
    //   528: bipush 50
    //   530: if_icmplt +429 -> 959
    //   533: aload 25
    //   535: ifnull +19 -> 554
    //   538: aload 19
    //   540: aload 25
    //   542: invokevirtual 616	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   545: pop
    //   546: aload 19
    //   548: getstatic 134	com/keniu/security/traffic/z:i	Ljava/util/Comparator;
    //   551: invokestatic 706	java/util/Collections:sort	(Ljava/util/List;Ljava/util/Comparator;)V
    //   554: aload 26
    //   556: ifnull +11 -> 567
    //   559: aload 19
    //   561: aload 26
    //   563: invokevirtual 710	java/util/Vector:addAll	(Ljava/util/Collection;)Z
    //   566: pop
    //   567: aload 19
    //   569: astore 13
    //   571: aload_0
    //   572: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   575: invokevirtual 312	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   578: aload 16
    //   580: ifnull +10 -> 590
    //   583: aload 16
    //   585: invokeinterface 226 1 0
    //   590: aload_0
    //   591: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   594: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   597: aload_2
    //   598: getfield 741	com/keniu/security/traffic/y:j	J
    //   601: lload_3
    //   602: lcmp
    //   603: ifge +16 -> 619
    //   606: aload_2
    //   607: lload_3
    //   608: putfield 741	com/keniu/security/traffic/y:j	J
    //   611: aload_2
    //   612: aload_1
    //   613: ldc_w 742
    //   616: invokevirtual 386	com/keniu/security/traffic/y:a	(Landroid/content/Context;I)V
    //   619: aload 13
    //   621: ifnull +11 -> 632
    //   624: aload 13
    //   626: invokevirtual 745	java/util/Vector:isEmpty	()Z
    //   629: ifeq +18 -> 647
    //   632: aload_2
    //   633: invokestatic 381	java/lang/System:currentTimeMillis	()J
    //   636: putfield 741	com/keniu/security/traffic/y:j	J
    //   639: aload_2
    //   640: aload_1
    //   641: ldc_w 742
    //   644: invokevirtual 386	com/keniu/security/traffic/y:a	(Landroid/content/Context;I)V
    //   647: aload 13
    //   649: areturn
    //   650: new 679	com/keniu/security/traffic/ae
    //   653: dup
    //   654: aload_0
    //   655: invokespecial 680	com/keniu/security/traffic/ae:<init>	(Lcom/keniu/security/traffic/z;)V
    //   658: astore 40
    //   660: aload 40
    //   662: aload 15
    //   664: getfield 659	com/keniu/security/traffic/x:a	I
    //   667: putfield 681	com/keniu/security/traffic/ae:a	I
    //   670: aload 40
    //   672: aload 15
    //   674: getfield 660	com/keniu/security/traffic/x:b	Ljava/lang/String;
    //   677: putfield 682	com/keniu/security/traffic/ae:b	Ljava/lang/String;
    //   680: aload 40
    //   682: aload 5
    //   684: aload 29
    //   686: invokevirtual 686	android/content/pm/PackageManager:getApplicationIcon	(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    //   689: putfield 689	com/keniu/security/traffic/ae:c	Landroid/graphics/drawable/Drawable;
    //   692: aload 40
    //   694: aload 5
    //   696: aload 29
    //   698: invokevirtual 693	android/content/pm/PackageManager:getApplicationLabel	(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    //   701: invokevirtual 694	java/lang/Object:toString	()Ljava/lang/String;
    //   704: putfield 696	com/keniu/security/traffic/ae:d	Ljava/lang/String;
    //   707: aload 40
    //   709: lload 30
    //   711: putfield 697	com/keniu/security/traffic/ae:e	J
    //   714: aload 40
    //   716: lload 32
    //   718: putfield 700	com/keniu/security/traffic/ae:f	J
    //   721: aload 19
    //   723: aload 40
    //   725: invokevirtual 616	java/util/Vector:add	(Ljava/lang/Object;)Z
    //   728: pop
    //   729: aload 21
    //   731: astore 38
    //   733: goto +247 -> 980
    //   736: aload 22
    //   738: ifnonnull +199 -> 937
    //   741: new 679	com/keniu/security/traffic/ae
    //   744: dup
    //   745: aload_0
    //   746: invokespecial 680	com/keniu/security/traffic/ae:<init>	(Lcom/keniu/security/traffic/z;)V
    //   749: astore 34
    //   751: aload 34
    //   753: ldc 52
    //   755: putfield 681	com/keniu/security/traffic/ae:a	I
    //   758: aload 34
    //   760: ldc 61
    //   762: putfield 682	com/keniu/security/traffic/ae:b	Ljava/lang/String;
    //   765: aload 34
    //   767: aload_1
    //   768: invokevirtual 714	android/content/Context:getResources	()Landroid/content/res/Resources;
    //   771: ldc_w 715
    //   774: invokevirtual 721	android/content/res/Resources:getDrawable	(I)Landroid/graphics/drawable/Drawable;
    //   777: putfield 689	com/keniu/security/traffic/ae:c	Landroid/graphics/drawable/Drawable;
    //   780: aload 34
    //   782: ldc_w 723
    //   785: putfield 696	com/keniu/security/traffic/ae:d	Ljava/lang/String;
    //   788: aload 34
    //   790: lload 30
    //   792: aload 34
    //   794: getfield 697	com/keniu/security/traffic/ae:e	J
    //   797: ladd
    //   798: putfield 697	com/keniu/security/traffic/ae:e	J
    //   801: aload 34
    //   803: lload 32
    //   805: aload 34
    //   807: getfield 700	com/keniu/security/traffic/ae:f	J
    //   810: ladd
    //   811: putfield 700	com/keniu/security/traffic/ae:f	J
    //   814: aload 21
    //   816: astore 26
    //   818: aload 34
    //   820: astore 35
    //   822: iload 20
    //   824: istore 24
    //   826: aload 35
    //   828: astore 25
    //   830: goto -314 -> 516
    //   833: astore 11
    //   835: aconst_null
    //   836: astore 12
    //   838: aconst_null
    //   839: astore 13
    //   841: aload 12
    //   843: ifnull +10 -> 853
    //   846: aload 12
    //   848: invokeinterface 226 1 0
    //   853: aload_0
    //   854: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   857: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   860: goto -263 -> 597
    //   863: astore 8
    //   865: aconst_null
    //   866: astore 9
    //   868: aload 8
    //   870: astore 10
    //   872: aload 9
    //   874: ifnull +10 -> 884
    //   877: aload 9
    //   879: invokeinterface 226 1 0
    //   884: aload_0
    //   885: getfield 171	com/keniu/security/traffic/z:l	Landroid/database/sqlite/SQLiteDatabase;
    //   888: invokevirtual 315	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   891: aload 10
    //   893: athrow
    //   894: astore 10
    //   896: aload 16
    //   898: astore 9
    //   900: goto -28 -> 872
    //   903: astore 18
    //   905: aload 16
    //   907: astore 12
    //   909: aconst_null
    //   910: astore 13
    //   912: goto -71 -> 841
    //   915: astore 23
    //   917: aload 19
    //   919: astore 13
    //   921: aload 16
    //   923: astore 12
    //   925: goto -84 -> 841
    //   928: astore 17
    //   930: aload 16
    //   932: astore 12
    //   934: goto -93 -> 841
    //   937: aload 22
    //   939: astore 34
    //   941: goto -153 -> 788
    //   944: iload 20
    //   946: istore 24
    //   948: aload 22
    //   950: astore 25
    //   952: aload 21
    //   954: astore 26
    //   956: goto -440 -> 516
    //   959: aload 26
    //   961: astore 21
    //   963: aload 25
    //   965: astore 22
    //   967: iload 24
    //   969: istore 20
    //   971: goto -712 -> 259
    //   974: aconst_null
    //   975: astore 13
    //   977: goto -406 -> 571
    //   980: iload 20
    //   982: iconst_1
    //   983: iadd
    //   984: istore 39
    //   986: aload 22
    //   988: astore 25
    //   990: aload 38
    //   992: astore 26
    //   994: iload 39
    //   996: istore 24
    //   998: goto -482 -> 516
    //
    // Exception table:
    //   from	to	target	type
    //   132	226	833	java/lang/Exception
    //   132	226	863	finally
    //   231	250	894	finally
    //   259	567	894	finally
    //   571	578	894	finally
    //   650	814	894	finally
    //   231	250	903	java/lang/Exception
    //   259	567	915	java/lang/Exception
    //   650	814	915	java/lang/Exception
    //   571	578	928	java/lang/Exception
  }

  public final void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    paramSQLiteDatabase.execSQL("CREATE TABLE lastRecord (userID INTEGER, apkName TEXT, wifiSended INTEGER, wifiRecved INTEGER, wifiTotalSended INTEGER, wifiTotalRecved INTEGER, netSended INTEGER, netRecved INTEGER, netTotalSended INTEGER, netTotalRecved INTEGER, updateDate INTERGER, PRIMARY KEY (userID, apkName))");
    paramSQLiteDatabase.execSQL("CREATE TABLE dayRecord (userID INTEGER, sended INTEGER, recved INTEGER, updateDate INTERGER, PRIMARY KEY (userID, updateDate))");
    paramSQLiteDatabase.execSQL("CREATE TABLE daySoftRecord (userID INTEGER, apkName TEXT, wifiTotalSended INTEGER, wifiTotalRecved INTEGER, netTotalSended INTEGER, netTotalRecved INTEGER, updateDate INTERGER, PRIMARY KEY (userID , apkName , updateDate))");
    paramSQLiteDatabase.execSQL("CREATE INDEX lastRecord_userID ON lastRecord(userID)");
    paramSQLiteDatabase.execSQL("CREATE INDEX lastRecord_userID_apkName ON lastRecord(userID, apkName)");
    paramSQLiteDatabase.execSQL("CREATE INDEX dayRecord_userID_updateDate ON dayRecord(userID, updateDate)");
    paramSQLiteDatabase.execSQL("CREATE INDEX daySoftRecord_userID_apkName_updateDate ON daySoftRecord(userID, apkName, updateDate)");
  }

  public final void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS tb_chip");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS tb_day");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS tb_hour");
    paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS tb_latest");
    if (paramInt1 <= 5)
      onCreate(paramSQLiteDatabase);
    while (true)
    {
      return;
      if ((paramInt1 == 6) && (paramInt2 == 7))
      {
        paramSQLiteDatabase.execSQL("CREATE TABLE daySoftRecord (userID INTEGER, apkName TEXT, wifiTotalSended INTEGER, wifiTotalRecved INTEGER, netTotalSended INTEGER, netTotalRecved INTEGER, updateDate INTERGER, PRIMARY KEY (userID , apkName , updateDate))");
        paramSQLiteDatabase.execSQL("CREATE INDEX daySoftRecord_userID_apkName_updateDate ON daySoftRecord(userID, apkName, updateDate)");
      }
      else if (paramInt1 > paramInt2)
      {
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS lastRecord");
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS dayRecord");
        paramSQLiteDatabase.execSQL("DROP TABLE IF EXISTS daySoftRecord");
        onCreate(paramSQLiteDatabase);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.traffic.z
 * JD-Core Version:    0.6.2
 */