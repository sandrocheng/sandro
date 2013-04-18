package com.keniu.security.sync.c;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.os.Handler;
import com.keniu.security.sync.i;

public final class j extends g
{
  SQLiteDatabase a = null;
  private int d;
  private int e = 0;

  public j(Handler paramHandler, Context paramContext, int paramInt)
  {
    super(paramContext, paramHandler, paramContext.getString(2131429564));
    this.e = paramInt;
  }

  // ERROR //
  protected final Integer a(java.lang.String[] paramArrayOfString)
  {
    // Byte code:
    //   0: aload_0
    //   1: aload_1
    //   2: invokespecial 30	com/keniu/security/sync/c/g:a	([Ljava/lang/String;)Ljava/lang/Integer;
    //   5: pop
    //   6: aload_0
    //   7: getfield 25	com/keniu/security/sync/c/j:e	I
    //   10: ifne +40 -> 50
    //   13: getstatic 36	com/keniu/security/sync/r:aI	Ljava/lang/String;
    //   16: astore_3
    //   17: new 38	java/io/File
    //   20: dup
    //   21: aload_3
    //   22: invokespecial 41	java/io/File:<init>	(Ljava/lang/String;)V
    //   25: invokevirtual 45	java/io/File:exists	()Z
    //   28: ifne +29 -> 57
    //   31: aload_0
    //   32: getfield 25	com/keniu/security/sync/c/j:e	I
    //   35: iconst_1
    //   36: if_icmpne +21 -> 57
    //   39: sipush -10025
    //   42: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   45: astore 9
    //   47: aload 9
    //   49: areturn
    //   50: getstatic 54	com/keniu/security/sync/r:aJ	Ljava/lang/String;
    //   53: astore_3
    //   54: goto -37 -> 17
    //   57: new 38	java/io/File
    //   60: dup
    //   61: getstatic 57	com/keniu/security/sync/r:aK	Ljava/lang/String;
    //   64: invokespecial 41	java/io/File:<init>	(Ljava/lang/String;)V
    //   67: astore 4
    //   69: aload 4
    //   71: invokevirtual 45	java/io/File:exists	()Z
    //   74: ifeq +9 -> 83
    //   77: aload 4
    //   79: invokevirtual 60	java/io/File:delete	()Z
    //   82: pop
    //   83: new 62	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   90: aload_3
    //   91: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   94: ldc 71
    //   96: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: astore 5
    //   104: aload_3
    //   105: aload 5
    //   107: invokestatic 79	com/keniu/security/sync/r:b	(Ljava/lang/String;Ljava/lang/String;)Z
    //   110: ifne +14 -> 124
    //   113: sipush -10024
    //   116: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   119: astore 9
    //   121: goto -74 -> 47
    //   124: new 38	java/io/File
    //   127: dup
    //   128: aload 5
    //   130: invokespecial 41	java/io/File:<init>	(Ljava/lang/String;)V
    //   133: astore 6
    //   135: aload 6
    //   137: invokevirtual 45	java/io/File:exists	()Z
    //   140: ifeq +15 -> 155
    //   143: aload 5
    //   145: getstatic 57	com/keniu/security/sync/r:aK	Ljava/lang/String;
    //   148: iconst_0
    //   149: invokestatic 84	com/keniu/security/sync/l:b	(Ljava/lang/String;Ljava/lang/String;Z)Z
    //   152: ifne +26 -> 178
    //   155: aload 4
    //   157: invokevirtual 60	java/io/File:delete	()Z
    //   160: pop
    //   161: aload 6
    //   163: invokevirtual 60	java/io/File:delete	()Z
    //   166: pop
    //   167: sipush -10012
    //   170: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   173: astore 9
    //   175: goto -128 -> 47
    //   178: aload 5
    //   180: invokestatic 87	com/keniu/security/sync/l:e	(Ljava/lang/String;)Z
    //   183: ifeq +455 -> 638
    //   186: aload_0
    //   187: getfield 90	com/keniu/security/sync/c/j:b	Landroid/content/Context;
    //   190: invokevirtual 94	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   193: astore 50
    //   195: new 96	java/io/BufferedReader
    //   198: dup
    //   199: new 98	java/io/FileReader
    //   202: dup
    //   203: aload 6
    //   205: invokespecial 101	java/io/FileReader:<init>	(Ljava/io/File;)V
    //   208: invokespecial 104	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   211: astore 51
    //   213: ldc 106
    //   215: astore 52
    //   217: aload 51
    //   219: invokevirtual 109	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   222: astore 53
    //   224: aload 53
    //   226: ifnull +28 -> 254
    //   229: new 62	java/lang/StringBuilder
    //   232: dup
    //   233: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   236: aload 52
    //   238: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: aload 53
    //   243: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   246: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   249: astore 52
    //   251: goto -34 -> 217
    //   254: new 111	org/json/JSONArray
    //   257: dup
    //   258: aload 52
    //   260: invokespecial 112	org/json/JSONArray:<init>	(Ljava/lang/String;)V
    //   263: astore 54
    //   265: aload_0
    //   266: iconst_0
    //   267: putfield 114	com/keniu/security/sync/c/j:d	I
    //   270: aload_0
    //   271: aload 54
    //   273: invokevirtual 118	org/json/JSONArray:length	()I
    //   276: invokevirtual 121	com/keniu/security/sync/c/j:b	(I)V
    //   279: new 123	android/content/ContentValues
    //   282: dup
    //   283: invokespecial 124	android/content/ContentValues:<init>	()V
    //   286: astore 55
    //   288: iconst_0
    //   289: istore 56
    //   291: aload 54
    //   293: invokevirtual 118	org/json/JSONArray:length	()I
    //   296: istore 57
    //   298: iload 56
    //   300: iload 57
    //   302: if_icmpge +301 -> 603
    //   305: aload 54
    //   307: iload 56
    //   309: invokevirtual 128	org/json/JSONArray:getJSONObject	(I)Lorg/json/JSONObject;
    //   312: astore 62
    //   314: aload 55
    //   316: invokevirtual 131	android/content/ContentValues:clear	()V
    //   319: aload 62
    //   321: ldc 133
    //   323: invokevirtual 139	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   326: ifne +215 -> 541
    //   329: aload 55
    //   331: ldc 141
    //   333: aload 62
    //   335: ldc 141
    //   337: invokevirtual 144	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   340: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   343: aload 55
    //   345: ldc 150
    //   347: aload 62
    //   349: ldc 150
    //   351: invokevirtual 154	org/json/JSONObject:getLong	(Ljava/lang/String;)J
    //   354: invokestatic 159	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   357: invokevirtual 162	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   360: aload 50
    //   362: aload 55
    //   364: invokestatic 165	com/keniu/security/sync/r:a	(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    //   367: ifne +93 -> 460
    //   370: aload 55
    //   372: ldc 167
    //   374: aload 62
    //   376: ldc 167
    //   378: invokevirtual 139	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   381: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   384: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   387: aload 55
    //   389: ldc 172
    //   391: aload 62
    //   393: ldc 172
    //   395: invokevirtual 139	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   398: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   401: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   404: aload 55
    //   406: ldc 174
    //   408: aload 62
    //   410: ldc 174
    //   412: invokevirtual 139	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   415: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   418: invokevirtual 170	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   421: aload 55
    //   423: ldc 176
    //   425: aload 62
    //   427: ldc 176
    //   429: invokevirtual 144	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   432: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   435: aload 55
    //   437: ldc 178
    //   439: aload 62
    //   441: ldc 178
    //   443: invokevirtual 144	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   446: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   449: aload 50
    //   451: getstatic 183	android/a/t:a	Landroid/net/Uri;
    //   454: aload 55
    //   456: invokevirtual 189	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   459: pop
    //   460: aload_0
    //   461: iconst_1
    //   462: aload_0
    //   463: getfield 114	com/keniu/security/sync/c/j:d	I
    //   466: iadd
    //   467: putfield 114	com/keniu/security/sync/c/j:d	I
    //   470: aload_0
    //   471: iload 56
    //   473: invokevirtual 191	com/keniu/security/sync/c/j:a	(I)V
    //   476: iconst_2
    //   477: anewarray 47	java/lang/Integer
    //   480: astore 66
    //   482: aload 66
    //   484: iconst_0
    //   485: aload 54
    //   487: invokevirtual 118	org/json/JSONArray:length	()I
    //   490: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   493: aastore
    //   494: aload 66
    //   496: iconst_1
    //   497: iload 56
    //   499: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   502: aastore
    //   503: aload_0
    //   504: aload 66
    //   506: invokevirtual 195	com/keniu/security/sync/c/j:publishProgress	([Ljava/lang/Object;)V
    //   509: aload_0
    //   510: invokevirtual 198	com/keniu/security/sync/c/j:isCancelled	()Z
    //   513: ifeq +1202 -> 1715
    //   516: aload 4
    //   518: invokevirtual 60	java/io/File:delete	()Z
    //   521: pop
    //   522: aload 6
    //   524: invokevirtual 60	java/io/File:delete	()Z
    //   527: pop
    //   528: iconst_m1
    //   529: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   532: astore 69
    //   534: aload 69
    //   536: astore 9
    //   538: goto -491 -> 47
    //   541: aload 62
    //   543: ldc 133
    //   545: invokevirtual 139	org/json/JSONObject:getInt	(Ljava/lang/String;)I
    //   548: iconst_1
    //   549: if_icmpne -89 -> 460
    //   552: aload 62
    //   554: invokestatic 203	com/jxphone/mosecurity/c/l:a	(Lorg/json/JSONObject;)Lcom/jxphone/mosecurity/c/l;
    //   557: astore 63
    //   559: aload_0
    //   560: getfield 90	com/keniu/security/sync/c/j:b	Landroid/content/Context;
    //   563: invokestatic 208	com/jxphone/mosecurity/logic/h:a	(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;
    //   566: astore 64
    //   568: aload 64
    //   570: aload 63
    //   572: invokeinterface 214 2 0
    //   577: ifne -117 -> 460
    //   580: aload 64
    //   582: aload 63
    //   584: invokeinterface 217 2 0
    //   589: pop
    //   590: goto -130 -> 460
    //   593: astore 61
    //   595: aload 61
    //   597: invokevirtual 220	java/lang/Exception:printStackTrace	()V
    //   600: goto +1115 -> 1715
    //   603: aload 4
    //   605: invokevirtual 60	java/io/File:delete	()Z
    //   608: pop
    //   609: aload 6
    //   611: invokevirtual 60	java/io/File:delete	()Z
    //   614: pop
    //   615: aload_0
    //   616: getfield 114	com/keniu/security/sync/c/j:d	I
    //   619: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   622: astore 60
    //   624: aload 60
    //   626: astore 9
    //   628: goto -581 -> 47
    //   631: astore 49
    //   633: aload 49
    //   635: invokevirtual 220	java/lang/Exception:printStackTrace	()V
    //   638: aload_0
    //   639: aload 6
    //   641: invokevirtual 223	java/io/File:getPath	()Ljava/lang/String;
    //   644: aconst_null
    //   645: iconst_1
    //   646: invokestatic 229	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   649: putfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   652: aload_0
    //   653: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   656: ldc 231
    //   658: aconst_null
    //   659: aconst_null
    //   660: aconst_null
    //   661: aconst_null
    //   662: aconst_null
    //   663: ldc 233
    //   665: invokevirtual 237	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   668: astore 14
    //   670: aload_0
    //   671: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   674: ldc 239
    //   676: aconst_null
    //   677: aconst_null
    //   678: aconst_null
    //   679: aconst_null
    //   680: aconst_null
    //   681: aconst_null
    //   682: invokevirtual 237	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   685: astore 16
    //   687: aload_0
    //   688: invokevirtual 198	com/keniu/security/sync/c/j:isCancelled	()Z
    //   691: ifeq +116 -> 807
    //   694: aload 14
    //   696: ifnull +10 -> 706
    //   699: aload 14
    //   701: invokeinterface 244 1 0
    //   706: aload 16
    //   708: ifnull +10 -> 718
    //   711: aload 16
    //   713: invokeinterface 244 1 0
    //   718: aload_0
    //   719: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   722: ifnull +10 -> 732
    //   725: aload_0
    //   726: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   729: invokevirtual 245	android/database/sqlite/SQLiteDatabase:close	()V
    //   732: aload 4
    //   734: invokevirtual 60	java/io/File:delete	()Z
    //   737: pop
    //   738: aload 6
    //   740: invokevirtual 60	java/io/File:delete	()Z
    //   743: pop
    //   744: iconst_m1
    //   745: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   748: astore 9
    //   750: goto -703 -> 47
    //   753: astore 10
    //   755: aconst_null
    //   756: astore 11
    //   758: aload 11
    //   760: ifnull +10 -> 770
    //   763: aload 11
    //   765: invokeinterface 244 1 0
    //   770: aload_0
    //   771: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   774: ifnull +10 -> 784
    //   777: aload_0
    //   778: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   781: invokevirtual 245	android/database/sqlite/SQLiteDatabase:close	()V
    //   784: aload 4
    //   786: invokevirtual 60	java/io/File:delete	()Z
    //   789: pop
    //   790: aload 6
    //   792: invokevirtual 60	java/io/File:delete	()Z
    //   795: pop
    //   796: sipush -10013
    //   799: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   802: astore 9
    //   804: goto -757 -> 47
    //   807: aload 14
    //   809: ifnonnull +8 -> 817
    //   812: aload 16
    //   814: ifnull +844 -> 1658
    //   817: aload 14
    //   819: ifnull +601 -> 1420
    //   822: aload 14
    //   824: invokeinterface 248 1 0
    //   829: istore 17
    //   831: aload 16
    //   833: ifnull +593 -> 1426
    //   836: aload 16
    //   838: invokeinterface 248 1 0
    //   843: istore 18
    //   845: iload 18
    //   847: iload 17
    //   849: iadd
    //   850: istore 19
    //   852: aload_0
    //   853: iconst_0
    //   854: putfield 114	com/keniu/security/sync/c/j:d	I
    //   857: aload_0
    //   858: new 62	java/lang/StringBuilder
    //   861: dup
    //   862: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   865: ldc 250
    //   867: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   870: iload 18
    //   872: invokevirtual 253	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   875: ldc 255
    //   877: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   880: iload 17
    //   882: invokevirtual 253	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   885: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   888: invokestatic 260	com/keniu/security/sync/i:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   891: aload_0
    //   892: iload 19
    //   894: invokevirtual 121	com/keniu/security/sync/c/j:b	(I)V
    //   897: iconst_0
    //   898: istore 20
    //   900: aload 14
    //   902: ifnull +530 -> 1432
    //   905: iconst_0
    //   906: istore 20
    //   908: iload 17
    //   910: ifle +522 -> 1432
    //   913: aload_0
    //   914: getfield 90	com/keniu/security/sync/c/j:b	Landroid/content/Context;
    //   917: invokevirtual 94	android/content/Context:getContentResolver	()Landroid/content/ContentResolver;
    //   920: astore 32
    //   922: new 123	android/content/ContentValues
    //   925: dup
    //   926: invokespecial 124	android/content/ContentValues:<init>	()V
    //   929: astore 33
    //   931: aload 14
    //   933: ldc 141
    //   935: invokeinterface 263 2 0
    //   940: istore 34
    //   942: aload 14
    //   944: ldc 178
    //   946: invokeinterface 263 2 0
    //   951: istore 35
    //   953: aload 14
    //   955: ldc 150
    //   957: invokeinterface 263 2 0
    //   962: istore 36
    //   964: aload 14
    //   966: ldc_w 265
    //   969: invokeinterface 263 2 0
    //   974: istore 37
    //   976: aload 14
    //   978: ldc 174
    //   980: invokeinterface 263 2 0
    //   985: istore 38
    //   987: aload 14
    //   989: ldc_w 267
    //   992: invokeinterface 263 2 0
    //   997: istore 39
    //   999: aload 14
    //   1001: ldc 172
    //   1003: invokeinterface 263 2 0
    //   1008: istore 40
    //   1010: aload 14
    //   1012: ldc 176
    //   1014: invokeinterface 263 2 0
    //   1019: istore 41
    //   1021: aload 14
    //   1023: ldc 167
    //   1025: invokeinterface 263 2 0
    //   1030: istore 42
    //   1032: aload 14
    //   1034: invokeinterface 270 1 0
    //   1039: ifeq +393 -> 1432
    //   1042: aload 33
    //   1044: invokevirtual 131	android/content/ContentValues:clear	()V
    //   1047: aload 33
    //   1049: ldc 141
    //   1051: aload 14
    //   1053: iload 34
    //   1055: invokeinterface 271 2 0
    //   1060: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1063: aload 33
    //   1065: ldc 178
    //   1067: aload 14
    //   1069: iload 35
    //   1071: invokeinterface 271 2 0
    //   1076: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1079: aload 33
    //   1081: ldc 150
    //   1083: aload 14
    //   1085: iload 36
    //   1087: invokeinterface 271 2 0
    //   1092: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1095: aload 33
    //   1097: ldc_w 265
    //   1100: aload 14
    //   1102: iload 37
    //   1104: invokeinterface 271 2 0
    //   1109: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1112: aload 33
    //   1114: ldc 174
    //   1116: aload 14
    //   1118: iload 38
    //   1120: invokeinterface 271 2 0
    //   1125: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1128: aload 33
    //   1130: ldc_w 267
    //   1133: aload 14
    //   1135: iload 39
    //   1137: invokeinterface 271 2 0
    //   1142: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1145: aload 33
    //   1147: ldc 172
    //   1149: aload 14
    //   1151: iload 40
    //   1153: invokeinterface 271 2 0
    //   1158: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1161: aload 33
    //   1163: ldc 176
    //   1165: aload 14
    //   1167: iload 41
    //   1169: invokeinterface 271 2 0
    //   1174: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1177: aload 33
    //   1179: ldc 167
    //   1181: aload 14
    //   1183: iload 42
    //   1185: invokeinterface 271 2 0
    //   1190: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1193: aload 32
    //   1195: aload 33
    //   1197: invokestatic 165	com/keniu/security/sync/r:a	(Landroid/content/ContentResolver;Landroid/content/ContentValues;)Z
    //   1200: ifne +97 -> 1297
    //   1203: aload 33
    //   1205: ldc_w 273
    //   1208: invokevirtual 276	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   1211: aload 33
    //   1213: ldc_w 278
    //   1216: invokevirtual 276	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   1219: aload 33
    //   1221: ldc_w 280
    //   1224: invokevirtual 276	android/content/ContentValues:remove	(Ljava/lang/String;)V
    //   1227: aload 33
    //   1229: ldc 141
    //   1231: invokevirtual 283	android/content/ContentValues:getAsString	(Ljava/lang/String;)Ljava/lang/String;
    //   1234: invokestatic 289	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1237: ifeq +12 -> 1249
    //   1240: aload 33
    //   1242: ldc 141
    //   1244: ldc 106
    //   1246: invokevirtual 148	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   1249: aload 32
    //   1251: getstatic 183	android/a/t:a	Landroid/net/Uri;
    //   1254: aload 33
    //   1256: invokevirtual 189	android/content/ContentResolver:insert	(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    //   1259: astore 46
    //   1261: aload_0
    //   1262: new 62	java/lang/StringBuilder
    //   1265: dup
    //   1266: invokespecial 65	java/lang/StringBuilder:<init>	()V
    //   1269: ldc_w 291
    //   1272: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1275: aload 46
    //   1277: invokevirtual 294	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1280: ldc_w 296
    //   1283: invokevirtual 69	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1286: aload 33
    //   1288: invokevirtual 294	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   1291: invokevirtual 75	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1294: invokestatic 260	com/keniu/security/sync/i:a	(Ljava/lang/Object;Ljava/lang/String;)V
    //   1297: aload_0
    //   1298: iconst_1
    //   1299: aload_0
    //   1300: getfield 114	com/keniu/security/sync/c/j:d	I
    //   1303: iadd
    //   1304: putfield 114	com/keniu/security/sync/c/j:d	I
    //   1307: iconst_1
    //   1308: aload 14
    //   1310: invokeinterface 299 1 0
    //   1315: iadd
    //   1316: istore 20
    //   1318: aload_0
    //   1319: iload 20
    //   1321: invokevirtual 191	com/keniu/security/sync/c/j:a	(I)V
    //   1324: iconst_2
    //   1325: anewarray 47	java/lang/Integer
    //   1328: astore 43
    //   1330: aload 43
    //   1332: iconst_0
    //   1333: iload 19
    //   1335: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1338: aastore
    //   1339: aload 43
    //   1341: iconst_1
    //   1342: iload 20
    //   1344: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1347: aastore
    //   1348: aload_0
    //   1349: aload 43
    //   1351: invokevirtual 195	com/keniu/security/sync/c/j:publishProgress	([Ljava/lang/Object;)V
    //   1354: aload_0
    //   1355: invokevirtual 198	com/keniu/security/sync/c/j:isCancelled	()Z
    //   1358: ifeq -326 -> 1032
    //   1361: aload 14
    //   1363: ifnull +10 -> 1373
    //   1366: aload 14
    //   1368: invokeinterface 244 1 0
    //   1373: aload 16
    //   1375: ifnull +10 -> 1385
    //   1378: aload 16
    //   1380: invokeinterface 244 1 0
    //   1385: aload_0
    //   1386: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   1389: ifnull +10 -> 1399
    //   1392: aload_0
    //   1393: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   1396: invokevirtual 245	android/database/sqlite/SQLiteDatabase:close	()V
    //   1399: aload 4
    //   1401: invokevirtual 60	java/io/File:delete	()Z
    //   1404: pop
    //   1405: aload 6
    //   1407: invokevirtual 60	java/io/File:delete	()Z
    //   1410: pop
    //   1411: iconst_m1
    //   1412: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1415: astore 9
    //   1417: goto -1370 -> 47
    //   1420: iconst_0
    //   1421: istore 17
    //   1423: goto -592 -> 831
    //   1426: iconst_0
    //   1427: istore 18
    //   1429: goto -584 -> 845
    //   1432: iload 20
    //   1434: istore 21
    //   1436: aload 14
    //   1438: invokeinterface 244 1 0
    //   1443: aload 16
    //   1445: ifnull +213 -> 1658
    //   1448: iload 18
    //   1450: ifle +208 -> 1658
    //   1453: new 123	android/content/ContentValues
    //   1456: dup
    //   1457: invokespecial 124	android/content/ContentValues:<init>	()V
    //   1460: astore 24
    //   1462: aload_0
    //   1463: getfield 90	com/keniu/security/sync/c/j:b	Landroid/content/Context;
    //   1466: invokestatic 208	com/jxphone/mosecurity/logic/h:a	(Landroid/content/Context;)Lcom/jxphone/mosecurity/logic/a/j;
    //   1469: astore 25
    //   1471: aload 16
    //   1473: invokeinterface 270 1 0
    //   1478: ifeq +180 -> 1658
    //   1481: aload 24
    //   1483: invokevirtual 131	android/content/ContentValues:clear	()V
    //   1486: aload 16
    //   1488: invokestatic 302	com/jxphone/mosecurity/c/l:a	(Landroid/database/Cursor;)Lcom/jxphone/mosecurity/c/l;
    //   1491: astore 26
    //   1493: aload 25
    //   1495: aload 26
    //   1497: invokeinterface 214 2 0
    //   1502: ifne +31 -> 1533
    //   1505: aload 26
    //   1507: invokevirtual 304	com/jxphone/mosecurity/c/l:b	()Ljava/lang/String;
    //   1510: invokestatic 289	android/text/TextUtils:isEmpty	(Ljava/lang/CharSequence;)Z
    //   1513: ifeq +10 -> 1523
    //   1516: aload 26
    //   1518: ldc 106
    //   1520: invokevirtual 306	com/jxphone/mosecurity/c/l:a	(Ljava/lang/String;)V
    //   1523: aload 25
    //   1525: aload 26
    //   1527: invokeinterface 217 2 0
    //   1532: pop
    //   1533: aload_0
    //   1534: iconst_1
    //   1535: aload_0
    //   1536: getfield 114	com/keniu/security/sync/c/j:d	I
    //   1539: iadd
    //   1540: putfield 114	com/keniu/security/sync/c/j:d	I
    //   1543: iload 21
    //   1545: iconst_1
    //   1546: iadd
    //   1547: istore 27
    //   1549: aload_0
    //   1550: iload 21
    //   1552: invokevirtual 191	com/keniu/security/sync/c/j:a	(I)V
    //   1555: iconst_2
    //   1556: anewarray 47	java/lang/Integer
    //   1559: astore 28
    //   1561: aload 28
    //   1563: iconst_0
    //   1564: iload 19
    //   1566: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1569: aastore
    //   1570: aload 28
    //   1572: iconst_1
    //   1573: iload 27
    //   1575: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1578: aastore
    //   1579: aload_0
    //   1580: aload 28
    //   1582: invokevirtual 195	com/keniu/security/sync/c/j:publishProgress	([Ljava/lang/Object;)V
    //   1585: aload_0
    //   1586: invokevirtual 198	com/keniu/security/sync/c/j:isCancelled	()Z
    //   1589: ifeq +62 -> 1651
    //   1592: aload 14
    //   1594: ifnull +10 -> 1604
    //   1597: aload 14
    //   1599: invokeinterface 244 1 0
    //   1604: aload 16
    //   1606: ifnull +10 -> 1616
    //   1609: aload 16
    //   1611: invokeinterface 244 1 0
    //   1616: aload_0
    //   1617: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   1620: ifnull +10 -> 1630
    //   1623: aload_0
    //   1624: getfield 23	com/keniu/security/sync/c/j:a	Landroid/database/sqlite/SQLiteDatabase;
    //   1627: invokevirtual 245	android/database/sqlite/SQLiteDatabase:close	()V
    //   1630: aload 4
    //   1632: invokevirtual 60	java/io/File:delete	()Z
    //   1635: pop
    //   1636: aload 6
    //   1638: invokevirtual 60	java/io/File:delete	()Z
    //   1641: pop
    //   1642: iconst_m1
    //   1643: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1646: astore 9
    //   1648: goto -1601 -> 47
    //   1651: iload 27
    //   1653: istore 21
    //   1655: goto -184 -> 1471
    //   1658: aload 14
    //   1660: ifnull +10 -> 1670
    //   1663: aload 14
    //   1665: invokeinterface 244 1 0
    //   1670: aload 16
    //   1672: ifnull +10 -> 1682
    //   1675: aload 16
    //   1677: invokeinterface 244 1 0
    //   1682: aload 4
    //   1684: invokevirtual 60	java/io/File:delete	()Z
    //   1687: pop
    //   1688: aload 6
    //   1690: invokevirtual 60	java/io/File:delete	()Z
    //   1693: pop
    //   1694: aload_0
    //   1695: getfield 114	com/keniu/security/sync/c/j:d	I
    //   1698: invokestatic 51	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   1701: astore 9
    //   1703: goto -1656 -> 47
    //   1706: astore 15
    //   1708: aload 14
    //   1710: astore 11
    //   1712: goto -954 -> 758
    //   1715: iinc 56 1
    //   1718: goto -1427 -> 291
    //
    // Exception table:
    //   from	to	target	type
    //   305	460	593	java/lang/Exception
    //   541	590	593	java/lang/Exception
    //   186	298	631	java/lang/Exception
    //   460	534	631	java/lang/Exception
    //   595	624	631	java/lang/Exception
    //   638	670	753	java/lang/Exception
    //   670	687	1706	java/lang/Exception
  }

  protected final void a(Integer paramInteger)
  {
    super.a(paramInteger);
    i.a(this, ">>>>> sms#" + paramInteger);
    Handler localHandler1 = this.c;
    Handler localHandler2 = this.c;
    if (paramInteger.intValue() != 0);
    for (int i = paramInteger.intValue(); ; i = -10011)
    {
      localHandler1.sendMessage(localHandler2.obtainMessage(13, Integer.valueOf(i)));
      return;
    }
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    b(100);
    a(0);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.keniu.security.sync.c.j
 * JD-Core Version:    0.6.2
 */