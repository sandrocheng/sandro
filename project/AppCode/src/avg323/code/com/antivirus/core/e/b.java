package com.antivirus.core.e;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.DatabaseUtils.InsertHelper;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Locale;
import java.util.zip.Adler32;

public class b
{
  public static final Object a = new Object();
  public static ArrayList b;
  DatabaseUtils.InsertHelper c = null;
  Adler32 d = null;
  ContentValues e = new ContentValues();
  private SQLiteDatabase f = null;
  private a g = null;
  private Adler32 h = new Adler32();

  private void a(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    this.e.clear();
    if (!TextUtils.isEmpty(paramString))
    {
      String[] arrayOfString = paramString.split(":");
      if ((arrayOfString != null) && (arrayOfString.length >= 2) && (!TextUtils.isEmpty(arrayOfString[0])) && (!TextUtils.isEmpty(arrayOfString[1])))
      {
        this.e.put("_id", arrayOfString[0]);
        this.e.put("cat_name", arrayOfString[1]);
        paramSQLiteDatabase.insert("categories", null, this.e);
      }
    }
  }

  private void a(String paramString, d paramd, SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramd == d.d)
      c(paramString, paramd, paramSQLiteDatabase);
    while (true)
    {
      return;
      b(paramString, paramd, paramSQLiteDatabase);
    }
  }

  // ERROR //
  private e b(Context paramContext, d paramd, String paramString, int paramInt)
  {
    // Byte code:
    //   0: new 93	com/antivirus/core/e/e
    //   3: dup
    //   4: aload_0
    //   5: invokespecial 96	com/antivirus/core/e/e:<init>	(Lcom/antivirus/core/e/b;)V
    //   8: astore 5
    //   10: aload 5
    //   12: iconst_0
    //   13: putfield 99	com/antivirus/core/e/e:c	Z
    //   16: aload_0
    //   17: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   20: ifnonnull +44 -> 64
    //   23: aload_0
    //   24: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   27: ifnull +10 -> 37
    //   30: aload_0
    //   31: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   34: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   37: aload_0
    //   38: new 101	com/antivirus/core/e/a
    //   41: dup
    //   42: aload_1
    //   43: ldc 106
    //   45: aconst_null
    //   46: iconst_2
    //   47: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   50: putfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   53: aload_0
    //   54: aload_0
    //   55: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   58: invokevirtual 113	com/antivirus/core/e/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   61: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   64: aload_0
    //   65: getfield 39	com/antivirus/core/e/b:d	Ljava/util/zip/Adler32;
    //   68: ifnonnull +14 -> 82
    //   71: aload_0
    //   72: new 32	java/util/zip/Adler32
    //   75: dup
    //   76: invokespecial 33	java/util/zip/Adler32:<init>	()V
    //   79: putfield 39	com/antivirus/core/e/b:d	Ljava/util/zip/Adler32;
    //   82: getstatic 118	com/antivirus/core/e/c:a	[I
    //   85: aload_2
    //   86: invokevirtual 122	com/antivirus/core/e/d:ordinal	()I
    //   89: iaload
    //   90: tableswitch	default:+284 -> 374, 1:+226->316, 2:+233->323
    //   113: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   116: ifnull +252 -> 368
    //   119: aload_0
    //   120: getfield 39	com/antivirus/core/e/b:d	Ljava/util/zip/Adler32;
    //   123: invokevirtual 125	java/util/zip/Adler32:reset	()V
    //   126: aload_0
    //   127: getfield 39	com/antivirus/core/e/b:d	Ljava/util/zip/Adler32;
    //   130: aload_3
    //   131: invokevirtual 129	java/lang/String:getBytes	()[B
    //   134: invokevirtual 133	java/util/zip/Adler32:update	([B)V
    //   137: new 135	java/lang/StringBuilder
    //   140: dup
    //   141: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   144: aload_0
    //   145: getfield 39	com/antivirus/core/e/b:d	Ljava/util/zip/Adler32;
    //   148: invokevirtual 140	java/util/zip/Adler32:getValue	()J
    //   151: invokevirtual 144	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   154: ldc 146
    //   156: invokevirtual 149	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   159: invokevirtual 153	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   162: astore 11
    //   164: aload_0
    //   165: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   168: aload 10
    //   170: iconst_2
    //   171: anewarray 58	java/lang/String
    //   174: dup
    //   175: iconst_0
    //   176: ldc 155
    //   178: aastore
    //   179: dup
    //   180: iconst_1
    //   181: ldc 157
    //   183: aastore
    //   184: ldc 159
    //   186: iconst_2
    //   187: anewarray 58	java/lang/String
    //   190: dup
    //   191: iconst_0
    //   192: aload 11
    //   194: aastore
    //   195: dup
    //   196: iconst_1
    //   197: aload_3
    //   198: aastore
    //   199: aconst_null
    //   200: aconst_null
    //   201: ldc 161
    //   203: invokevirtual 165	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   206: astore 12
    //   208: aload 12
    //   210: astore 7
    //   212: aload 7
    //   214: ifnull +123 -> 337
    //   217: aload 7
    //   219: invokeinterface 170 1 0
    //   224: ifle +113 -> 337
    //   227: aload 7
    //   229: invokeinterface 174 1 0
    //   234: ifeq +96 -> 330
    //   237: aload 7
    //   239: iconst_1
    //   240: invokeinterface 178 2 0
    //   245: iload 4
    //   247: if_icmpge -20 -> 227
    //   250: aload 5
    //   252: iconst_1
    //   253: putfield 99	com/antivirus/core/e/e:c	Z
    //   256: aload 5
    //   258: aload_3
    //   259: putfield 181	com/antivirus/core/e/e:a	Ljava/lang/String;
    //   262: aload 5
    //   264: aload 7
    //   266: iconst_1
    //   267: invokeinterface 178 2 0
    //   272: putfield 184	com/antivirus/core/e/e:b	I
    //   275: goto -48 -> 227
    //   278: astore 6
    //   280: aload 6
    //   282: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   285: new 91	java/lang/Exception
    //   288: dup
    //   289: ldc 191
    //   291: invokespecial 194	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   294: athrow
    //   295: astore 8
    //   297: aload 7
    //   299: astore 9
    //   301: aload 9
    //   303: ifnull +10 -> 313
    //   306: aload 9
    //   308: invokeinterface 195 1 0
    //   313: aload 8
    //   315: athrow
    //   316: ldc 197
    //   318: astore 10
    //   320: goto -208 -> 112
    //   323: ldc 199
    //   325: astore 10
    //   327: goto -215 -> 112
    //   330: aload 7
    //   332: invokeinterface 195 1 0
    //   337: aload 7
    //   339: ifnull +10 -> 349
    //   342: aload 7
    //   344: invokeinterface 195 1 0
    //   349: aload 5
    //   351: areturn
    //   352: astore 8
    //   354: aconst_null
    //   355: astore 9
    //   357: goto -56 -> 301
    //   360: astore 6
    //   362: aconst_null
    //   363: astore 7
    //   365: goto -85 -> 280
    //   368: aconst_null
    //   369: astore 7
    //   371: goto -34 -> 337
    //   374: ldc 197
    //   376: astore 10
    //   378: goto -266 -> 112
    //
    // Exception table:
    //   from	to	target	type
    //   217	275	278	java/lang/Exception
    //   330	337	278	java/lang/Exception
    //   217	275	295	finally
    //   280	295	295	finally
    //   330	337	295	finally
    //   16	208	352	finally
    //   16	208	360	java/lang/Exception
  }

  // ERROR //
  private void b(Context paramContext, com.antivirus.core.b paramb, File paramFile, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: aconst_null
    //   4: astore 6
    //   6: aconst_null
    //   7: astore 7
    //   9: aconst_null
    //   10: astore 8
    //   12: invokestatic 205	java/lang/System:currentTimeMillis	()J
    //   15: lstore 9
    //   17: new 207	java/io/FileInputStream
    //   20: dup
    //   21: aload_3
    //   22: invokespecial 210	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   25: astore 11
    //   27: iload 4
    //   29: ifeq +147 -> 176
    //   32: new 212	java/util/zip/GZIPInputStream
    //   35: dup
    //   36: aload 11
    //   38: invokespecial 215	java/util/zip/GZIPInputStream:<init>	(Ljava/io/InputStream;)V
    //   41: astore 21
    //   43: new 217	java/io/InputStreamReader
    //   46: dup
    //   47: aload 21
    //   49: invokespecial 218	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   52: astore 61
    //   54: aload 21
    //   56: astore 13
    //   58: aload 61
    //   60: astore 12
    //   62: new 220	java/io/BufferedReader
    //   65: dup
    //   66: aload 12
    //   68: ldc 221
    //   70: invokespecial 224	java/io/BufferedReader:<init>	(Ljava/io/Reader;I)V
    //   73: astore 14
    //   75: iconst_0
    //   76: istore 15
    //   78: aconst_null
    //   79: astore 16
    //   81: aconst_null
    //   82: astore 17
    //   84: aconst_null
    //   85: astore 18
    //   87: aconst_null
    //   88: astore 19
    //   90: iload 15
    //   92: ifne +898 -> 990
    //   95: aload 14
    //   97: invokevirtual 227	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   100: astore 38
    //   102: aload 38
    //   104: invokestatic 54	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   107: ifne -17 -> 90
    //   110: aload 38
    //   112: invokevirtual 230	java/lang/String:trim	()Ljava/lang/String;
    //   115: astore 39
    //   117: aload 39
    //   119: ldc 232
    //   121: invokevirtual 236	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   124: ifeq +536 -> 660
    //   127: aload_0
    //   128: getfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   131: ifnull +15 -> 146
    //   134: aload_0
    //   135: getfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   138: invokevirtual 239	android/database/DatabaseUtils$InsertHelper:close	()V
    //   141: aload_0
    //   142: aconst_null
    //   143: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   146: aload 39
    //   148: ldc 241
    //   150: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   153: ifeq +147 -> 300
    //   156: getstatic 250	com/antivirus/core/e/f:b	Lcom/antivirus/core/e/f;
    //   159: astore 60
    //   161: aload_0
    //   162: aconst_null
    //   163: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   166: aload 60
    //   168: astore 18
    //   170: aconst_null
    //   171: astore 16
    //   173: goto -83 -> 90
    //   176: new 217	java/io/InputStreamReader
    //   179: dup
    //   180: aload 11
    //   182: invokespecial 218	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;)V
    //   185: astore 12
    //   187: aconst_null
    //   188: astore 13
    //   190: goto -128 -> 62
    //   193: astore 20
    //   195: aconst_null
    //   196: astore 21
    //   198: aload 11
    //   200: astore 22
    //   202: aload 20
    //   204: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   207: new 91	java/lang/Exception
    //   210: dup
    //   211: invokespecial 251	java/lang/Exception:<init>	()V
    //   214: athrow
    //   215: astore 23
    //   217: aload 22
    //   219: astore 11
    //   221: aload 21
    //   223: astore 13
    //   225: aload 5
    //   227: astore 12
    //   229: aload 6
    //   231: astore 14
    //   233: aload 7
    //   235: astore 19
    //   237: aload 19
    //   239: ifnull +8 -> 247
    //   242: aload 19
    //   244: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   247: aload 8
    //   249: ifnull +8 -> 257
    //   252: aload 8
    //   254: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   257: aload 14
    //   259: ifnull +8 -> 267
    //   262: aload 14
    //   264: invokevirtual 253	java/io/BufferedReader:close	()V
    //   267: aload 12
    //   269: ifnull +8 -> 277
    //   272: aload 12
    //   274: invokevirtual 254	java/io/InputStreamReader:close	()V
    //   277: aload 13
    //   279: ifnull +8 -> 287
    //   282: aload 13
    //   284: invokevirtual 255	java/util/zip/GZIPInputStream:close	()V
    //   287: aload 11
    //   289: ifnull +8 -> 297
    //   292: aload 11
    //   294: invokevirtual 256	java/io/FileInputStream:close	()V
    //   297: aload 23
    //   299: athrow
    //   300: aload 39
    //   302: ldc_w 258
    //   305: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   308: ifeq +23 -> 331
    //   311: getstatic 260	com/antivirus/core/e/f:c	Lcom/antivirus/core/e/f;
    //   314: astore 59
    //   316: aload_0
    //   317: aconst_null
    //   318: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   321: aload 59
    //   323: astore 18
    //   325: aconst_null
    //   326: astore 16
    //   328: goto -238 -> 90
    //   331: aload 39
    //   333: ldc_w 262
    //   336: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   339: ifeq +40 -> 379
    //   342: getstatic 264	com/antivirus/core/e/f:a	Lcom/antivirus/core/e/f;
    //   345: astore 57
    //   347: getstatic 266	com/antivirus/core/e/d:f	Lcom/antivirus/core/e/d;
    //   350: astore 58
    //   352: aload_0
    //   353: new 238	android/database/DatabaseUtils$InsertHelper
    //   356: dup
    //   357: aload 19
    //   359: ldc_w 268
    //   362: invokespecial 271	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   365: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   368: aload 58
    //   370: astore 16
    //   372: aload 57
    //   374: astore 18
    //   376: goto -286 -> 90
    //   379: aload 39
    //   381: ldc_w 273
    //   384: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   387: ifeq +39 -> 426
    //   390: getstatic 264	com/antivirus/core/e/f:a	Lcom/antivirus/core/e/f;
    //   393: astore 55
    //   395: getstatic 275	com/antivirus/core/e/d:a	Lcom/antivirus/core/e/d;
    //   398: astore 56
    //   400: aload_0
    //   401: new 238	android/database/DatabaseUtils$InsertHelper
    //   404: dup
    //   405: aload 19
    //   407: ldc 199
    //   409: invokespecial 271	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   412: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   415: aload 56
    //   417: astore 16
    //   419: aload 55
    //   421: astore 18
    //   423: goto -333 -> 90
    //   426: aload 39
    //   428: ldc_w 277
    //   431: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   434: ifeq +39 -> 473
    //   437: getstatic 264	com/antivirus/core/e/f:a	Lcom/antivirus/core/e/f;
    //   440: astore 53
    //   442: getstatic 279	com/antivirus/core/e/d:b	Lcom/antivirus/core/e/d;
    //   445: astore 54
    //   447: aload_0
    //   448: new 238	android/database/DatabaseUtils$InsertHelper
    //   451: dup
    //   452: aload 19
    //   454: ldc 197
    //   456: invokespecial 271	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   459: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   462: aload 54
    //   464: astore 16
    //   466: aload 53
    //   468: astore 18
    //   470: goto -380 -> 90
    //   473: aload 39
    //   475: ldc_w 281
    //   478: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   481: ifeq +40 -> 521
    //   484: getstatic 264	com/antivirus/core/e/f:a	Lcom/antivirus/core/e/f;
    //   487: astore 51
    //   489: getstatic 283	com/antivirus/core/e/d:c	Lcom/antivirus/core/e/d;
    //   492: astore 52
    //   494: aload_0
    //   495: new 238	android/database/DatabaseUtils$InsertHelper
    //   498: dup
    //   499: aload 19
    //   501: ldc_w 285
    //   504: invokespecial 271	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   507: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   510: aload 52
    //   512: astore 16
    //   514: aload 51
    //   516: astore 18
    //   518: goto -428 -> 90
    //   521: aload 39
    //   523: ldc_w 287
    //   526: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   529: ifeq +40 -> 569
    //   532: getstatic 264	com/antivirus/core/e/f:a	Lcom/antivirus/core/e/f;
    //   535: astore 49
    //   537: getstatic 84	com/antivirus/core/e/d:d	Lcom/antivirus/core/e/d;
    //   540: astore 50
    //   542: aload_0
    //   543: new 238	android/database/DatabaseUtils$InsertHelper
    //   546: dup
    //   547: aload 19
    //   549: ldc_w 289
    //   552: invokespecial 271	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   555: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   558: aload 50
    //   560: astore 16
    //   562: aload 49
    //   564: astore 18
    //   566: goto -476 -> 90
    //   569: aload 39
    //   571: ldc_w 291
    //   574: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   577: ifeq +40 -> 617
    //   580: getstatic 264	com/antivirus/core/e/f:a	Lcom/antivirus/core/e/f;
    //   583: astore 47
    //   585: getstatic 293	com/antivirus/core/e/d:e	Lcom/antivirus/core/e/d;
    //   588: astore 48
    //   590: aload_0
    //   591: new 238	android/database/DatabaseUtils$InsertHelper
    //   594: dup
    //   595: aload 19
    //   597: ldc_w 295
    //   600: invokespecial 271	android/database/DatabaseUtils$InsertHelper:<init>	(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    //   603: putfield 37	com/antivirus/core/e/b:c	Landroid/database/DatabaseUtils$InsertHelper;
    //   606: aload 48
    //   608: astore 16
    //   610: aload 47
    //   612: astore 18
    //   614: goto -524 -> 90
    //   617: aload 39
    //   619: ldc_w 297
    //   622: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   625: ifeq +972 -> 1597
    //   628: getstatic 299	com/antivirus/core/e/f:d	Lcom/antivirus/core/e/f;
    //   631: astore 46
    //   633: aload 17
    //   635: getstatic 304	com/antivirus/core/e/g:b	Lcom/antivirus/core/e/g;
    //   638: if_acmpne +949 -> 1587
    //   641: aload 19
    //   643: ldc_w 306
    //   646: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   649: aload 19
    //   651: ldc_w 311
    //   654: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   657: goto +930 -> 1587
    //   660: aload 18
    //   662: ifnull -572 -> 90
    //   665: aload 16
    //   667: ifnonnull +259 -> 926
    //   670: getstatic 313	com/antivirus/core/e/c:b	[I
    //   673: aload 18
    //   675: invokevirtual 314	com/antivirus/core/e/f:ordinal	()I
    //   678: iaload
    //   679: tableswitch	default:+927 -> 1606, 1:+25->704, 2:+171->850, 3:+236->915
    //   705: dload_1
    //   706: ldc_w 316
    //   709: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   712: ifeq +54 -> 766
    //   715: aload_0
    //   716: aload_1
    //   717: invokespecial 320	com/antivirus/core/e/b:l	(Landroid/content/Context;)V
    //   720: new 101	com/antivirus/core/e/a
    //   723: dup
    //   724: aload_1
    //   725: ldc 106
    //   727: aconst_null
    //   728: iconst_2
    //   729: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   732: astore 43
    //   734: aload 43
    //   736: invokevirtual 323	com/antivirus/core/e/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   739: astore 44
    //   741: aload 44
    //   743: invokevirtual 326	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   746: getstatic 328	com/antivirus/core/e/g:a	Lcom/antivirus/core/e/g;
    //   749: astore 45
    //   751: aload 45
    //   753: astore 17
    //   755: aload 44
    //   757: astore 19
    //   759: aload 43
    //   761: astore 8
    //   763: goto -673 -> 90
    //   766: aload 39
    //   768: ldc_w 330
    //   771: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   774: ifeq +54 -> 828
    //   777: aload_0
    //   778: aload_1
    //   779: invokespecial 333	com/antivirus/core/e/b:k	(Landroid/content/Context;)V
    //   782: new 101	com/antivirus/core/e/a
    //   785: dup
    //   786: aload_1
    //   787: ldc 106
    //   789: aconst_null
    //   790: iconst_2
    //   791: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   794: astore 40
    //   796: aload 40
    //   798: invokevirtual 323	com/antivirus/core/e/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   801: astore 41
    //   803: aload 41
    //   805: invokevirtual 326	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   808: getstatic 304	com/antivirus/core/e/g:b	Lcom/antivirus/core/e/g;
    //   811: astore 42
    //   813: aload 42
    //   815: astore 17
    //   817: aload 41
    //   819: astore 19
    //   821: aload 40
    //   823: astore 8
    //   825: goto -735 -> 90
    //   828: aload 39
    //   830: ldc_w 335
    //   833: invokevirtual 245	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   836: ifeq -746 -> 90
    //   839: iconst_1
    //   840: istore 15
    //   842: getstatic 337	com/antivirus/core/e/g:c	Lcom/antivirus/core/e/g;
    //   845: astore 17
    //   847: goto -757 -> 90
    //   850: aload_0
    //   851: aload 39
    //   853: aload 19
    //   855: invokespecial 339	com/antivirus/core/e/b:b	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    //   858: aload 19
    //   860: invokevirtual 342	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   863: aload 19
    //   865: invokevirtual 345	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   868: aload 17
    //   870: getstatic 304	com/antivirus/core/e/g:b	Lcom/antivirus/core/e/g;
    //   873: if_acmpne +11 -> 884
    //   876: aload 19
    //   878: ldc_w 347
    //   881: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   884: aload 19
    //   886: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   889: aload 8
    //   891: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   894: aconst_null
    //   895: astore 8
    //   897: aload_2
    //   898: aload 39
    //   900: invokevirtual 351	com/antivirus/core/b:l	(Ljava/lang/String;)V
    //   903: iconst_1
    //   904: istore 15
    //   906: aconst_null
    //   907: astore 8
    //   909: aconst_null
    //   910: astore 19
    //   912: goto -822 -> 90
    //   915: aload_0
    //   916: aload 39
    //   918: aload 19
    //   920: invokespecial 353	com/antivirus/core/e/b:a	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase;)V
    //   923: goto -833 -> 90
    //   926: aload 17
    //   928: ifnull -838 -> 90
    //   931: getstatic 355	com/antivirus/core/e/c:c	[I
    //   934: aload 17
    //   936: invokevirtual 356	com/antivirus/core/e/g:ordinal	()I
    //   939: iaload
    //   940: tableswitch	default:+697 -> 1637, 1:+24->964, 2:+37->977
    //   965: aload 39
    //   967: aload 16
    //   969: aload 19
    //   971: invokespecial 358	com/antivirus/core/e/b:d	(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    //   974: goto -884 -> 90
    //   977: aload_0
    //   978: aload 39
    //   980: aload 16
    //   982: aload 19
    //   984: invokespecial 360	com/antivirus/core/e/b:a	(Ljava/lang/String;Lcom/antivirus/core/e/d;Landroid/database/sqlite/SQLiteDatabase;)V
    //   987: goto -897 -> 90
    //   990: aload 14
    //   992: invokevirtual 253	java/io/BufferedReader:close	()V
    //   995: aload 12
    //   997: invokevirtual 254	java/io/InputStreamReader:close	()V
    //   1000: aload 13
    //   1002: ifnull +578 -> 1580
    //   1005: aload 13
    //   1007: invokevirtual 255	java/util/zip/GZIPInputStream:close	()V
    //   1010: aconst_null
    //   1011: astore 21
    //   1013: aload 11
    //   1015: invokevirtual 256	java/io/FileInputStream:close	()V
    //   1018: aload 19
    //   1020: ifnull +8 -> 1028
    //   1023: aload 19
    //   1025: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   1028: aload 8
    //   1030: ifnull +8 -> 1038
    //   1033: aload 8
    //   1035: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   1038: iconst_0
    //   1039: ifeq +7 -> 1046
    //   1042: aconst_null
    //   1043: invokevirtual 253	java/io/BufferedReader:close	()V
    //   1046: iconst_0
    //   1047: ifeq +7 -> 1054
    //   1050: aconst_null
    //   1051: invokevirtual 254	java/io/InputStreamReader:close	()V
    //   1054: aload 21
    //   1056: ifnull +8 -> 1064
    //   1059: aload 21
    //   1061: invokevirtual 255	java/util/zip/GZIPInputStream:close	()V
    //   1064: iconst_0
    //   1065: ifeq +7 -> 1072
    //   1068: aconst_null
    //   1069: invokevirtual 256	java/io/FileInputStream:close	()V
    //   1072: invokestatic 205	java/lang/System:currentTimeMillis	()J
    //   1075: lload 9
    //   1077: lsub
    //   1078: pop2
    //   1079: return
    //   1080: astore 29
    //   1082: goto -835 -> 247
    //   1085: astore 28
    //   1087: goto -830 -> 257
    //   1090: astore 27
    //   1092: goto -825 -> 267
    //   1095: astore 26
    //   1097: goto -820 -> 277
    //   1100: astore 25
    //   1102: goto -815 -> 287
    //   1105: astore 24
    //   1107: goto -810 -> 297
    //   1110: astore 37
    //   1112: goto -84 -> 1028
    //   1115: astore 36
    //   1117: goto -79 -> 1038
    //   1120: astore 35
    //   1122: goto -76 -> 1046
    //   1125: astore 34
    //   1127: goto -73 -> 1054
    //   1130: astore 33
    //   1132: goto -68 -> 1064
    //   1135: astore 32
    //   1137: goto -65 -> 1072
    //   1140: astore 23
    //   1142: aconst_null
    //   1143: astore 8
    //   1145: aconst_null
    //   1146: astore 19
    //   1148: aconst_null
    //   1149: astore 14
    //   1151: aconst_null
    //   1152: astore 12
    //   1154: aconst_null
    //   1155: astore 13
    //   1157: aconst_null
    //   1158: astore 11
    //   1160: goto -923 -> 237
    //   1163: astore 23
    //   1165: aconst_null
    //   1166: astore 8
    //   1168: aconst_null
    //   1169: astore 19
    //   1171: aconst_null
    //   1172: astore 14
    //   1174: aconst_null
    //   1175: astore 12
    //   1177: aconst_null
    //   1178: astore 13
    //   1180: goto -943 -> 237
    //   1183: astore 23
    //   1185: aload 21
    //   1187: astore 13
    //   1189: aconst_null
    //   1190: astore 8
    //   1192: aconst_null
    //   1193: astore 19
    //   1195: aconst_null
    //   1196: astore 14
    //   1198: aconst_null
    //   1199: astore 12
    //   1201: goto -964 -> 237
    //   1204: astore 23
    //   1206: aconst_null
    //   1207: astore 8
    //   1209: aconst_null
    //   1210: astore 19
    //   1212: aconst_null
    //   1213: astore 14
    //   1215: goto -978 -> 237
    //   1218: astore 23
    //   1220: aload 43
    //   1222: astore 8
    //   1224: goto -987 -> 237
    //   1227: astore 23
    //   1229: aload 44
    //   1231: astore 19
    //   1233: aload 43
    //   1235: astore 8
    //   1237: goto -1000 -> 237
    //   1240: astore 23
    //   1242: aload 40
    //   1244: astore 8
    //   1246: goto -1009 -> 237
    //   1249: astore 23
    //   1251: aload 41
    //   1253: astore 19
    //   1255: aload 40
    //   1257: astore 8
    //   1259: goto -1022 -> 237
    //   1262: astore 23
    //   1264: aconst_null
    //   1265: astore 19
    //   1267: goto -1030 -> 237
    //   1270: astore 23
    //   1272: aconst_null
    //   1273: astore 14
    //   1275: goto -1038 -> 237
    //   1278: astore 23
    //   1280: aconst_null
    //   1281: astore 14
    //   1283: aconst_null
    //   1284: astore 12
    //   1286: goto -1049 -> 237
    //   1289: astore 23
    //   1291: aload 21
    //   1293: astore 13
    //   1295: aconst_null
    //   1296: astore 14
    //   1298: aconst_null
    //   1299: astore 12
    //   1301: goto -1064 -> 237
    //   1304: astore 20
    //   1306: aconst_null
    //   1307: astore 8
    //   1309: aconst_null
    //   1310: astore 7
    //   1312: aconst_null
    //   1313: astore 6
    //   1315: aconst_null
    //   1316: astore 5
    //   1318: aconst_null
    //   1319: astore 21
    //   1321: aconst_null
    //   1322: astore 22
    //   1324: goto -1122 -> 202
    //   1327: astore 20
    //   1329: aload 11
    //   1331: astore 22
    //   1333: aconst_null
    //   1334: astore 8
    //   1336: aconst_null
    //   1337: astore 7
    //   1339: aconst_null
    //   1340: astore 6
    //   1342: aconst_null
    //   1343: astore 5
    //   1345: goto -1143 -> 202
    //   1348: astore 20
    //   1350: aload 12
    //   1352: astore 5
    //   1354: aload 13
    //   1356: astore 21
    //   1358: aload 11
    //   1360: astore 22
    //   1362: aconst_null
    //   1363: astore 8
    //   1365: aconst_null
    //   1366: astore 7
    //   1368: aconst_null
    //   1369: astore 6
    //   1371: goto -1169 -> 202
    //   1374: astore 20
    //   1376: aload 43
    //   1378: astore 8
    //   1380: aload 19
    //   1382: astore 7
    //   1384: aload 14
    //   1386: astore 6
    //   1388: aload 12
    //   1390: astore 5
    //   1392: aload 13
    //   1394: astore 21
    //   1396: aload 11
    //   1398: astore 22
    //   1400: goto -1198 -> 202
    //   1403: astore 20
    //   1405: aload 14
    //   1407: astore 6
    //   1409: aload 12
    //   1411: astore 5
    //   1413: aload 13
    //   1415: astore 21
    //   1417: aload 11
    //   1419: astore 22
    //   1421: aload 44
    //   1423: astore 7
    //   1425: aload 43
    //   1427: astore 8
    //   1429: goto -1227 -> 202
    //   1432: astore 20
    //   1434: aload 40
    //   1436: astore 8
    //   1438: aload 19
    //   1440: astore 7
    //   1442: aload 14
    //   1444: astore 6
    //   1446: aload 12
    //   1448: astore 5
    //   1450: aload 13
    //   1452: astore 21
    //   1454: aload 11
    //   1456: astore 22
    //   1458: goto -1256 -> 202
    //   1461: astore 20
    //   1463: aload 14
    //   1465: astore 6
    //   1467: aload 12
    //   1469: astore 5
    //   1471: aload 13
    //   1473: astore 21
    //   1475: aload 11
    //   1477: astore 22
    //   1479: aload 41
    //   1481: astore 7
    //   1483: aload 40
    //   1485: astore 8
    //   1487: goto -1285 -> 202
    //   1490: astore 20
    //   1492: aload 14
    //   1494: astore 6
    //   1496: aload 12
    //   1498: astore 5
    //   1500: aload 13
    //   1502: astore 21
    //   1504: aload 11
    //   1506: astore 22
    //   1508: aconst_null
    //   1509: astore 7
    //   1511: goto -1309 -> 202
    //   1514: astore 20
    //   1516: aload 12
    //   1518: astore 5
    //   1520: aload 13
    //   1522: astore 21
    //   1524: aload 11
    //   1526: astore 22
    //   1528: aload 19
    //   1530: astore 7
    //   1532: aconst_null
    //   1533: astore 6
    //   1535: goto -1333 -> 202
    //   1538: astore 20
    //   1540: aload 13
    //   1542: astore 21
    //   1544: aload 11
    //   1546: astore 22
    //   1548: aload 19
    //   1550: astore 7
    //   1552: aconst_null
    //   1553: astore 6
    //   1555: aconst_null
    //   1556: astore 5
    //   1558: goto -1356 -> 202
    //   1561: astore 20
    //   1563: aload 11
    //   1565: astore 22
    //   1567: aload 19
    //   1569: astore 7
    //   1571: aconst_null
    //   1572: astore 6
    //   1574: aconst_null
    //   1575: astore 5
    //   1577: goto -1375 -> 202
    //   1580: aload 13
    //   1582: astore 21
    //   1584: goto -571 -> 1013
    //   1587: aload 46
    //   1589: astore 18
    //   1591: aconst_null
    //   1592: astore 16
    //   1594: goto -1504 -> 90
    //   1597: aconst_null
    //   1598: astore 18
    //   1600: aconst_null
    //   1601: astore 16
    //   1603: goto -1513 -> 90
    //   1606: iconst_1
    //   1607: istore 15
    //   1609: goto -1519 -> 90
    //   1612: astore 20
    //   1614: aload 19
    //   1616: astore 7
    //   1618: aload 14
    //   1620: astore 6
    //   1622: aload 12
    //   1624: astore 5
    //   1626: aload 13
    //   1628: astore 21
    //   1630: aload 11
    //   1632: astore 22
    //   1634: goto -1432 -> 202
    //   1637: iconst_1
    //   1638: istore 15
    //   1640: goto -1550 -> 90
    //   1643: astore 23
    //   1645: goto -1408 -> 237
    //
    // Exception table:
    //   from	to	target	type
    //   32	43	193	java/lang/Exception
    //   176	187	193	java/lang/Exception
    //   202	215	215	finally
    //   242	247	1080	java/lang/Exception
    //   252	257	1085	java/lang/Exception
    //   262	267	1090	java/lang/Exception
    //   272	277	1095	java/lang/Exception
    //   282	287	1100	java/lang/Exception
    //   292	297	1105	java/lang/Exception
    //   1023	1028	1110	java/lang/Exception
    //   1033	1038	1115	java/lang/Exception
    //   1042	1046	1120	java/lang/Exception
    //   1050	1054	1125	java/lang/Exception
    //   1059	1064	1130	java/lang/Exception
    //   1068	1072	1135	java/lang/Exception
    //   17	27	1140	finally
    //   32	43	1163	finally
    //   176	187	1163	finally
    //   43	54	1183	finally
    //   62	75	1204	finally
    //   734	741	1218	finally
    //   741	751	1227	finally
    //   796	803	1240	finally
    //   803	813	1249	finally
    //   889	903	1262	finally
    //   995	1000	1270	finally
    //   1005	1010	1278	finally
    //   1013	1018	1289	finally
    //   17	27	1304	java/lang/Exception
    //   43	54	1327	java/lang/Exception
    //   62	75	1348	java/lang/Exception
    //   734	741	1374	java/lang/Exception
    //   741	751	1403	java/lang/Exception
    //   796	803	1432	java/lang/Exception
    //   803	813	1461	java/lang/Exception
    //   889	903	1490	java/lang/Exception
    //   995	1000	1514	java/lang/Exception
    //   1005	1010	1538	java/lang/Exception
    //   1013	1018	1561	java/lang/Exception
    //   95	166	1612	java/lang/Exception
    //   300	734	1612	java/lang/Exception
    //   766	796	1612	java/lang/Exception
    //   828	889	1612	java/lang/Exception
    //   915	995	1612	java/lang/Exception
    //   95	166	1643	finally
    //   300	734	1643	finally
    //   766	796	1643	finally
    //   828	889	1643	finally
    //   915	995	1643	finally
  }

  private void b(String paramString, SQLiteDatabase paramSQLiteDatabase)
  {
    this.e.clear();
    if (!TextUtils.isEmpty(paramString))
    {
      this.e.put("settings_value", Long.valueOf(Long.parseLong(paramString)));
      this.e.put("settings_key", "version");
      if (paramSQLiteDatabase.update("settings", this.e, "settings_key=?", new String[] { "version" }) == 0)
        paramSQLiteDatabase.insert("settings", null, this.e);
      this.e.clear();
    }
  }

  private void b(String paramString, d paramd, SQLiteDatabase paramSQLiteDatabase)
  {
    switch (c.a[paramd.ordinal()])
    {
    case 3:
    default:
    case 1:
    case 6:
    case 2:
    case 4:
    case 5:
    }
    while (true)
    {
      return;
      String str = "manifestsig";
      label53: this.h.reset();
      this.e.clear();
      if (str != null)
      {
        String[] arrayOfString1;
        while (true)
        {
          try
          {
            if (TextUtils.isEmpty(paramString))
              break;
            arrayOfString1 = paramString.substring(1).split(":");
            if ((arrayOfString1 == null) || (arrayOfString1.length < 2) || (TextUtils.isEmpty(arrayOfString1[0])) || (TextUtils.isEmpty(arrayOfString1[1])))
              break;
            if ('+' != paramString.charAt(0))
              break label318;
            this.e.put("cat", arrayOfString1[0]);
            this.e.put("sha", arrayOfString1[1]);
            if ((paramd != d.a) && (paramd != d.b))
              break label270;
            this.h.update(arrayOfString1[1].getBytes());
            this.e.put("adler", Long.valueOf(this.h.getValue()));
            this.c.insert(this.e);
            this.e.clear();
          }
          catch (Exception localException)
          {
            com.avg.toolkit.f.a.a(localException);
          }
          break;
          str = "bpacksig";
          break label53;
          str = "classessig";
          break label53;
          str = "mediasig";
          break label53;
          str = "emgssig";
          break label53;
          label270: if (((paramd == d.c) || (paramd == d.f)) && (arrayOfString1.length >= 3) && (!TextUtils.isEmpty(arrayOfString1[2])))
            this.e.put("dry_wet", arrayOfString1[2]);
        }
        label318: if ('-' == paramString.charAt(0))
          if (((paramd == d.c) || (paramd == d.f)) && (arrayOfString1.length >= 3) && (!TextUtils.isEmpty(arrayOfString1[2])))
          {
            String[] arrayOfString4 = new String[3];
            arrayOfString4[0] = arrayOfString1[1];
            arrayOfString4[1] = arrayOfString1[0];
            arrayOfString4[2] = arrayOfString1[2];
            paramSQLiteDatabase.delete(str, "sha=? and cat=? and dry_wet=?", arrayOfString4);
          }
          else if ((paramd == d.a) || (paramd == d.b))
          {
            this.h.update(arrayOfString1[1].getBytes());
            String[] arrayOfString2 = new String[3];
            arrayOfString2[0] = (this.h.getValue() + "");
            arrayOfString2[1] = arrayOfString1[1];
            arrayOfString2[2] = arrayOfString1[0];
            paramSQLiteDatabase.delete(str, "adler=? and sha=? and cat=?", arrayOfString2);
          }
          else
          {
            String[] arrayOfString3 = new String[2];
            arrayOfString3[0] = arrayOfString1[1];
            arrayOfString3[1] = arrayOfString1[0];
            paramSQLiteDatabase.delete(str, "sha=? and cat=?", arrayOfString3);
          }
      }
    }
  }

  private void c(String paramString, d paramd, SQLiteDatabase paramSQLiteDatabase)
  {
    switch (c.a[paramd.ordinal()])
    {
    default:
    case 3:
    }
    while (true)
    {
      return;
      this.e.clear();
      if ("spamsig" != null)
      {
        try
        {
          if (TextUtils.isEmpty(paramString))
            continue;
          if ('+' != paramString.charAt(0))
            break label105;
          this.e.put("sha", paramString.substring(1));
          this.c.insert(this.e);
          this.e.clear();
        }
        catch (Exception localException)
        {
          com.avg.toolkit.f.a.a(localException);
        }
        continue;
        label105: if ('-' == paramString.charAt(0))
        {
          String[] arrayOfString = new String[1];
          arrayOfString[0] = paramString.substring(1);
          paramSQLiteDatabase.delete("spamsig", "sha=?", arrayOfString);
        }
      }
    }
  }

  private void d(String paramString, d paramd, SQLiteDatabase paramSQLiteDatabase)
  {
    if (paramd == d.d)
      e(paramString, paramd, paramSQLiteDatabase);
    while (true)
    {
      return;
      f(paramString, paramd, paramSQLiteDatabase);
    }
  }

  private void e(String paramString, d paramd, SQLiteDatabase paramSQLiteDatabase)
  {
    if (this.c == null);
    while (true)
    {
      return;
      this.e.clear();
      this.h.reset();
      try
      {
        if (!TextUtils.isEmpty(paramString))
        {
          this.e.put("sha", paramString);
          this.c.insert(this.e);
          this.e.clear();
        }
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
    }
  }

  // ERROR //
  private void f(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 101	com/antivirus/core/e/a
    //   5: dup
    //   6: aload_1
    //   7: ldc 106
    //   9: aconst_null
    //   10: iconst_2
    //   11: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   14: astore_3
    //   15: aload_3
    //   16: invokevirtual 323	com/antivirus/core/e/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   19: astore_2
    //   20: aload_2
    //   21: invokevirtual 326	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   24: aload_2
    //   25: ldc_w 419
    //   28: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   31: aload_2
    //   32: ldc_w 421
    //   35: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   38: aload_2
    //   39: invokevirtual 342	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   42: aload_2
    //   43: invokevirtual 345	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   46: aload_2
    //   47: ifnull +7 -> 54
    //   50: aload_2
    //   51: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   54: aload_3
    //   55: ifnull +7 -> 62
    //   58: aload_3
    //   59: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   62: return
    //   63: astore 4
    //   65: aconst_null
    //   66: astore_3
    //   67: aload 4
    //   69: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   72: aload_2
    //   73: ifnull +7 -> 80
    //   76: aload_2
    //   77: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   80: aload_3
    //   81: ifnull -19 -> 62
    //   84: aload_3
    //   85: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   88: goto -26 -> 62
    //   91: astore 5
    //   93: aconst_null
    //   94: astore_3
    //   95: aload_2
    //   96: ifnull +7 -> 103
    //   99: aload_2
    //   100: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   103: aload_3
    //   104: ifnull +7 -> 111
    //   107: aload_3
    //   108: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   111: aload 5
    //   113: athrow
    //   114: astore 5
    //   116: goto -21 -> 95
    //   119: astore 4
    //   121: goto -54 -> 67
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	63	java/lang/Exception
    //   2	15	91	finally
    //   15	46	114	finally
    //   67	72	114	finally
    //   15	46	119	java/lang/Exception
  }

  private void f(String paramString, d paramd, SQLiteDatabase paramSQLiteDatabase)
  {
    if (this.c == null)
      return;
    this.e.clear();
    this.h.reset();
    while (true)
    {
      String[] arrayOfString;
      try
      {
        if (TextUtils.isEmpty(paramString))
          break;
        arrayOfString = paramString.split(":");
        if ((arrayOfString == null) || (arrayOfString.length < 2) || (TextUtils.isEmpty(arrayOfString[0])) || (TextUtils.isEmpty(arrayOfString[1])))
          break;
        this.e.put("cat", arrayOfString[0]);
        this.e.put("sha", arrayOfString[1]);
        if ((paramd != d.a) && (paramd != d.b))
          break label175;
        this.h.update(arrayOfString[1].getBytes());
        this.e.put("adler", Long.valueOf(this.h.getValue()));
        this.c.insert(this.e);
        this.e.clear();
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
      }
      break;
      label175: if (((paramd == d.c) || (paramd == d.f)) && (arrayOfString.length >= 3) && (!TextUtils.isEmpty(arrayOfString[2])))
        this.e.put("dry_wet", arrayOfString[2]);
    }
  }

  // ERROR //
  private void g(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 425	java/io/File
    //   5: dup
    //   6: aload_1
    //   7: invokevirtual 431	android/content/Context:getFilesDir	()Ljava/io/File;
    //   10: invokevirtual 434	java/io/File:getParent	()Ljava/lang/String;
    //   13: ldc_w 436
    //   16: invokevirtual 440	java/lang/String:concat	(Ljava/lang/String;)Ljava/lang/String;
    //   19: invokespecial 441	java/io/File:<init>	(Ljava/lang/String;)V
    //   22: astore_3
    //   23: aload_3
    //   24: invokevirtual 444	java/io/File:exists	()Z
    //   27: ifne +8 -> 35
    //   30: aload_3
    //   31: invokevirtual 447	java/io/File:mkdirs	()Z
    //   34: pop
    //   35: new 425	java/io/File
    //   38: dup
    //   39: aload_3
    //   40: ldc 106
    //   42: invokespecial 450	java/io/File:<init>	(Ljava/io/File;Ljava/lang/String;)V
    //   45: astore 4
    //   47: aload 4
    //   49: ifnull +11 -> 60
    //   52: aload 4
    //   54: invokevirtual 444	java/io/File:exists	()Z
    //   57: ifne +146 -> 203
    //   60: new 452	java/io/FileOutputStream
    //   63: dup
    //   64: aload 4
    //   66: invokespecial 453	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   69: astore 5
    //   71: iconst_0
    //   72: istore 6
    //   74: aconst_null
    //   75: astore 7
    //   77: iload 6
    //   79: getstatic 455	com/antivirus/core/e/b:b	Ljava/util/ArrayList;
    //   82: invokevirtual 460	java/util/ArrayList:size	()I
    //   85: if_icmpge +90 -> 175
    //   88: getstatic 455	com/antivirus/core/e/b:b	Ljava/util/ArrayList;
    //   91: iload 6
    //   93: invokevirtual 464	java/util/ArrayList:get	(I)Ljava/lang/Object;
    //   96: checkcast 466	java/util/concurrent/Callable
    //   99: invokeinterface 470 1 0
    //   104: checkcast 472	java/io/InputStream
    //   107: astore 18
    //   109: sipush 1024
    //   112: newarray byte
    //   114: astore 21
    //   116: aload 18
    //   118: aload 21
    //   120: invokevirtual 476	java/io/InputStream:read	([B)I
    //   123: istore 22
    //   125: iload 22
    //   127: iconst_m1
    //   128: if_icmpeq +29 -> 157
    //   131: aload 5
    //   133: aload 21
    //   135: iconst_0
    //   136: iload 22
    //   138: invokevirtual 482	java/io/OutputStream:write	([BII)V
    //   141: aload 18
    //   143: aload 21
    //   145: invokevirtual 476	java/io/InputStream:read	([B)I
    //   148: istore 24
    //   150: iload 24
    //   152: istore 22
    //   154: goto -29 -> 125
    //   157: aload 18
    //   159: invokevirtual 483	java/io/InputStream:close	()V
    //   162: aconst_null
    //   163: astore 18
    //   165: iinc 6 1
    //   168: aload 18
    //   170: astore 7
    //   172: goto -95 -> 77
    //   175: aload 5
    //   177: invokevirtual 486	java/io/OutputStream:flush	()V
    //   180: aload 5
    //   182: invokevirtual 487	java/io/OutputStream:close	()V
    //   185: aload 7
    //   187: ifnull +8 -> 195
    //   190: aload 7
    //   192: invokevirtual 483	java/io/InputStream:close	()V
    //   195: aload_2
    //   196: ifnull +7 -> 203
    //   199: aload_2
    //   200: invokevirtual 487	java/io/OutputStream:close	()V
    //   203: return
    //   204: astore 15
    //   206: aload 5
    //   208: astore_2
    //   209: goto -24 -> 185
    //   212: astore 17
    //   214: aload 17
    //   216: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   219: goto -24 -> 195
    //   222: astore 16
    //   224: aload 16
    //   226: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   229: goto -26 -> 203
    //   232: astore 8
    //   234: aconst_null
    //   235: astore 9
    //   237: aload 8
    //   239: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   242: aload 9
    //   244: ifnull +8 -> 252
    //   247: aload 9
    //   249: invokevirtual 483	java/io/InputStream:close	()V
    //   252: aload_2
    //   253: ifnull -50 -> 203
    //   256: aload_2
    //   257: invokevirtual 487	java/io/OutputStream:close	()V
    //   260: goto -57 -> 203
    //   263: astore 13
    //   265: aload 13
    //   267: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   270: goto -67 -> 203
    //   273: astore 14
    //   275: aload 14
    //   277: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   280: goto -28 -> 252
    //   283: astore 10
    //   285: aconst_null
    //   286: astore 5
    //   288: aconst_null
    //   289: astore 7
    //   291: aload 7
    //   293: ifnull +8 -> 301
    //   296: aload 7
    //   298: invokevirtual 483	java/io/InputStream:close	()V
    //   301: aload 5
    //   303: ifnull +8 -> 311
    //   306: aload 5
    //   308: invokevirtual 487	java/io/OutputStream:close	()V
    //   311: aload 10
    //   313: athrow
    //   314: astore 12
    //   316: aload 12
    //   318: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   321: goto -20 -> 301
    //   324: astore 11
    //   326: aload 11
    //   328: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   331: goto -20 -> 311
    //   334: astore 23
    //   336: goto -171 -> 165
    //   339: astore 20
    //   341: aload 18
    //   343: astore 7
    //   345: aload 20
    //   347: astore 10
    //   349: goto -58 -> 291
    //   352: astore 10
    //   354: goto -63 -> 291
    //   357: astore 10
    //   359: aload 9
    //   361: astore 7
    //   363: aload_2
    //   364: astore 5
    //   366: goto -75 -> 291
    //   369: astore 19
    //   371: aload 5
    //   373: astore_2
    //   374: aload 18
    //   376: astore 9
    //   378: aload 19
    //   380: astore 8
    //   382: goto -145 -> 237
    //   385: astore 8
    //   387: aload 5
    //   389: astore_2
    //   390: aload 7
    //   392: astore 9
    //   394: goto -157 -> 237
    //
    // Exception table:
    //   from	to	target	type
    //   175	185	204	java/lang/Exception
    //   190	195	212	java/io/IOException
    //   199	203	222	java/io/IOException
    //   60	71	232	java/lang/Exception
    //   256	260	263	java/io/IOException
    //   247	252	273	java/io/IOException
    //   60	71	283	finally
    //   296	301	314	java/io/IOException
    //   306	311	324	java/io/IOException
    //   157	162	334	java/lang/Exception
    //   109	150	339	finally
    //   157	162	339	finally
    //   77	109	352	finally
    //   175	185	352	finally
    //   237	242	357	finally
    //   109	150	369	java/lang/Exception
    //   77	109	385	java/lang/Exception
  }

  // ERROR //
  private String h(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc 106
    //   5: invokevirtual 492	android/content/Context:getDatabasePath	(Ljava/lang/String;)Ljava/io/File;
    //   8: invokevirtual 444	java/io/File:exists	()Z
    //   11: ifeq +205 -> 216
    //   14: aload_0
    //   15: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ifnonnull +44 -> 62
    //   21: aload_0
    //   22: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   25: ifnull +10 -> 35
    //   28: aload_0
    //   29: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   32: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   35: aload_0
    //   36: new 101	com/antivirus/core/e/a
    //   39: dup
    //   40: aload_1
    //   41: ldc 106
    //   43: aconst_null
    //   44: iconst_2
    //   45: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   48: putfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   56: invokevirtual 113	com/antivirus/core/e/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   59: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   62: aload_0
    //   63: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   66: ifnull +209 -> 275
    //   69: aload_0
    //   70: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   73: ldc_w 381
    //   76: iconst_1
    //   77: anewarray 58	java/lang/String
    //   80: dup
    //   81: iconst_0
    //   82: ldc_w 362
    //   85: aastore
    //   86: ldc_w 383
    //   89: iconst_1
    //   90: anewarray 58	java/lang/String
    //   93: dup
    //   94: iconst_0
    //   95: ldc_w 379
    //   98: aastore
    //   99: aconst_null
    //   100: aconst_null
    //   101: aconst_null
    //   102: invokevirtual 165	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   105: astore 7
    //   107: aload 7
    //   109: ifnull +157 -> 266
    //   112: aload 7
    //   114: invokeinterface 170 1 0
    //   119: ifle +140 -> 259
    //   122: aload 7
    //   124: invokeinterface 174 1 0
    //   129: pop
    //   130: aload 7
    //   132: iconst_0
    //   133: invokeinterface 495 2 0
    //   138: astore 13
    //   140: aload 13
    //   142: astore 10
    //   144: aload 7
    //   146: invokeinterface 195 1 0
    //   151: aload 10
    //   153: astore_3
    //   154: aload_2
    //   155: ifnull +9 -> 164
    //   158: aload_2
    //   159: invokeinterface 195 1 0
    //   164: aload_0
    //   165: invokevirtual 497	com/antivirus/core/e/b:a	()V
    //   168: aload_3
    //   169: areturn
    //   170: astore 5
    //   172: aconst_null
    //   173: astore 6
    //   175: ldc 146
    //   177: astore_3
    //   178: aload 6
    //   180: ifnull +10 -> 190
    //   183: aload 6
    //   185: invokeinterface 195 1 0
    //   190: aload_0
    //   191: invokevirtual 497	com/antivirus/core/e/b:a	()V
    //   194: goto -26 -> 168
    //   197: astore 4
    //   199: aload_2
    //   200: ifnull +9 -> 209
    //   203: aload_2
    //   204: invokeinterface 195 1 0
    //   209: aload_0
    //   210: invokevirtual 497	com/antivirus/core/e/b:a	()V
    //   213: aload 4
    //   215: athrow
    //   216: ldc_w 499
    //   219: astore_3
    //   220: goto -52 -> 168
    //   223: astore 9
    //   225: aload 7
    //   227: astore_2
    //   228: aload 9
    //   230: astore 4
    //   232: goto -33 -> 199
    //   235: astore 8
    //   237: aload 7
    //   239: astore 6
    //   241: ldc 146
    //   243: astore_3
    //   244: goto -66 -> 178
    //   247: astore 11
    //   249: aload 10
    //   251: astore_3
    //   252: aload 7
    //   254: astore 6
    //   256: goto -78 -> 178
    //   259: ldc 146
    //   261: astore 10
    //   263: goto -119 -> 144
    //   266: aload 7
    //   268: astore_2
    //   269: ldc 146
    //   271: astore_3
    //   272: goto -118 -> 154
    //   275: ldc 146
    //   277: astore_3
    //   278: aconst_null
    //   279: astore_2
    //   280: goto -126 -> 154
    //
    // Exception table:
    //   from	to	target	type
    //   14	107	170	java/lang/Exception
    //   14	107	197	finally
    //   112	140	223	finally
    //   144	151	223	finally
    //   112	140	235	java/lang/Exception
    //   144	151	247	java/lang/Exception
  }

  // ERROR //
  private boolean i(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: aload_1
    //   3: ldc 106
    //   5: invokevirtual 492	android/content/Context:getDatabasePath	(Ljava/lang/String;)Ljava/io/File;
    //   8: invokevirtual 444	java/io/File:exists	()Z
    //   11: ifeq +274 -> 285
    //   14: aload_0
    //   15: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   18: ifnonnull +44 -> 62
    //   21: aload_0
    //   22: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   25: ifnull +10 -> 35
    //   28: aload_0
    //   29: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   32: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   35: aload_0
    //   36: new 101	com/antivirus/core/e/a
    //   39: dup
    //   40: aload_1
    //   41: ldc 106
    //   43: aconst_null
    //   44: iconst_2
    //   45: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   48: putfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   51: aload_0
    //   52: aload_0
    //   53: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   56: invokevirtual 113	com/antivirus/core/e/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   59: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   62: aload_0
    //   63: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   66: ifnull +439 -> 505
    //   69: aload_0
    //   70: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   73: ldc_w 503
    //   76: iconst_1
    //   77: anewarray 58	java/lang/String
    //   80: dup
    //   81: iconst_0
    //   82: ldc_w 505
    //   85: aastore
    //   86: ldc_w 507
    //   89: bipush 8
    //   91: anewarray 58	java/lang/String
    //   94: dup
    //   95: iconst_0
    //   96: ldc_w 285
    //   99: aastore
    //   100: dup
    //   101: iconst_1
    //   102: ldc 72
    //   104: aastore
    //   105: dup
    //   106: iconst_2
    //   107: ldc_w 295
    //   110: aastore
    //   111: dup
    //   112: iconst_3
    //   113: ldc_w 289
    //   116: aastore
    //   117: dup
    //   118: iconst_4
    //   119: ldc 199
    //   121: aastore
    //   122: dup
    //   123: iconst_5
    //   124: ldc 197
    //   126: aastore
    //   127: dup
    //   128: bipush 6
    //   130: ldc_w 381
    //   133: aastore
    //   134: dup
    //   135: bipush 7
    //   137: ldc_w 268
    //   140: aastore
    //   141: aconst_null
    //   142: aconst_null
    //   143: aconst_null
    //   144: invokevirtual 165	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   147: astore 8
    //   149: aload 8
    //   151: astore 9
    //   153: aload 9
    //   155: ifnull +340 -> 495
    //   158: aload 9
    //   160: invokeinterface 170 1 0
    //   165: istore 19
    //   167: iload 19
    //   169: bipush 8
    //   171: if_icmpeq +318 -> 489
    //   174: iconst_0
    //   175: istore 16
    //   177: aload 9
    //   179: invokeinterface 195 1 0
    //   184: aconst_null
    //   185: astore 11
    //   187: iload 16
    //   189: istore 10
    //   191: iload 10
    //   193: ifeq +286 -> 479
    //   196: aload_0
    //   197: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   200: ldc_w 285
    //   203: aconst_null
    //   204: ldc_w 509
    //   207: aconst_null
    //   208: aconst_null
    //   209: aconst_null
    //   210: aconst_null
    //   211: invokevirtual 165	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   214: astore 13
    //   216: aload 13
    //   218: astore 9
    //   220: aload 9
    //   222: ifnull +247 -> 469
    //   225: aload 9
    //   227: invokeinterface 512 1 0
    //   232: istore 15
    //   234: iload 15
    //   236: iconst_4
    //   237: if_icmpeq +225 -> 462
    //   240: iconst_0
    //   241: istore 16
    //   243: aload 9
    //   245: invokeinterface 195 1 0
    //   250: iload 16
    //   252: istore 7
    //   254: aload_2
    //   255: ifnull +9 -> 264
    //   258: aload_2
    //   259: invokeinterface 195 1 0
    //   264: aload_0
    //   265: invokevirtual 497	com/antivirus/core/e/b:a	()V
    //   268: aload_0
    //   269: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   272: ifnull +10 -> 282
    //   275: aload_0
    //   276: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   279: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   282: iload 7
    //   284: ireturn
    //   285: iconst_0
    //   286: istore 7
    //   288: aconst_null
    //   289: astore_2
    //   290: goto -36 -> 254
    //   293: astore 4
    //   295: aload 4
    //   297: astore 5
    //   299: aconst_null
    //   300: astore 6
    //   302: iconst_1
    //   303: istore 7
    //   305: aload 5
    //   307: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   310: aload 6
    //   312: ifnull +10 -> 322
    //   315: aload 6
    //   317: invokeinterface 195 1 0
    //   322: aload_0
    //   323: invokevirtual 497	com/antivirus/core/e/b:a	()V
    //   326: aload_0
    //   327: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   330: ifnull -48 -> 282
    //   333: aload_0
    //   334: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   337: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   340: goto -58 -> 282
    //   343: astore_3
    //   344: aload_2
    //   345: ifnull +9 -> 354
    //   348: aload_2
    //   349: invokeinterface 195 1 0
    //   354: aload_0
    //   355: invokevirtual 497	com/antivirus/core/e/b:a	()V
    //   358: aload_0
    //   359: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   362: ifnull +10 -> 372
    //   365: aload_0
    //   366: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   369: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   372: aload_3
    //   373: athrow
    //   374: astore_3
    //   375: aload 9
    //   377: astore_2
    //   378: goto -34 -> 344
    //   381: astore_3
    //   382: aload 11
    //   384: astore_2
    //   385: goto -41 -> 344
    //   388: astore_3
    //   389: aload 6
    //   391: astore_2
    //   392: goto -48 -> 344
    //   395: astore 18
    //   397: aload 9
    //   399: astore 6
    //   401: aload 18
    //   403: astore 5
    //   405: iconst_1
    //   406: istore 7
    //   408: goto -103 -> 305
    //   411: astore 17
    //   413: iload 16
    //   415: istore 7
    //   417: aload 9
    //   419: astore 6
    //   421: aload 17
    //   423: astore 5
    //   425: goto -120 -> 305
    //   428: astore 12
    //   430: aload 12
    //   432: astore 5
    //   434: aload 11
    //   436: astore 6
    //   438: iload 10
    //   440: istore 7
    //   442: goto -137 -> 305
    //   445: astore 14
    //   447: aload 9
    //   449: astore 6
    //   451: aload 14
    //   453: astore 5
    //   455: iload 10
    //   457: istore 7
    //   459: goto -154 -> 305
    //   462: iload 10
    //   464: istore 16
    //   466: goto -223 -> 243
    //   469: aload 9
    //   471: astore_2
    //   472: iload 10
    //   474: istore 7
    //   476: goto -222 -> 254
    //   479: aload 11
    //   481: astore_2
    //   482: iload 10
    //   484: istore 7
    //   486: goto -232 -> 254
    //   489: iconst_1
    //   490: istore 16
    //   492: goto -315 -> 177
    //   495: iconst_1
    //   496: istore 10
    //   498: aload 9
    //   500: astore 11
    //   502: goto -311 -> 191
    //   505: iconst_1
    //   506: istore 7
    //   508: aconst_null
    //   509: astore_2
    //   510: goto -256 -> 254
    //
    // Exception table:
    //   from	to	target	type
    //   2	149	293	java/lang/Exception
    //   2	149	343	finally
    //   158	167	374	finally
    //   177	184	374	finally
    //   225	234	374	finally
    //   243	250	374	finally
    //   196	216	381	finally
    //   305	310	388	finally
    //   158	167	395	java/lang/Exception
    //   177	184	411	java/lang/Exception
    //   243	250	411	java/lang/Exception
    //   196	216	428	java/lang/Exception
    //   225	234	445	java/lang/Exception
  }

  private static boolean j(Context paramContext)
  {
    boolean bool1 = false;
    try
    {
      File localFile = paramContext.getDatabasePath("secdb");
      boolean bool2 = localFile.exists();
      bool1 = false;
      if (!bool2)
      {
        bool1 = true;
      }
      else
      {
        boolean bool3 = localFile.exists();
        bool1 = false;
        if (bool3)
        {
          boolean bool4 = localFile.canWrite();
          bool1 = false;
          if (bool4)
          {
            boolean bool5 = localFile.delete();
            bool1 = bool5;
            if (bool1);
          }
        }
      }
    }
    catch (Exception localException)
    {
      com.avg.toolkit.f.a.a(localException);
    }
    return bool1;
  }

  private void k(Context paramContext)
  {
  }

  // ERROR //
  private void l(Context paramContext)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 101	com/antivirus/core/e/a
    //   5: dup
    //   6: aload_1
    //   7: ldc 106
    //   9: aconst_null
    //   10: iconst_2
    //   11: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   14: astore_3
    //   15: aload_3
    //   16: invokevirtual 323	com/antivirus/core/e/a:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   19: astore_2
    //   20: aload_2
    //   21: invokevirtual 326	android/database/sqlite/SQLiteDatabase:beginTransaction	()V
    //   24: aload_2
    //   25: ldc_w 520
    //   28: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   31: aload_2
    //   32: ldc_w 522
    //   35: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   38: aload_2
    //   39: ldc_w 524
    //   42: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   45: aload_2
    //   46: ldc_w 306
    //   49: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   52: aload_2
    //   53: ldc_w 526
    //   56: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   59: aload_2
    //   60: ldc_w 528
    //   63: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   66: aload_2
    //   67: ldc_w 530
    //   70: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   73: aload_2
    //   74: ldc_w 532
    //   77: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   80: aload_2
    //   81: invokevirtual 342	android/database/sqlite/SQLiteDatabase:setTransactionSuccessful	()V
    //   84: aload_2
    //   85: invokevirtual 345	android/database/sqlite/SQLiteDatabase:endTransaction	()V
    //   88: aload_2
    //   89: ldc_w 534
    //   92: invokevirtual 309	android/database/sqlite/SQLiteDatabase:execSQL	(Ljava/lang/String;)V
    //   95: aload_3
    //   96: aload_2
    //   97: invokevirtual 537	com/antivirus/core/e/a:a	(Landroid/database/sqlite/SQLiteDatabase;)V
    //   100: aload_2
    //   101: ifnull +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   108: aload_3
    //   109: ifnull +7 -> 116
    //   112: aload_3
    //   113: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   116: return
    //   117: astore 4
    //   119: aconst_null
    //   120: astore_3
    //   121: aload 4
    //   123: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   126: aload_2
    //   127: ifnull +7 -> 134
    //   130: aload_2
    //   131: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   134: aload_3
    //   135: ifnull -19 -> 116
    //   138: goto -26 -> 112
    //   141: astore 5
    //   143: aconst_null
    //   144: astore_3
    //   145: aload_2
    //   146: ifnull +7 -> 153
    //   149: aload_2
    //   150: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   153: aload_3
    //   154: ifnull +7 -> 161
    //   157: aload_3
    //   158: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   161: aload 5
    //   163: athrow
    //   164: astore 5
    //   166: goto -21 -> 145
    //   169: astore 4
    //   171: goto -50 -> 121
    //
    // Exception table:
    //   from	to	target	type
    //   2	15	117	java/lang/Exception
    //   2	15	141	finally
    //   15	100	164	finally
    //   121	126	164	finally
    //   15	100	169	java/lang/Exception
  }

  public e a(Context paramContext, d paramd, String paramString, int paramInt)
  {
    try
    {
      e locale2 = b(paramContext, paramd, paramString, paramInt);
      locale1 = locale2;
      return locale1;
    }
    catch (Exception localException)
    {
      while (true)
      {
        com.avg.toolkit.f.a.a(localException);
        e locale1 = null;
      }
    }
  }

  // ERROR //
  public ArrayList a(Context paramContext, d paramd)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 457	java/util/ArrayList
    //   5: dup
    //   6: invokespecial 541	java/util/ArrayList:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   15: astore 8
    //   17: aconst_null
    //   18: astore_3
    //   19: aload 8
    //   21: ifnonnull +50 -> 71
    //   24: aload_0
    //   25: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   28: astore 16
    //   30: aconst_null
    //   31: astore_3
    //   32: aload 16
    //   34: ifnull +10 -> 44
    //   37: aload_0
    //   38: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   41: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   44: aload_0
    //   45: new 101	com/antivirus/core/e/a
    //   48: dup
    //   49: aload_1
    //   50: ldc 106
    //   52: aconst_null
    //   53: iconst_2
    //   54: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   57: putfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   60: aload_0
    //   61: aload_0
    //   62: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   65: invokevirtual 113	com/antivirus/core/e/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   68: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   71: getstatic 118	com/antivirus/core/e/c:a	[I
    //   74: aload_2
    //   75: invokevirtual 122	com/antivirus/core/e/d:ordinal	()I
    //   78: iaload
    //   79: istore 9
    //   81: iload 9
    //   83: tableswitch	default:+21 -> 104, 3:+37->120, 4:+70->153
    //   105: ifeq +9 -> 114
    //   108: aconst_null
    //   109: invokeinterface 195 1 0
    //   114: aconst_null
    //   115: astore 13
    //   117: aload 13
    //   119: areturn
    //   120: ldc_w 289
    //   123: astore 10
    //   125: aload 10
    //   127: invokestatic 54	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   130: istore 11
    //   132: iload 11
    //   134: ifeq +29 -> 163
    //   137: iconst_0
    //   138: ifeq +9 -> 147
    //   141: aconst_null
    //   142: invokeinterface 195 1 0
    //   147: aconst_null
    //   148: astore 13
    //   150: goto -33 -> 117
    //   153: ldc_w 295
    //   156: astore 10
    //   158: aconst_null
    //   159: astore_3
    //   160: goto -35 -> 125
    //   163: aload_0
    //   164: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   167: astore 12
    //   169: aconst_null
    //   170: astore_3
    //   171: aload 12
    //   173: ifnull +140 -> 313
    //   176: aload_0
    //   177: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   180: aload 10
    //   182: iconst_1
    //   183: anewarray 58	java/lang/String
    //   186: dup
    //   187: iconst_0
    //   188: ldc 155
    //   190: aastore
    //   191: aconst_null
    //   192: aconst_null
    //   193: aconst_null
    //   194: aconst_null
    //   195: aconst_null
    //   196: invokevirtual 165	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   199: astore_3
    //   200: aload_3
    //   201: ifnull +112 -> 313
    //   204: aload_3
    //   205: invokeinterface 170 1 0
    //   210: ifle +103 -> 313
    //   213: aload_3
    //   214: invokeinterface 174 1 0
    //   219: ifeq +88 -> 307
    //   222: aload_3
    //   223: iconst_0
    //   224: invokeinterface 495 2 0
    //   229: astore 14
    //   231: aload 14
    //   233: invokestatic 54	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   236: ifne -23 -> 213
    //   239: aload 4
    //   241: new 58	java/lang/String
    //   244: dup
    //   245: aload 14
    //   247: invokestatic 546	a/a/a/a/a/a:b	(Ljava/lang/String;)[B
    //   250: invokespecial 548	java/lang/String:<init>	([B)V
    //   253: invokevirtual 551	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   256: invokevirtual 554	java/util/ArrayList:add	(Ljava/lang/Object;)Z
    //   259: pop
    //   260: goto -47 -> 213
    //   263: astore 6
    //   265: aload 6
    //   267: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   270: aload_0
    //   271: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   274: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   277: aload_0
    //   278: aconst_null
    //   279: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   282: new 91	java/lang/Exception
    //   285: dup
    //   286: ldc 191
    //   288: invokespecial 194	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   291: athrow
    //   292: astore 5
    //   294: aload_3
    //   295: ifnull +9 -> 304
    //   298: aload_3
    //   299: invokeinterface 195 1 0
    //   304: aload 5
    //   306: athrow
    //   307: aload_3
    //   308: invokeinterface 195 1 0
    //   313: aload_3
    //   314: ifnull +9 -> 323
    //   317: aload_3
    //   318: invokeinterface 195 1 0
    //   323: aload 4
    //   325: astore 13
    //   327: goto -210 -> 117
    //   330: astore 7
    //   332: goto -50 -> 282
    //
    // Exception table:
    //   from	to	target	type
    //   11	81	263	java/lang/Exception
    //   120	132	263	java/lang/Exception
    //   153	260	263	java/lang/Exception
    //   307	313	263	java/lang/Exception
    //   11	81	292	finally
    //   120	132	292	finally
    //   153	260	292	finally
    //   265	270	292	finally
    //   270	282	292	finally
    //   282	292	292	finally
    //   307	313	292	finally
    //   270	282	330	java/lang/Exception
  }

  public ArrayList a(Context paramContext, d paramd, int paramInt)
  {
    Cursor localCursor = null;
    ArrayList localArrayList1 = new ArrayList();
    while (true)
    {
      e locale;
      try
      {
        SQLiteDatabase localSQLiteDatabase1 = this.f;
        localCursor = null;
        if (localSQLiteDatabase1 == null)
        {
          a locala = this.g;
          localCursor = null;
          if (locala != null)
            this.g.close();
          this.g = new a(paramContext, "secdb", null, 2);
          this.f = this.g.getReadableDatabase();
        }
        int i = c.a[paramd.ordinal()];
        switch (i)
        {
        default:
          if (0 != 0)
            null.close();
          localArrayList2 = null;
          return localArrayList2;
        case 5:
          str = "emgssig";
          boolean bool = TextUtils.isEmpty(str);
          if (bool)
          {
            if (0 != 0)
              null.close();
            localArrayList2 = null;
          }
          break;
        case 6:
          str = "bpacksig";
          localCursor = null;
          continue;
          SQLiteDatabase localSQLiteDatabase2 = this.f;
          localCursor = null;
          if (localSQLiteDatabase2 == null)
            break label497;
          d locald = d.e;
          localCursor = null;
          if (paramd == locald)
          {
            localCursor = this.f.query(str, new String[] { "sha", "cat" }, null, null, null, null, "cat ASC");
            if ((localCursor == null) || (localCursor.getCount() <= 0))
              break label497;
            if (!localCursor.moveToNext())
              break label490;
            locale = new e(this);
            if ((TextUtils.isEmpty(localCursor.getString(0))) || (TextUtils.isEmpty(localCursor.getString(1))) || (Integer.parseInt(localCursor.getString(1)) >= paramInt))
              continue;
            if (paramd == d.f)
              break label474;
            locale.a = new String(a.a.a.a.a.a.b(localCursor.getString(0)));
            locale.a = locale.a.toLowerCase(Locale.ENGLISH);
            locale.b = localCursor.getInt(1);
            if (paramd != d.e)
              locale.d = localCursor.getInt(2);
            localArrayList1.add(locale);
            continue;
          }
          break;
        case 4:
        }
      }
      catch (Exception localException)
      {
        com.avg.toolkit.f.a.a(localException);
        throw new Exception("could not access database");
      }
      finally
      {
        if (localCursor != null)
          localCursor.close();
      }
      localCursor = this.f.query(str, new String[] { "sha", "cat", "dry_wet" }, null, null, null, null, "dry_wet DESC , cat ASC");
      continue;
      label474: locale.a = localCursor.getString(0);
      continue;
      label490: localCursor.close();
      label497: if (localCursor != null)
        localCursor.close();
      ArrayList localArrayList2 = localArrayList1;
      continue;
      String str = "mediasig";
    }
  }

  public void a()
  {
    if ((this.f != null) && (this.f.isOpen()))
    {
      this.f.close();
      this.f = null;
    }
    if (this.g != null)
    {
      this.g.close();
      this.g = null;
    }
  }

  public void a(Context paramContext, com.antivirus.core.b paramb, File paramFile, boolean paramBoolean)
  {
    try
    {
      b(paramContext, paramb, paramFile, paramBoolean);
      return;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  public boolean a(Context paramContext)
  {
    boolean bool = i(paramContext);
    if (!bool)
    {
      a();
      if (j(paramContext))
      {
        g(paramContext);
        f(paramContext);
        new com.antivirus.core.b(paramContext).l(d(paramContext));
        bool = true;
      }
    }
    return bool;
  }

  public void b(Context paramContext)
  {
    a();
    j(paramContext);
  }

  public boolean c(Context paramContext)
  {
    Object localObject = "";
    try
    {
      String str = h(paramContext);
      localObject = str;
      label13: if ((!((String)localObject).equals("")) && (!((String)localObject).equals("-1")));
      for (boolean bool = true; ; bool = false)
        return bool;
    }
    catch (Exception localException)
    {
      break label13;
    }
  }

  public String d(Context paramContext)
  {
    Object localObject = "";
    try
    {
      String str = h(paramContext);
      localObject = str;
      return localObject;
    }
    catch (Exception localException)
    {
      while (true)
        com.avg.toolkit.f.a.a(localException);
    }
  }

  // ERROR //
  public java.util.TreeMap e(Context paramContext)
  {
    // Byte code:
    //   0: new 596	java/util/TreeMap
    //   3: dup
    //   4: invokespecial 597	java/util/TreeMap:<init>	()V
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   12: ifnonnull +44 -> 56
    //   15: aload_0
    //   16: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   19: ifnull +10 -> 29
    //   22: aload_0
    //   23: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   26: invokevirtual 104	com/antivirus/core/e/a:close	()V
    //   29: aload_0
    //   30: new 101	com/antivirus/core/e/a
    //   33: dup
    //   34: aload_1
    //   35: ldc 106
    //   37: aconst_null
    //   38: iconst_2
    //   39: invokespecial 109	com/antivirus/core/e/a:<init>	(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V
    //   42: putfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   45: aload_0
    //   46: aload_0
    //   47: getfield 30	com/antivirus/core/e/b:g	Lcom/antivirus/core/e/a;
    //   50: invokevirtual 113	com/antivirus/core/e/a:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   53: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   56: aload_0
    //   57: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   60: ifnull +208 -> 268
    //   63: aload_0
    //   64: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   67: ldc 72
    //   69: iconst_2
    //   70: anewarray 58	java/lang/String
    //   73: dup
    //   74: iconst_0
    //   75: ldc 64
    //   77: aastore
    //   78: dup
    //   79: iconst_1
    //   80: ldc 70
    //   82: aastore
    //   83: aconst_null
    //   84: aconst_null
    //   85: aconst_null
    //   86: aconst_null
    //   87: aconst_null
    //   88: invokevirtual 165	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   91: astore 8
    //   93: aload 8
    //   95: astore 4
    //   97: aload 4
    //   99: ifnull +130 -> 229
    //   102: aload 4
    //   104: invokeinterface 170 1 0
    //   109: ifle +120 -> 229
    //   112: aload 4
    //   114: invokeinterface 174 1 0
    //   119: ifeq +103 -> 222
    //   122: aload 4
    //   124: iconst_0
    //   125: invokeinterface 495 2 0
    //   130: invokestatic 54	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   133: ifne -21 -> 112
    //   136: aload 4
    //   138: iconst_1
    //   139: invokeinterface 495 2 0
    //   144: invokestatic 54	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   147: ifne -35 -> 112
    //   150: aload_2
    //   151: aload 4
    //   153: iconst_0
    //   154: invokeinterface 495 2 0
    //   159: aload 4
    //   161: iconst_1
    //   162: invokeinterface 495 2 0
    //   167: invokevirtual 600	java/util/TreeMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   170: pop
    //   171: goto -59 -> 112
    //   174: astore_3
    //   175: aload_3
    //   176: invokestatic 189	com/avg/toolkit/f/a:a	(Ljava/lang/Exception;)V
    //   179: aload_0
    //   180: getfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   183: invokevirtual 252	android/database/sqlite/SQLiteDatabase:close	()V
    //   186: aload_0
    //   187: aconst_null
    //   188: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   191: new 91	java/lang/Exception
    //   194: dup
    //   195: ldc 191
    //   197: invokespecial 194	java/lang/Exception:<init>	(Ljava/lang/String;)V
    //   200: athrow
    //   201: astore 5
    //   203: aload 4
    //   205: astore 6
    //   207: aload 6
    //   209: ifnull +10 -> 219
    //   212: aload 6
    //   214: invokeinterface 195 1 0
    //   219: aload 5
    //   221: athrow
    //   222: aload 4
    //   224: invokeinterface 195 1 0
    //   229: aload 4
    //   231: ifnull +10 -> 241
    //   234: aload 4
    //   236: invokeinterface 195 1 0
    //   241: aload_2
    //   242: areturn
    //   243: astore 7
    //   245: aload_0
    //   246: aconst_null
    //   247: putfield 28	com/antivirus/core/e/b:f	Landroid/database/sqlite/SQLiteDatabase;
    //   250: goto -59 -> 191
    //   253: astore 5
    //   255: aconst_null
    //   256: astore 6
    //   258: goto -51 -> 207
    //   261: astore_3
    //   262: aconst_null
    //   263: astore 4
    //   265: goto -90 -> 175
    //   268: aconst_null
    //   269: astore 4
    //   271: goto -42 -> 229
    //
    // Exception table:
    //   from	to	target	type
    //   102	171	174	java/lang/Exception
    //   222	229	174	java/lang/Exception
    //   102	171	201	finally
    //   175	179	201	finally
    //   179	191	201	finally
    //   191	201	201	finally
    //   222	229	201	finally
    //   245	250	201	finally
    //   179	191	243	java/lang/Exception
    //   8	93	253	finally
    //   8	93	261	java/lang/Exception
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.antivirus.core.e.b
 * JD-Core Version:    0.6.2
 */