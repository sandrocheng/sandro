package com.antivirus.core.b.a;

import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.telephony.TelephonyManager;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class b
{
  private static b d;
  private SQLiteOpenHelper a;
  private AtomicInteger b;
  private AtomicInteger c;
  private Context e;
  private com.antivirus.core.b f;

  // ERROR //
  private b(Context paramContext)
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 22	java/lang/Object:<init>	()V
    //   4: aload_0
    //   5: new 24	com/antivirus/core/b/a/a
    //   8: dup
    //   9: aload_1
    //   10: invokespecial 26	com/antivirus/core/b/a/a:<init>	(Landroid/content/Context;)V
    //   13: putfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   16: aload_0
    //   17: aload_1
    //   18: putfield 30	com/antivirus/core/b/a/b:e	Landroid/content/Context;
    //   21: aload_0
    //   22: new 32	com/antivirus/core/b
    //   25: dup
    //   26: aload_1
    //   27: invokespecial 33	com/antivirus/core/b:<init>	(Landroid/content/Context;)V
    //   30: putfield 35	com/antivirus/core/b/a/b:f	Lcom/antivirus/core/b;
    //   33: ldc2_w 36
    //   36: invokestatic 43	java/lang/Thread:sleep	(J)V
    //   39: aload_0
    //   40: getfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   43: invokevirtual 49	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   46: astore 9
    //   48: aload 9
    //   50: ldc 51
    //   52: iconst_1
    //   53: anewarray 53	java/lang/String
    //   56: dup
    //   57: iconst_0
    //   58: ldc 55
    //   60: aastore
    //   61: aconst_null
    //   62: aconst_null
    //   63: aconst_null
    //   64: aconst_null
    //   65: aconst_null
    //   66: invokevirtual 61	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   69: astore 10
    //   71: aload 10
    //   73: astore 6
    //   75: aload 9
    //   77: ldc 63
    //   79: iconst_1
    //   80: anewarray 53	java/lang/String
    //   83: dup
    //   84: iconst_0
    //   85: ldc 55
    //   87: aastore
    //   88: aconst_null
    //   89: aconst_null
    //   90: aconst_null
    //   91: aconst_null
    //   92: aconst_null
    //   93: invokevirtual 61	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   96: astore 12
    //   98: aload 12
    //   100: astore_3
    //   101: aload 6
    //   103: ifnull +13 -> 116
    //   106: aload 6
    //   108: invokeinterface 69 1 0
    //   113: ifne +61 -> 174
    //   116: aload_0
    //   117: new 71	java/util/concurrent/atomic/AtomicInteger
    //   120: dup
    //   121: invokespecial 72	java/util/concurrent/atomic/AtomicInteger:<init>	()V
    //   124: putfield 74	com/antivirus/core/b/a/b:b	Ljava/util/concurrent/atomic/AtomicInteger;
    //   127: aload_3
    //   128: ifnull +12 -> 140
    //   131: aload_3
    //   132: invokeinterface 69 1 0
    //   137: ifne +114 -> 251
    //   140: aload_0
    //   141: new 71	java/util/concurrent/atomic/AtomicInteger
    //   144: dup
    //   145: invokespecial 72	java/util/concurrent/atomic/AtomicInteger:<init>	()V
    //   148: putfield 76	com/antivirus/core/b/a/b:c	Ljava/util/concurrent/atomic/AtomicInteger;
    //   151: aload_3
    //   152: ifnull +9 -> 161
    //   155: aload_3
    //   156: invokeinterface 79 1 0
    //   161: aload 6
    //   163: ifnull +10 -> 173
    //   166: aload 6
    //   168: invokeinterface 79 1 0
    //   173: return
    //   174: aload_0
    //   175: new 71	java/util/concurrent/atomic/AtomicInteger
    //   178: dup
    //   179: aload 6
    //   181: invokeinterface 69 1 0
    //   186: invokespecial 82	java/util/concurrent/atomic/AtomicInteger:<init>	(I)V
    //   189: putfield 74	com/antivirus/core/b/a/b:b	Ljava/util/concurrent/atomic/AtomicInteger;
    //   192: goto -65 -> 127
    //   195: astore 14
    //   197: aload 6
    //   199: astore 4
    //   201: aload_0
    //   202: new 71	java/util/concurrent/atomic/AtomicInteger
    //   205: dup
    //   206: invokespecial 72	java/util/concurrent/atomic/AtomicInteger:<init>	()V
    //   209: putfield 74	com/antivirus/core/b/a/b:b	Ljava/util/concurrent/atomic/AtomicInteger;
    //   212: aload_0
    //   213: new 71	java/util/concurrent/atomic/AtomicInteger
    //   216: dup
    //   217: invokespecial 72	java/util/concurrent/atomic/AtomicInteger:<init>	()V
    //   220: putfield 76	com/antivirus/core/b/a/b:c	Ljava/util/concurrent/atomic/AtomicInteger;
    //   223: invokestatic 86	com/avg/toolkit/f/a:a	()V
    //   226: aload_3
    //   227: ifnull +9 -> 236
    //   230: aload_3
    //   231: invokeinterface 79 1 0
    //   236: aload 4
    //   238: ifnull -65 -> 173
    //   241: aload 4
    //   243: invokeinterface 79 1 0
    //   248: goto -75 -> 173
    //   251: aload_0
    //   252: new 71	java/util/concurrent/atomic/AtomicInteger
    //   255: dup
    //   256: aload_3
    //   257: invokeinterface 69 1 0
    //   262: invokespecial 82	java/util/concurrent/atomic/AtomicInteger:<init>	(I)V
    //   265: putfield 76	com/antivirus/core/b/a/b:c	Ljava/util/concurrent/atomic/AtomicInteger;
    //   268: goto -117 -> 151
    //   271: astore 13
    //   273: aload_3
    //   274: astore 7
    //   276: aload 13
    //   278: astore 8
    //   280: aload 7
    //   282: ifnull +10 -> 292
    //   285: aload 7
    //   287: invokeinterface 79 1 0
    //   292: aload 6
    //   294: ifnull +10 -> 304
    //   297: aload 6
    //   299: invokeinterface 79 1 0
    //   304: aload 8
    //   306: athrow
    //   307: astore 8
    //   309: aconst_null
    //   310: astore 7
    //   312: aconst_null
    //   313: astore 6
    //   315: goto -35 -> 280
    //   318: astore 8
    //   320: aconst_null
    //   321: astore 7
    //   323: goto -43 -> 280
    //   326: astore 5
    //   328: aload 4
    //   330: astore 6
    //   332: aload_3
    //   333: astore 7
    //   335: aload 5
    //   337: astore 8
    //   339: goto -59 -> 280
    //   342: astore_2
    //   343: aconst_null
    //   344: astore_3
    //   345: aconst_null
    //   346: astore 4
    //   348: goto -147 -> 201
    //   351: astore 11
    //   353: aload 6
    //   355: astore 4
    //   357: aconst_null
    //   358: astore_3
    //   359: goto -158 -> 201
    //
    // Exception table:
    //   from	to	target	type
    //   106	151	195	java/lang/Exception
    //   174	192	195	java/lang/Exception
    //   251	268	195	java/lang/Exception
    //   106	151	271	finally
    //   174	192	271	finally
    //   251	268	271	finally
    //   33	71	307	finally
    //   75	98	318	finally
    //   201	226	326	finally
    //   33	71	342	java/lang/Exception
    //   75	98	351	java/lang/Exception
  }

  public static b a(Context paramContext)
  {
    try
    {
      if (d == null)
        d = new b(paramContext);
      b localb = d;
      return localb;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a()
  {
    try
    {
      if (d != null)
        d.d();
      d = null;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private void d()
  {
    if (this.a != null)
      this.a.close();
    this.a = null;
  }

  // ERROR //
  public int a(long paramLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: aload_0
    //   3: getfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   6: invokevirtual 49	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   9: astore 9
    //   11: iconst_2
    //   12: anewarray 53	java/lang/String
    //   15: dup
    //   16: iconst_0
    //   17: ldc 96
    //   19: aastore
    //   20: dup
    //   21: iconst_1
    //   22: ldc 98
    //   24: aastore
    //   25: astore 10
    //   27: iconst_1
    //   28: anewarray 53	java/lang/String
    //   31: astore 11
    //   33: aload 11
    //   35: iconst_0
    //   36: lload_1
    //   37: invokestatic 102	java/lang/String:valueOf	(J)Ljava/lang/String;
    //   40: aastore
    //   41: aload 9
    //   43: ldc 51
    //   45: aload 10
    //   47: ldc 104
    //   49: aload 11
    //   51: aconst_null
    //   52: aconst_null
    //   53: aconst_null
    //   54: invokevirtual 61	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   57: astore 12
    //   59: aload 12
    //   61: ifnull +17 -> 78
    //   64: aload 12
    //   66: invokeinterface 69 1 0
    //   71: istore 14
    //   73: iload 14
    //   75: ifne +21 -> 96
    //   78: aload 12
    //   80: ifnull +10 -> 90
    //   83: aload 12
    //   85: invokeinterface 79 1 0
    //   90: iconst_0
    //   91: istore 8
    //   93: iload 8
    //   95: ireturn
    //   96: aload 12
    //   98: invokeinterface 108 1 0
    //   103: ifeq +40 -> 143
    //   106: aload 12
    //   108: aload 12
    //   110: ldc 98
    //   112: invokeinterface 112 2 0
    //   117: invokeinterface 116 2 0
    //   122: istore 15
    //   124: iload 15
    //   126: istore 8
    //   128: aload 12
    //   130: ifnull -37 -> 93
    //   133: aload 12
    //   135: invokeinterface 79 1 0
    //   140: goto -47 -> 93
    //   143: aload 12
    //   145: ifnull +10 -> 155
    //   148: aload 12
    //   150: invokeinterface 79 1 0
    //   155: iconst_0
    //   156: istore 8
    //   158: goto -65 -> 93
    //   161: astore 5
    //   163: aconst_null
    //   164: astore 6
    //   166: invokestatic 86	com/avg/toolkit/f/a:a	()V
    //   169: aload 6
    //   171: ifnull +10 -> 181
    //   174: aload 6
    //   176: invokeinterface 79 1 0
    //   181: iconst_0
    //   182: istore 8
    //   184: goto -91 -> 93
    //   187: astore 4
    //   189: aload_3
    //   190: ifnull +9 -> 199
    //   193: aload_3
    //   194: invokeinterface 79 1 0
    //   199: aload 4
    //   201: athrow
    //   202: astore 4
    //   204: aload 12
    //   206: astore_3
    //   207: goto -18 -> 189
    //   210: astore 7
    //   212: aload 6
    //   214: astore_3
    //   215: aload 7
    //   217: astore 4
    //   219: goto -30 -> 189
    //   222: astore 13
    //   224: aload 12
    //   226: astore 6
    //   228: goto -62 -> 166
    //
    // Exception table:
    //   from	to	target	type
    //   2	59	161	java/lang/Exception
    //   2	59	187	finally
    //   64	73	202	finally
    //   96	124	202	finally
    //   166	169	210	finally
    //   64	73	222	java/lang/Exception
    //   96	124	222	java/lang/Exception
  }

  public Cursor a(int paramInt, String paramString1, String paramString2)
  {
    String str;
    if (paramInt > 0)
    {
      str = "message_type=" + paramInt;
      if (str != null)
        break label120;
      if (!paramString2.equals(""))
        break label114;
      str = null;
    }
    while (true)
    {
      return this.a.getReadableDatabase().query("messages_log", new String[] { "incoming_msg_id", "message_type", "message_snippet", "phone_number", "date" }, str, null, null, null, "date " + paramString1);
      str = null;
      break;
      label114: str = paramString2;
      continue;
      label120: if (!paramString2.equals(""))
        str = str + " AND " + paramString2;
    }
  }

  public Cursor a(String paramString1, String paramString2)
  {
    return this.a.getReadableDatabase().query("calls_log", new String[] { "incoming_call_id", "call_type", "date" }, paramString2, null, null, null, "date " + paramString1, null);
  }

  // ERROR //
  public com.antivirus.core.b.b.a a(String paramString)
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 35	com/antivirus/core/b/a/b:f	Lcom/antivirus/core/b;
    //   4: invokevirtual 163	com/antivirus/core/b:h	()Ljava/lang/String;
    //   7: astore_2
    //   8: aload_2
    //   9: ldc 135
    //   11: invokevirtual 139	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   14: ifeq +30 -> 44
    //   17: aload_0
    //   18: getfield 30	com/antivirus/core/b/a/b:e	Landroid/content/Context;
    //   21: ldc 165
    //   23: invokevirtual 171	android/content/Context:getSystemService	(Ljava/lang/String;)Ljava/lang/Object;
    //   26: checkcast 173	android/telephony/TelephonyManager
    //   29: invokevirtual 176	android/telephony/TelephonyManager:getNetworkCountryIso	()Ljava/lang/String;
    //   32: invokevirtual 179	java/lang/String:toUpperCase	()Ljava/lang/String;
    //   35: astore_2
    //   36: aload_0
    //   37: getfield 35	com/antivirus/core/b/a/b:f	Lcom/antivirus/core/b;
    //   40: aload_2
    //   41: invokevirtual 183	com/antivirus/core/b:g	(Ljava/lang/String;)V
    //   44: aload_1
    //   45: aload_2
    //   46: invokestatic 188	com/antivirus/core/b/a:a	(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    //   49: astore_3
    //   50: aload_0
    //   51: getfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   54: ifnonnull +18 -> 72
    //   57: aload_0
    //   58: new 24	com/antivirus/core/b/a/a
    //   61: dup
    //   62: aload_0
    //   63: getfield 30	com/antivirus/core/b/a/b:e	Landroid/content/Context;
    //   66: invokespecial 26	com/antivirus/core/b/a/a:<init>	(Landroid/content/Context;)V
    //   69: putfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   72: aload_0
    //   73: getfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   76: invokevirtual 49	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   79: ldc 190
    //   81: iconst_4
    //   82: anewarray 53	java/lang/String
    //   85: dup
    //   86: iconst_0
    //   87: ldc 143
    //   89: aastore
    //   90: dup
    //   91: iconst_1
    //   92: ldc 98
    //   94: aastore
    //   95: dup
    //   96: iconst_2
    //   97: ldc 154
    //   99: aastore
    //   100: dup
    //   101: iconst_3
    //   102: ldc 192
    //   104: aastore
    //   105: ldc 194
    //   107: iconst_1
    //   108: anewarray 53	java/lang/String
    //   111: dup
    //   112: iconst_0
    //   113: aload_3
    //   114: aastore
    //   115: aconst_null
    //   116: aconst_null
    //   117: aconst_null
    //   118: aconst_null
    //   119: invokevirtual 157	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   122: astore 8
    //   124: aload 8
    //   126: astore 5
    //   128: aload 5
    //   130: ifnull +13 -> 143
    //   133: aload 5
    //   135: invokeinterface 69 1 0
    //   140: ifne +30 -> 170
    //   143: new 196	com/antivirus/core/b/b/a
    //   146: dup
    //   147: iconst_0
    //   148: iconst_1
    //   149: aconst_null
    //   150: invokespecial 199	com/antivirus/core/b/b/a:<init>	(IILjava/lang/String;)V
    //   153: astore 7
    //   155: aload 5
    //   157: ifnull +10 -> 167
    //   160: aload 5
    //   162: invokeinterface 79 1 0
    //   167: aload 7
    //   169: areturn
    //   170: aload 5
    //   172: invokeinterface 108 1 0
    //   177: pop
    //   178: aload 5
    //   180: aload 5
    //   182: ldc 98
    //   184: invokeinterface 112 2 0
    //   189: invokeinterface 116 2 0
    //   194: istore 10
    //   196: aload 5
    //   198: aload 5
    //   200: ldc 154
    //   202: invokeinterface 112 2 0
    //   207: invokeinterface 116 2 0
    //   212: istore 11
    //   214: aload 5
    //   216: aload 5
    //   218: ldc 192
    //   220: invokeinterface 112 2 0
    //   225: invokeinterface 203 2 0
    //   230: astore 12
    //   232: aconst_null
    //   233: astore 13
    //   235: aload 12
    //   237: ifnonnull +40 -> 277
    //   240: aload 5
    //   242: invokeinterface 79 1 0
    //   247: new 196	com/antivirus/core/b/b/a
    //   250: dup
    //   251: iload 10
    //   253: iload 11
    //   255: aload 13
    //   257: invokespecial 199	com/antivirus/core/b/b/a:<init>	(IILjava/lang/String;)V
    //   260: astore 7
    //   262: aload 5
    //   264: ifnull -97 -> 167
    //   267: aload 5
    //   269: invokeinterface 79 1 0
    //   274: goto -107 -> 167
    //   277: aload 12
    //   279: ldc 205
    //   281: ldc 207
    //   283: invokevirtual 211	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   286: astore 14
    //   288: aload 14
    //   290: astore 13
    //   292: goto -52 -> 240
    //   295: astore 6
    //   297: aconst_null
    //   298: astore 5
    //   300: ldc 213
    //   302: invokestatic 215	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   305: aload 6
    //   307: invokestatic 218	com/avg/toolkit/f/a:a	(Ljava/lang/Throwable;)V
    //   310: new 196	com/antivirus/core/b/b/a
    //   313: dup
    //   314: iconst_0
    //   315: iconst_1
    //   316: aconst_null
    //   317: invokespecial 199	com/antivirus/core/b/b/a:<init>	(IILjava/lang/String;)V
    //   320: astore 7
    //   322: aload 5
    //   324: ifnull -157 -> 167
    //   327: aload 5
    //   329: invokeinterface 79 1 0
    //   334: goto -167 -> 167
    //   337: astore 4
    //   339: aconst_null
    //   340: astore 5
    //   342: aload 5
    //   344: ifnull +10 -> 354
    //   347: aload 5
    //   349: invokeinterface 79 1 0
    //   354: aload 4
    //   356: athrow
    //   357: astore 4
    //   359: goto -17 -> 342
    //   362: astore 6
    //   364: goto -64 -> 300
    //
    // Exception table:
    //   from	to	target	type
    //   50	124	295	java/lang/Throwable
    //   50	124	337	finally
    //   133	155	357	finally
    //   170	262	357	finally
    //   277	288	357	finally
    //   300	322	357	finally
    //   133	155	362	java/lang/Throwable
    //   170	262	362	java/lang/Throwable
    //   277	288	362	java/lang/Throwable
  }

  public void a(long paramLong1, int paramInt, long paramLong2)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.a.getWritableDatabase();
      int i = this.c.getAndIncrement() % 1000;
      localSQLiteDatabase.execSQL("INSERT OR REPLACE INTO calls_log (_id, incoming_call_id, call_type, date) VALUES (" + i + ", " + paramLong1 + ", " + paramInt + ", " + paramLong2 + ")");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(long paramLong1, int paramInt, String paramString1, String paramString2, long paramLong2)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.a.getWritableDatabase();
      String str1 = this.f.h();
      if (str1.equals(""))
      {
        str1 = ((TelephonyManager)this.e.getSystemService("phone")).getNetworkCountryIso().toUpperCase();
        this.f.g(str1);
      }
      String str2 = com.antivirus.core.b.a.a(paramString2, str1);
      int i = this.b.getAndIncrement() % 1000;
      localSQLiteDatabase.execSQL("INSERT OR REPLACE INTO messages_log (_id, incoming_msg_id, message_type, message_snippet, phone_number, date) VALUES (" + i + ", " + paramLong1 + ", " + paramInt + ", '" + paramString1.replaceAll("\"", "`").replaceAll("'", "`") + "', '" + str2 + "', " + paramLong2 + ")");
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
    finally
    {
    }
  }

  public void a(String paramString1, int paramInt1, int paramInt2, String paramString2)
  {
    String str1 = this.f.h();
    if (str1.equals(""))
    {
      str1 = ((TelephonyManager)this.e.getSystemService("phone")).getNetworkCountryIso().toUpperCase();
      this.f.g(str1);
    }
    String str2 = com.antivirus.core.b.a.a(paramString1, str1);
    if (paramString2 != null)
      paramString2 = paramString2.replaceAll("'", "`");
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.a.getWritableDatabase();
      if ((paramInt1 == 0) && (paramInt2 == 1))
        localSQLiteDatabase.delete("blocked_contacts", "phone_number=?", new String[] { str2 });
      else
        localSQLiteDatabase.execSQL("INSERT OR REPLACE INTO blocked_contacts (phone_number, message_type, call_type, reject_call_message) VALUES ('" + str2 + "', " + paramInt1 + ", " + paramInt2 + ", '" + paramString2 + "')");
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
    }
  }

  public void a(List paramList)
  {
    try
    {
      SQLiteDatabase localSQLiteDatabase = this.a.getWritableDatabase();
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
        localSQLiteDatabase.delete("messages_log", "incoming_msg_id=?", new String[] { (String)localIterator.next() });
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
    }
  }

  // ERROR //
  public java.util.Map b()
  {
    // Byte code:
    //   0: new 282	java/util/HashMap
    //   3: dup
    //   4: invokespecial 283	java/util/HashMap:<init>	()V
    //   7: astore_1
    //   8: aload_0
    //   9: getfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   12: invokevirtual 49	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   15: ldc 190
    //   17: iconst_4
    //   18: anewarray 53	java/lang/String
    //   21: dup
    //   22: iconst_0
    //   23: ldc 143
    //   25: aastore
    //   26: dup
    //   27: iconst_1
    //   28: ldc 98
    //   30: aastore
    //   31: dup
    //   32: iconst_2
    //   33: ldc 154
    //   35: aastore
    //   36: dup
    //   37: iconst_3
    //   38: ldc 192
    //   40: aastore
    //   41: aconst_null
    //   42: aconst_null
    //   43: aconst_null
    //   44: aconst_null
    //   45: ldc_w 285
    //   48: aconst_null
    //   49: invokevirtual 157	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   52: astore 6
    //   54: aload 6
    //   56: astore_3
    //   57: aload_3
    //   58: ifnull +16 -> 74
    //   61: aload_3
    //   62: invokeinterface 69 1 0
    //   67: istore 7
    //   69: iload 7
    //   71: ifne +19 -> 90
    //   74: aload_3
    //   75: ifnull +9 -> 84
    //   78: aload_3
    //   79: invokeinterface 79 1 0
    //   84: aload_1
    //   85: astore 5
    //   87: aload 5
    //   89: areturn
    //   90: aload_3
    //   91: invokeinterface 288 1 0
    //   96: ifeq +144 -> 240
    //   99: aload_3
    //   100: aload_3
    //   101: ldc 143
    //   103: invokeinterface 112 2 0
    //   108: invokeinterface 203 2 0
    //   113: astore 8
    //   115: aload_3
    //   116: aload_3
    //   117: ldc 98
    //   119: invokeinterface 112 2 0
    //   124: invokeinterface 116 2 0
    //   129: istore 9
    //   131: aload_3
    //   132: aload_3
    //   133: ldc 154
    //   135: invokeinterface 112 2 0
    //   140: invokeinterface 116 2 0
    //   145: istore 10
    //   147: aload_3
    //   148: aload_3
    //   149: ldc 192
    //   151: invokeinterface 112 2 0
    //   156: invokeinterface 203 2 0
    //   161: astore 11
    //   163: aload 11
    //   165: ifnonnull +57 -> 222
    //   168: aconst_null
    //   169: astore 13
    //   171: aload_1
    //   172: aload 8
    //   174: new 196	com/antivirus/core/b/b/a
    //   177: dup
    //   178: iload 9
    //   180: iload 10
    //   182: aload 13
    //   184: invokespecial 199	com/antivirus/core/b/b/a:<init>	(IILjava/lang/String;)V
    //   187: invokeinterface 294 3 0
    //   192: pop
    //   193: goto -103 -> 90
    //   196: astore_2
    //   197: ldc 213
    //   199: invokestatic 215	com/avg/toolkit/f/a:a	(Ljava/lang/String;)V
    //   202: aload_2
    //   203: invokestatic 218	com/avg/toolkit/f/a:a	(Ljava/lang/Throwable;)V
    //   206: aload_3
    //   207: ifnull +9 -> 216
    //   210: aload_3
    //   211: invokeinterface 79 1 0
    //   216: aload_1
    //   217: astore 5
    //   219: goto -132 -> 87
    //   222: aload 11
    //   224: ldc 205
    //   226: ldc 207
    //   228: invokevirtual 211	java/lang/String:replace	(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    //   231: astore 12
    //   233: aload 12
    //   235: astore 13
    //   237: goto -66 -> 171
    //   240: aload_3
    //   241: ifnull -25 -> 216
    //   244: aload_3
    //   245: invokeinterface 79 1 0
    //   250: goto -34 -> 216
    //   253: astore 4
    //   255: aconst_null
    //   256: astore_3
    //   257: aload_3
    //   258: ifnull +9 -> 267
    //   261: aload_3
    //   262: invokeinterface 79 1 0
    //   267: aload 4
    //   269: athrow
    //   270: astore 4
    //   272: goto -15 -> 257
    //   275: astore_2
    //   276: aconst_null
    //   277: astore_3
    //   278: goto -81 -> 197
    //
    // Exception table:
    //   from	to	target	type
    //   61	69	196	java/lang/Throwable
    //   90	193	196	java/lang/Throwable
    //   222	233	196	java/lang/Throwable
    //   8	54	253	finally
    //   61	69	270	finally
    //   90	193	270	finally
    //   197	206	270	finally
    //   222	233	270	finally
    //   8	54	275	java/lang/Throwable
  }

  // ERROR //
  public List c()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: new 297	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 298	java/util/ArrayList:<init>	()V
    //   9: astore_2
    //   10: aload_0
    //   11: getfield 28	com/antivirus/core/b/a/b:a	Landroid/database/sqlite/SQLiteOpenHelper;
    //   14: invokevirtual 49	android/database/sqlite/SQLiteOpenHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   17: astore 7
    //   19: iconst_1
    //   20: anewarray 53	java/lang/String
    //   23: dup
    //   24: iconst_0
    //   25: ldc 96
    //   27: aastore
    //   28: astore 8
    //   30: iconst_1
    //   31: anewarray 53	java/lang/String
    //   34: astore 9
    //   36: aload 9
    //   38: iconst_0
    //   39: iconst_1
    //   40: invokestatic 300	java/lang/String:valueOf	(I)Ljava/lang/String;
    //   43: aastore
    //   44: aload 7
    //   46: ldc 51
    //   48: aload 8
    //   50: ldc_w 302
    //   53: aload 9
    //   55: aconst_null
    //   56: aconst_null
    //   57: aconst_null
    //   58: invokevirtual 61	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   61: astore 10
    //   63: aload 10
    //   65: astore 4
    //   67: aload 4
    //   69: ifnull +61 -> 130
    //   72: aload 4
    //   74: invokeinterface 288 1 0
    //   79: ifeq +51 -> 130
    //   82: aload_2
    //   83: aload 4
    //   85: aload 4
    //   87: ldc 96
    //   89: invokeinterface 112 2 0
    //   94: invokeinterface 306 2 0
    //   99: invokestatic 311	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   102: invokeinterface 314 2 0
    //   107: pop
    //   108: goto -41 -> 67
    //   111: astore 11
    //   113: invokestatic 86	com/avg/toolkit/f/a:a	()V
    //   116: aload 4
    //   118: ifnull +10 -> 128
    //   121: aload 4
    //   123: invokeinterface 79 1 0
    //   128: aload_2
    //   129: areturn
    //   130: aload 4
    //   132: ifnull -4 -> 128
    //   135: aload 4
    //   137: invokeinterface 79 1 0
    //   142: goto -14 -> 128
    //   145: astore 6
    //   147: aload_1
    //   148: ifnull +9 -> 157
    //   151: aload_1
    //   152: invokeinterface 79 1 0
    //   157: aload 6
    //   159: athrow
    //   160: astore 5
    //   162: aload 4
    //   164: astore_1
    //   165: aload 5
    //   167: astore 6
    //   169: goto -22 -> 147
    //   172: astore_3
    //   173: aconst_null
    //   174: astore 4
    //   176: goto -63 -> 113
    //
    // Exception table:
    //   from	to	target	type
    //   72	108	111	java/lang/Exception
    //   10	63	145	finally
    //   72	108	160	finally
    //   113	116	160	finally
    //   10	63	172	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.b.a.b
 * JD-Core Version:    0.6.2
 */