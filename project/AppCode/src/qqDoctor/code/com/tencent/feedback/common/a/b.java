package com.tencent.feedback.common.a;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import com.tencent.feedback.common.ELog;
import java.util.ArrayList;
import java.util.List;

public class b
{
  public b()
  {
  }

  public b(Context paramContext)
  {
  }

  // ERROR //
  public static int a(Context paramContext, int[] paramArrayOfInt, long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: ldc 15
    //   5: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnonnull +14 -> 23
    //   12: ldc 23
    //   14: invokestatic 26	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   17: iconst_m1
    //   18: istore 8
    //   20: iload 8
    //   22: ireturn
    //   23: lload_2
    //   24: lload 4
    //   26: lcmp
    //   27: istore 7
    //   29: iconst_0
    //   30: istore 8
    //   32: iload 7
    //   34: ifgt -14 -> 20
    //   37: new 28	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   44: ldc 31
    //   46: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: lload_2
    //   50: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   53: ldc 40
    //   55: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc 42
    //   60: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc 44
    //   65: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: lload 4
    //   70: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   73: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: astore 9
    //   78: aload_1
    //   79: ifnull +352 -> 431
    //   82: aload_1
    //   83: arraylength
    //   84: ifle +347 -> 431
    //   87: ldc 50
    //   89: astore 16
    //   91: iload 8
    //   93: aload_1
    //   94: arraylength
    //   95: if_icmpge +38 -> 133
    //   98: new 28	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   105: aload 16
    //   107: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: ldc 52
    //   112: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload_1
    //   116: iload 8
    //   118: iaload
    //   119: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   122: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: astore 16
    //   127: iinc 8 1
    //   130: goto -39 -> 91
    //   133: aload 16
    //   135: ldc 57
    //   137: invokevirtual 63	java/lang/String:length	()I
    //   140: invokevirtual 67	java/lang/String:substring	(I)Ljava/lang/String;
    //   143: astore 17
    //   145: new 28	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   152: aload 9
    //   154: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: ldc 69
    //   159: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload 17
    //   164: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: ldc 71
    //   169: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: astore 10
    //   177: new 28	java/lang/StringBuilder
    //   180: dup
    //   181: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   184: ldc 73
    //   186: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: aload 10
    //   191: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   200: new 75	com/tencent/feedback/common/a/d
    //   203: dup
    //   204: aload_0
    //   205: invokespecial 77	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   208: astore 11
    //   210: aload 11
    //   212: invokevirtual 81	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   215: astore 15
    //   217: aload 15
    //   219: astore 13
    //   221: aload 13
    //   223: ldc 83
    //   225: aload 10
    //   227: aconst_null
    //   228: invokevirtual 89	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   231: istore 8
    //   233: new 28	java/lang/StringBuilder
    //   236: dup
    //   237: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   240: ldc 91
    //   242: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: iload 8
    //   247: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   250: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   256: aload 13
    //   258: ifnull +16 -> 274
    //   261: aload 13
    //   263: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   266: ifeq +8 -> 274
    //   269: aload 13
    //   271: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   274: aload 11
    //   276: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   279: ldc 101
    //   281: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   284: goto -264 -> 20
    //   287: astore 12
    //   289: aconst_null
    //   290: astore 13
    //   292: aload 12
    //   294: invokevirtual 104	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   297: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   300: aload 12
    //   302: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   305: aload 13
    //   307: ifnull +16 -> 323
    //   310: aload 13
    //   312: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   315: ifeq +8 -> 323
    //   318: aload 13
    //   320: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   323: aload 6
    //   325: ifnull +8 -> 333
    //   328: aload 6
    //   330: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   333: ldc 101
    //   335: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   338: iconst_m1
    //   339: istore 8
    //   341: goto -321 -> 20
    //   344: astore 14
    //   346: aconst_null
    //   347: astore 13
    //   349: aconst_null
    //   350: astore 11
    //   352: aload 13
    //   354: ifnull +16 -> 370
    //   357: aload 13
    //   359: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   362: ifeq +8 -> 370
    //   365: aload 13
    //   367: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   370: aload 11
    //   372: ifnull +8 -> 380
    //   375: aload 11
    //   377: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   380: ldc 101
    //   382: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   385: aload 14
    //   387: athrow
    //   388: astore 14
    //   390: aconst_null
    //   391: astore 13
    //   393: goto -41 -> 352
    //   396: astore 14
    //   398: goto -46 -> 352
    //   401: astore 14
    //   403: aload 6
    //   405: astore 11
    //   407: goto -55 -> 352
    //   410: astore 12
    //   412: aload 11
    //   414: astore 6
    //   416: aconst_null
    //   417: astore 13
    //   419: goto -127 -> 292
    //   422: astore 12
    //   424: aload 11
    //   426: astore 6
    //   428: goto -136 -> 292
    //   431: aload 9
    //   433: astore 10
    //   435: goto -258 -> 177
    //
    // Exception table:
    //   from	to	target	type
    //   200	210	287	java/lang/Throwable
    //   200	210	344	finally
    //   210	217	388	finally
    //   221	256	396	finally
    //   292	305	401	finally
    //   210	217	410	java/lang/Throwable
    //   221	256	422	java/lang/Throwable
  }

  // ERROR //
  public static int a(Context paramContext, Long[] paramArrayOfLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 110
    //   4: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   7: aload_0
    //   8: ifnonnull +12 -> 20
    //   11: ldc 112
    //   13: invokestatic 115	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   16: iconst_m1
    //   17: istore_3
    //   18: iload_3
    //   19: ireturn
    //   20: iconst_0
    //   21: istore_3
    //   22: aload_1
    //   23: ifnull -5 -> 18
    //   26: aload_1
    //   27: arraylength
    //   28: istore 4
    //   30: iconst_0
    //   31: istore_3
    //   32: iload 4
    //   34: ifle -16 -> 18
    //   37: new 75	com/tencent/feedback/common/a/d
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 77	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   45: astore 5
    //   47: aload 5
    //   49: invokevirtual 81	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   52: astore_2
    //   53: new 117	java/lang/StringBuffer
    //   56: dup
    //   57: invokespecial 118	java/lang/StringBuffer:<init>	()V
    //   60: astore 8
    //   62: iconst_0
    //   63: istore 9
    //   65: iload 9
    //   67: aload_1
    //   68: arraylength
    //   69: if_icmpge +125 -> 194
    //   72: aload_1
    //   73: iload 9
    //   75: aaload
    //   76: invokevirtual 124	java/lang/Long:longValue	()J
    //   79: lstore 10
    //   81: aload 8
    //   83: new 28	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   90: ldc 126
    //   92: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: lload 10
    //   97: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   100: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokevirtual 129	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   106: pop
    //   107: iload 9
    //   109: ifle +270 -> 379
    //   112: iload 9
    //   114: bipush 50
    //   116: irem
    //   117: ifne +262 -> 379
    //   120: new 28	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   127: ldc 131
    //   129: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: iload 9
    //   134: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   137: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   143: iload_3
    //   144: aload_2
    //   145: ldc 83
    //   147: aload 8
    //   149: ldc 57
    //   151: invokevirtual 63	java/lang/String:length	()I
    //   154: invokevirtual 132	java/lang/StringBuffer:substring	(I)Ljava/lang/String;
    //   157: aconst_null
    //   158: invokevirtual 89	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   161: iadd
    //   162: istore_3
    //   163: aload 8
    //   165: iconst_0
    //   166: invokevirtual 136	java/lang/StringBuffer:setLength	(I)V
    //   169: new 28	java/lang/StringBuilder
    //   172: dup
    //   173: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   176: ldc 138
    //   178: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: iload_3
    //   182: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   185: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   191: goto +188 -> 379
    //   194: aload 8
    //   196: invokevirtual 139	java/lang/StringBuffer:length	()I
    //   199: ifle +29 -> 228
    //   202: iload_3
    //   203: aload_2
    //   204: ldc 83
    //   206: aload 8
    //   208: ldc 57
    //   210: invokevirtual 63	java/lang/String:length	()I
    //   213: invokevirtual 132	java/lang/StringBuffer:substring	(I)Ljava/lang/String;
    //   216: aconst_null
    //   217: invokevirtual 89	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   220: iadd
    //   221: istore_3
    //   222: aload 8
    //   224: iconst_0
    //   225: invokevirtual 136	java/lang/StringBuffer:setLength	(I)V
    //   228: new 28	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   235: ldc 141
    //   237: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: iload_3
    //   241: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   244: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 26	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   250: aload_2
    //   251: ifnull +14 -> 265
    //   254: aload_2
    //   255: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   258: ifeq +7 -> 265
    //   261: aload_2
    //   262: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   265: aload 5
    //   267: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   270: ldc 143
    //   272: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   275: goto -257 -> 18
    //   278: astore 6
    //   280: aconst_null
    //   281: astore 5
    //   283: aload 6
    //   285: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   288: aload 6
    //   290: invokevirtual 104	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   293: invokestatic 115	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   296: aload_2
    //   297: ifnull +14 -> 311
    //   300: aload_2
    //   301: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   304: ifeq +7 -> 311
    //   307: aload_2
    //   308: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   311: aload 5
    //   313: ifnull +8 -> 321
    //   316: aload 5
    //   318: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   321: ldc 143
    //   323: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   326: iconst_m1
    //   327: istore_3
    //   328: goto -310 -> 18
    //   331: astore 7
    //   333: aconst_null
    //   334: astore 5
    //   336: aload_2
    //   337: ifnull +14 -> 351
    //   340: aload_2
    //   341: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   344: ifeq +7 -> 351
    //   347: aload_2
    //   348: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   351: aload 5
    //   353: ifnull +8 -> 361
    //   356: aload 5
    //   358: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   361: ldc 143
    //   363: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   366: aload 7
    //   368: athrow
    //   369: astore 7
    //   371: goto -35 -> 336
    //   374: astore 6
    //   376: goto -93 -> 283
    //   379: iinc 9 1
    //   382: goto -317 -> 65
    //
    // Exception table:
    //   from	to	target	type
    //   37	47	278	java/lang/Throwable
    //   37	47	331	finally
    //   47	250	369	finally
    //   283	296	369	finally
    //   47	250	374	java/lang/Throwable
  }

  private static ContentValues a(a parama)
  {
    ContentValues localContentValues = new ContentValues();
    if (parama.a() > 0L)
      localContentValues.put("_id", Long.valueOf(parama.a()));
    localContentValues.put("_prority", Integer.valueOf(parama.c()));
    localContentValues.put("_time", Long.valueOf(parama.d()));
    localContentValues.put("_type", Integer.valueOf(parama.b()));
    localContentValues.put("_datas", parama.e());
    localContentValues.put("_length", Long.valueOf(parama.f()));
    localContentValues.put("_key", parama.g());
    localContentValues.put("_count", Integer.valueOf(parama.h()));
    localContentValues.put("_alltimes", parama.i());
    return localContentValues;
  }

  // ERROR //
  public static List a(Context paramContext, int[] paramArrayOfInt, int paramInt1, int paramInt2, long paramLong1, int paramInt3, java.lang.String paramString, int paramInt4, int paramInt5, long paramLong2, long paramLong3)
  {
    // Byte code:
    //   0: ldc 217
    //   2: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: ifnull +37 -> 43
    //   9: lload 4
    //   11: lconst_0
    //   12: lcmp
    //   13: ifeq +30 -> 43
    //   16: lload 12
    //   18: lconst_0
    //   19: lcmp
    //   20: ifle +11 -> 31
    //   23: lload 10
    //   25: lload 12
    //   27: lcmp
    //   28: ifgt +15 -> 43
    //   31: iload 9
    //   33: ifle +21 -> 54
    //   36: iload 8
    //   38: iload 9
    //   40: if_icmple +14 -> 54
    //   43: ldc 219
    //   45: invokestatic 115	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   48: aconst_null
    //   49: astore 14
    //   51: aload 14
    //   53: areturn
    //   54: lload 4
    //   56: lconst_0
    //   57: lcmp
    //   58: ifge +8 -> 66
    //   61: ldc2_w 220
    //   64: lstore 4
    //   66: aload_1
    //   67: ifnull +1800 -> 1867
    //   70: aload_1
    //   71: arraylength
    //   72: ifle +1795 -> 1867
    //   75: ldc 50
    //   77: astore 71
    //   79: iconst_0
    //   80: istore 72
    //   82: iload 72
    //   84: aload_1
    //   85: arraylength
    //   86: if_icmpge +38 -> 124
    //   89: new 28	java/lang/StringBuilder
    //   92: dup
    //   93: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   96: aload 71
    //   98: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   101: ldc 52
    //   103: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   106: aload_1
    //   107: iload 72
    //   109: iaload
    //   110: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   113: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   116: astore 71
    //   118: iinc 72 1
    //   121: goto -39 -> 82
    //   124: new 28	java/lang/StringBuilder
    //   127: dup
    //   128: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   131: ldc 50
    //   133: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   136: aload 71
    //   138: ldc 57
    //   140: invokevirtual 63	java/lang/String:length	()I
    //   143: invokevirtual 67	java/lang/String:substring	(I)Ljava/lang/String;
    //   146: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   149: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   152: astore 15
    //   154: aload 15
    //   156: invokevirtual 63	java/lang/String:length	()I
    //   159: ifle +756 -> 915
    //   162: new 28	java/lang/StringBuilder
    //   165: dup
    //   166: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   169: ldc 223
    //   171: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: aload 15
    //   176: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: ldc 225
    //   181: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   184: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   187: astore 16
    //   189: aload 7
    //   191: ifnull +61 -> 252
    //   194: new 28	java/lang/StringBuilder
    //   197: dup
    //   198: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   201: aload 16
    //   203: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   206: astore 69
    //   208: aload 16
    //   210: invokevirtual 63	java/lang/String:length	()I
    //   213: ifle +709 -> 922
    //   216: ldc 40
    //   218: astore 70
    //   220: aload 69
    //   222: aload 70
    //   224: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: ldc 198
    //   229: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: ldc 227
    //   234: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   237: aload 7
    //   239: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   242: ldc 229
    //   244: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   247: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   250: astore 16
    //   252: iload 8
    //   254: iflt +61 -> 315
    //   257: new 28	java/lang/StringBuilder
    //   260: dup
    //   261: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   264: aload 16
    //   266: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   269: astore 67
    //   271: aload 16
    //   273: invokevirtual 63	java/lang/String:length	()I
    //   276: ifle +653 -> 929
    //   279: ldc 40
    //   281: astore 68
    //   283: aload 67
    //   285: aload 68
    //   287: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   290: ldc 206
    //   292: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   295: ldc 231
    //   297: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: iload 8
    //   302: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   305: ldc 233
    //   307: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   310: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   313: astore 16
    //   315: iload 9
    //   317: iflt +61 -> 378
    //   320: new 28	java/lang/StringBuilder
    //   323: dup
    //   324: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   327: aload 16
    //   329: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: astore 65
    //   334: aload 16
    //   336: invokevirtual 63	java/lang/String:length	()I
    //   339: ifle +597 -> 936
    //   342: ldc 40
    //   344: astore 66
    //   346: aload 65
    //   348: aload 66
    //   350: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   353: ldc 206
    //   355: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   358: ldc 44
    //   360: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   363: iload 9
    //   365: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   368: ldc 233
    //   370: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   373: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   376: astore 16
    //   378: lload 10
    //   380: lconst_0
    //   381: lcmp
    //   382: iflt +61 -> 443
    //   385: new 28	java/lang/StringBuilder
    //   388: dup
    //   389: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   392: aload 16
    //   394: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   397: astore 63
    //   399: aload 16
    //   401: invokevirtual 63	java/lang/String:length	()I
    //   404: ifle +539 -> 943
    //   407: ldc 40
    //   409: astore 64
    //   411: aload 63
    //   413: aload 64
    //   415: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   418: ldc 42
    //   420: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   423: ldc 231
    //   425: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   428: lload 10
    //   430: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   433: ldc 233
    //   435: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   438: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   441: astore 16
    //   443: lload 12
    //   445: lconst_0
    //   446: lcmp
    //   447: iflt +61 -> 508
    //   450: new 28	java/lang/StringBuilder
    //   453: dup
    //   454: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   457: aload 16
    //   459: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   462: astore 61
    //   464: aload 16
    //   466: invokevirtual 63	java/lang/String:length	()I
    //   469: ifle +481 -> 950
    //   472: ldc 40
    //   474: astore 62
    //   476: aload 61
    //   478: aload 62
    //   480: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   483: ldc 42
    //   485: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   488: ldc 44
    //   490: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   493: lload 12
    //   495: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   498: ldc 233
    //   500: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   503: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   506: astore 16
    //   508: ldc 50
    //   510: astore 17
    //   512: iload_2
    //   513: tableswitch	default:+23 -> 536, 1:+444->957, 2:+470->983
    //   537: tableswitch	default:+23 -> 560, 1:+472->1009, 2:+498->1035
    //   561: sipush 4843
    //   564: invokevirtual 239	java/lang/String:endsWith	(Ljava/lang/String;)Z
    //   567: ifeq +1293 -> 1860
    //   570: aload 17
    //   572: iconst_0
    //   573: aload 17
    //   575: invokevirtual 63	java/lang/String:length	()I
    //   578: ldc 235
    //   580: invokevirtual 63	java/lang/String:length	()I
    //   583: isub
    //   584: invokevirtual 242	java/lang/String:substring	(II)Ljava/lang/String;
    //   587: astore 18
    //   589: aconst_null
    //   590: astore 19
    //   592: new 244	java/util/ArrayList
    //   595: dup
    //   596: invokespecial 245	java/util/ArrayList:<init>	()V
    //   599: astore 20
    //   601: new 75	com/tencent/feedback/common/a/d
    //   604: dup
    //   605: aload_0
    //   606: invokespecial 77	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   609: astore 21
    //   611: aload 21
    //   613: invokevirtual 81	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   616: astore 26
    //   618: lload 4
    //   620: lconst_0
    //   621: lcmp
    //   622: ifle +942 -> 1564
    //   625: aload 18
    //   627: invokevirtual 63	java/lang/String:length	()I
    //   630: ifle +25 -> 655
    //   633: new 28	java/lang/StringBuilder
    //   636: dup
    //   637: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   640: aload 18
    //   642: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   645: ldc 235
    //   647: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   650: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   653: astore 18
    //   655: new 28	java/lang/StringBuilder
    //   658: dup
    //   659: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   662: aload 18
    //   664: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   667: ldc 247
    //   669: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   672: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   675: astore 33
    //   677: iconst_2
    //   678: anewarray 59	java/lang/String
    //   681: dup
    //   682: iconst_0
    //   683: ldc 153
    //   685: aastore
    //   686: dup
    //   687: iconst_1
    //   688: ldc 193
    //   690: aastore
    //   691: astore 34
    //   693: iload 6
    //   695: iflt +366 -> 1061
    //   698: new 28	java/lang/StringBuilder
    //   701: dup
    //   702: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   705: ldc 50
    //   707: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   710: iload 6
    //   712: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   715: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   718: astore 35
    //   720: aload 26
    //   722: ldc 83
    //   724: aload 34
    //   726: aload 16
    //   728: aconst_null
    //   729: aconst_null
    //   730: aconst_null
    //   731: aload 33
    //   733: aload 35
    //   735: invokevirtual 251	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   738: astore 36
    //   740: aload 36
    //   742: astore 24
    //   744: aload 24
    //   746: ldc 153
    //   748: invokeinterface 257 2 0
    //   753: istore 37
    //   755: aload 24
    //   757: ldc 193
    //   759: invokeinterface 257 2 0
    //   764: istore 38
    //   766: new 259	java/util/LinkedHashMap
    //   769: dup
    //   770: invokespecial 260	java/util/LinkedHashMap:<init>	()V
    //   773: astore 39
    //   775: aload 24
    //   777: invokeinterface 263 1 0
    //   782: ifeq +285 -> 1067
    //   785: aload 24
    //   787: iload 37
    //   789: invokeinterface 267 2 0
    //   794: lstore 56
    //   796: aload 24
    //   798: iload 38
    //   800: invokeinterface 267 2 0
    //   805: lstore 58
    //   807: aload 39
    //   809: lload 56
    //   811: invokestatic 157	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   814: lload 58
    //   816: invokestatic 157	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   819: invokevirtual 270	java/util/LinkedHashMap:put	(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    //   822: pop
    //   823: goto -48 -> 775
    //   826: astore 32
    //   828: aload 26
    //   830: astore 19
    //   832: aload 32
    //   834: astore 22
    //   836: aload 21
    //   838: astore 23
    //   840: aload 22
    //   842: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   845: aload 22
    //   847: invokevirtual 104	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   850: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   853: aload 24
    //   855: ifnull +20 -> 875
    //   858: aload 24
    //   860: invokeinterface 273 1 0
    //   865: ifne +10 -> 875
    //   868: aload 24
    //   870: invokeinterface 274 1 0
    //   875: aload 19
    //   877: ifnull +16 -> 893
    //   880: aload 19
    //   882: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   885: ifeq +8 -> 893
    //   888: aload 19
    //   890: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   893: aload 23
    //   895: ifnull +8 -> 903
    //   898: aload 23
    //   900: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   903: ldc_w 276
    //   906: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   909: aconst_null
    //   910: astore 14
    //   912: goto -861 -> 51
    //   915: ldc 50
    //   917: astore 16
    //   919: goto -730 -> 189
    //   922: ldc 50
    //   924: astore 70
    //   926: goto -706 -> 220
    //   929: ldc 50
    //   931: astore 68
    //   933: goto -650 -> 283
    //   936: ldc 50
    //   938: astore 66
    //   940: goto -594 -> 346
    //   943: ldc 50
    //   945: astore 64
    //   947: goto -536 -> 411
    //   950: ldc 50
    //   952: astore 62
    //   954: goto -478 -> 476
    //   957: new 28	java/lang/StringBuilder
    //   960: dup
    //   961: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   964: aload 17
    //   966: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   969: ldc_w 278
    //   972: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   975: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   978: astore 17
    //   980: goto -444 -> 536
    //   983: new 28	java/lang/StringBuilder
    //   986: dup
    //   987: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   990: aload 17
    //   992: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   995: ldc_w 280
    //   998: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1001: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1004: astore 17
    //   1006: goto -470 -> 536
    //   1009: new 28	java/lang/StringBuilder
    //   1012: dup
    //   1013: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1016: aload 17
    //   1018: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1021: ldc_w 282
    //   1024: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1027: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1030: astore 17
    //   1032: goto -472 -> 560
    //   1035: new 28	java/lang/StringBuilder
    //   1038: dup
    //   1039: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1042: aload 17
    //   1044: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1047: ldc_w 284
    //   1050: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1053: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1056: astore 17
    //   1058: goto -498 -> 560
    //   1061: aconst_null
    //   1062: astore 35
    //   1064: goto -344 -> 720
    //   1067: aload 24
    //   1069: invokeinterface 274 1 0
    //   1074: aload 39
    //   1076: lload 4
    //   1078: invokestatic 289	com/tencent/feedback/common/a:a	(Ljava/util/LinkedHashMap;J)[Ljava/lang/Long;
    //   1081: astore 40
    //   1083: aload 40
    //   1085: ifnull +422 -> 1507
    //   1088: aload 40
    //   1090: arraylength
    //   1091: ifle +416 -> 1507
    //   1094: new 28	java/lang/StringBuilder
    //   1097: dup
    //   1098: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1101: ldc_w 291
    //   1104: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1107: aload 40
    //   1109: arraylength
    //   1110: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1113: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1116: invokestatic 26	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   1119: new 117	java/lang/StringBuffer
    //   1122: dup
    //   1123: invokespecial 118	java/lang/StringBuffer:<init>	()V
    //   1126: astore 41
    //   1128: iconst_0
    //   1129: istore 42
    //   1131: iload 42
    //   1133: aload 40
    //   1135: arraylength
    //   1136: if_icmpge +186 -> 1322
    //   1139: aload 40
    //   1141: iload 42
    //   1143: aaload
    //   1144: invokevirtual 124	java/lang/Long:longValue	()J
    //   1147: lstore 46
    //   1149: aload 41
    //   1151: new 28	java/lang/StringBuilder
    //   1154: dup
    //   1155: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1158: ldc 126
    //   1160: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1163: lload 46
    //   1165: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   1168: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1171: invokevirtual 129	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   1174: pop
    //   1175: iload 42
    //   1177: ifle +676 -> 1853
    //   1180: iload 42
    //   1182: bipush 50
    //   1184: irem
    //   1185: ifne +668 -> 1853
    //   1188: new 28	java/lang/StringBuilder
    //   1191: dup
    //   1192: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1195: ldc 131
    //   1197: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1200: iload 42
    //   1202: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1205: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1208: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   1211: aload 41
    //   1213: ldc 57
    //   1215: invokevirtual 63	java/lang/String:length	()I
    //   1218: invokevirtual 132	java/lang/StringBuffer:substring	(I)Ljava/lang/String;
    //   1221: astore 50
    //   1223: aload 41
    //   1225: iconst_0
    //   1226: invokevirtual 136	java/lang/StringBuffer:setLength	(I)V
    //   1229: aload 26
    //   1231: ldc 83
    //   1233: aconst_null
    //   1234: aload 50
    //   1236: aconst_null
    //   1237: aconst_null
    //   1238: aconst_null
    //   1239: aload 33
    //   1241: invokevirtual 294	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1244: astore 51
    //   1246: aload 51
    //   1248: astore 49
    //   1250: aload 49
    //   1252: invokestatic 297	com/tencent/feedback/common/a/b:a	(Landroid/database/Cursor;)Ljava/util/List;
    //   1255: astore 54
    //   1257: aload 54
    //   1259: ifnull +46 -> 1305
    //   1262: aload 54
    //   1264: invokeinterface 302 1 0
    //   1269: ifle +36 -> 1305
    //   1272: aload 20
    //   1274: aload 54
    //   1276: invokeinterface 306 2 0
    //   1281: pop
    //   1282: new 28	java/lang/StringBuilder
    //   1285: dup
    //   1286: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1289: ldc_w 308
    //   1292: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1295: iconst_0
    //   1296: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1299: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1302: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   1305: aload 49
    //   1307: invokeinterface 274 1 0
    //   1312: iinc 42 1
    //   1315: aload 49
    //   1317: astore 24
    //   1319: goto -188 -> 1131
    //   1322: aload 41
    //   1324: invokevirtual 139	java/lang/StringBuffer:length	()I
    //   1327: ifle +93 -> 1420
    //   1330: aload 41
    //   1332: ldc 57
    //   1334: invokevirtual 63	java/lang/String:length	()I
    //   1337: invokevirtual 132	java/lang/StringBuffer:substring	(I)Ljava/lang/String;
    //   1340: astore 43
    //   1342: aload 41
    //   1344: iconst_0
    //   1345: invokevirtual 136	java/lang/StringBuffer:setLength	(I)V
    //   1348: aload 26
    //   1350: ldc 83
    //   1352: aconst_null
    //   1353: aload 43
    //   1355: aconst_null
    //   1356: aconst_null
    //   1357: aconst_null
    //   1358: aload 33
    //   1360: invokevirtual 294	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1363: astore 24
    //   1365: aload 24
    //   1367: invokestatic 297	com/tencent/feedback/common/a/b:a	(Landroid/database/Cursor;)Ljava/util/List;
    //   1370: astore 44
    //   1372: aload 44
    //   1374: ifnull +46 -> 1420
    //   1377: aload 44
    //   1379: invokeinterface 302 1 0
    //   1384: ifle +36 -> 1420
    //   1387: aload 20
    //   1389: aload 44
    //   1391: invokeinterface 306 2 0
    //   1396: pop
    //   1397: new 28	java/lang/StringBuilder
    //   1400: dup
    //   1401: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1404: ldc_w 308
    //   1407: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1410: iconst_0
    //   1411: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1414: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1417: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   1420: new 28	java/lang/StringBuilder
    //   1423: dup
    //   1424: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   1427: ldc_w 310
    //   1430: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   1433: aload 20
    //   1435: invokeinterface 302 1 0
    //   1440: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   1443: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   1446: invokestatic 26	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   1449: aload 24
    //   1451: ifnull +20 -> 1471
    //   1454: aload 24
    //   1456: invokeinterface 273 1 0
    //   1461: ifne +10 -> 1471
    //   1464: aload 24
    //   1466: invokeinterface 274 1 0
    //   1471: aload 26
    //   1473: ifnull +16 -> 1489
    //   1476: aload 26
    //   1478: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   1481: ifeq +8 -> 1489
    //   1484: aload 26
    //   1486: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   1489: aload 21
    //   1491: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   1494: ldc_w 276
    //   1497: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   1500: aload 20
    //   1502: astore 14
    //   1504: goto -1453 -> 51
    //   1507: aload 24
    //   1509: ifnull +20 -> 1529
    //   1512: aload 24
    //   1514: invokeinterface 273 1 0
    //   1519: ifne +10 -> 1529
    //   1522: aload 24
    //   1524: invokeinterface 274 1 0
    //   1529: aload 26
    //   1531: ifnull +16 -> 1547
    //   1534: aload 26
    //   1536: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   1539: ifeq +8 -> 1547
    //   1542: aload 26
    //   1544: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   1547: aload 21
    //   1549: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   1552: ldc_w 276
    //   1555: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   1558: aconst_null
    //   1559: astore 14
    //   1561: goto -1510 -> 51
    //   1564: aload 26
    //   1566: ldc 83
    //   1568: aconst_null
    //   1569: aload 16
    //   1571: aconst_null
    //   1572: aconst_null
    //   1573: aconst_null
    //   1574: aload 18
    //   1576: invokevirtual 294	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   1579: astore 29
    //   1581: aload 29
    //   1583: astore 24
    //   1585: aload 24
    //   1587: invokestatic 297	com/tencent/feedback/common/a/b:a	(Landroid/database/Cursor;)Ljava/util/List;
    //   1590: astore 31
    //   1592: aload 24
    //   1594: ifnull +20 -> 1614
    //   1597: aload 24
    //   1599: invokeinterface 273 1 0
    //   1604: ifne +10 -> 1614
    //   1607: aload 24
    //   1609: invokeinterface 274 1 0
    //   1614: aload 26
    //   1616: ifnull +16 -> 1632
    //   1619: aload 26
    //   1621: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   1624: ifeq +8 -> 1632
    //   1627: aload 26
    //   1629: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   1632: aload 21
    //   1634: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   1637: ldc_w 276
    //   1640: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   1643: aload 31
    //   1645: astore 14
    //   1647: goto -1596 -> 51
    //   1650: astore 25
    //   1652: aconst_null
    //   1653: astore 21
    //   1655: aconst_null
    //   1656: astore 24
    //   1658: aload 24
    //   1660: ifnull +20 -> 1680
    //   1663: aload 24
    //   1665: invokeinterface 273 1 0
    //   1670: ifne +10 -> 1680
    //   1673: aload 24
    //   1675: invokeinterface 274 1 0
    //   1680: aload 19
    //   1682: ifnull +16 -> 1698
    //   1685: aload 19
    //   1687: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   1690: ifeq +8 -> 1698
    //   1693: aload 19
    //   1695: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   1698: aload 21
    //   1700: ifnull +8 -> 1708
    //   1703: aload 21
    //   1705: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   1708: ldc_w 276
    //   1711: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   1714: aload 25
    //   1716: athrow
    //   1717: astore 25
    //   1719: aconst_null
    //   1720: astore 19
    //   1722: aconst_null
    //   1723: astore 24
    //   1725: goto -67 -> 1658
    //   1728: astore 28
    //   1730: aload 26
    //   1732: astore 19
    //   1734: aload 28
    //   1736: astore 25
    //   1738: aconst_null
    //   1739: astore 24
    //   1741: goto -83 -> 1658
    //   1744: astore 30
    //   1746: aload 26
    //   1748: astore 19
    //   1750: aload 30
    //   1752: astore 25
    //   1754: goto -96 -> 1658
    //   1757: astore 53
    //   1759: aload 49
    //   1761: astore 24
    //   1763: aload 26
    //   1765: astore 19
    //   1767: aload 53
    //   1769: astore 25
    //   1771: goto -113 -> 1658
    //   1774: astore 25
    //   1776: aload 23
    //   1778: astore 21
    //   1780: goto -122 -> 1658
    //   1783: astore 22
    //   1785: aconst_null
    //   1786: astore 23
    //   1788: aconst_null
    //   1789: astore 19
    //   1791: aconst_null
    //   1792: astore 24
    //   1794: goto -954 -> 840
    //   1797: astore 22
    //   1799: aload 21
    //   1801: astore 23
    //   1803: aconst_null
    //   1804: astore 19
    //   1806: aconst_null
    //   1807: astore 24
    //   1809: goto -969 -> 840
    //   1812: astore 27
    //   1814: aload 26
    //   1816: astore 19
    //   1818: aload 27
    //   1820: astore 22
    //   1822: aload 21
    //   1824: astore 23
    //   1826: aconst_null
    //   1827: astore 24
    //   1829: goto -989 -> 840
    //   1832: astore 52
    //   1834: aload 49
    //   1836: astore 24
    //   1838: aload 21
    //   1840: astore 23
    //   1842: aload 26
    //   1844: astore 19
    //   1846: aload 52
    //   1848: astore 22
    //   1850: goto -1010 -> 840
    //   1853: aload 24
    //   1855: astore 49
    //   1857: goto -545 -> 1312
    //   1860: aload 17
    //   1862: astore 18
    //   1864: goto -1275 -> 589
    //   1867: ldc 50
    //   1869: astore 15
    //   1871: goto -1717 -> 154
    //
    // Exception table:
    //   from	to	target	type
    //   744	823	826	java/lang/Throwable
    //   1067	1246	826	java/lang/Throwable
    //   1322	1449	826	java/lang/Throwable
    //   1585	1592	826	java/lang/Throwable
    //   601	611	1650	finally
    //   611	618	1717	finally
    //   625	740	1728	finally
    //   1564	1581	1728	finally
    //   744	823	1744	finally
    //   1067	1246	1744	finally
    //   1322	1449	1744	finally
    //   1585	1592	1744	finally
    //   1250	1312	1757	finally
    //   840	853	1774	finally
    //   601	611	1783	java/lang/Throwable
    //   611	618	1797	java/lang/Throwable
    //   625	740	1812	java/lang/Throwable
    //   1564	1581	1812	java/lang/Throwable
    //   1250	1312	1832	java/lang/Throwable
  }

  private static List a(Cursor paramCursor)
  {
    ELog.debug("in AnalyticsDAO.paserCursor() start");
    Object localObject;
    if (paramCursor == null)
      localObject = null;
    while (true)
    {
      return localObject;
      localObject = new ArrayList();
      int i = paramCursor.getColumnIndex("_id");
      int j = paramCursor.getColumnIndex("_prority");
      int k = paramCursor.getColumnIndex("_time");
      int m = paramCursor.getColumnIndex("_type");
      int n = paramCursor.getColumnIndex("_datas");
      int i1 = paramCursor.getColumnIndex("_length");
      int i2 = paramCursor.getColumnIndex("_key");
      int i3 = paramCursor.getColumnIndex("_count");
      int i4 = paramCursor.getColumnIndex("_alltimes");
      while (paramCursor.moveToNext())
      {
        a locala = new a();
        locala.a(paramCursor.getLong(i));
        locala.a(paramCursor.getBlob(n));
        locala.b(paramCursor.getInt(j));
        locala.b(paramCursor.getLong(k));
        locala.a(paramCursor.getInt(m));
        locala.c(paramCursor.getLong(i1));
        locala.a(paramCursor.getString(i2));
        locala.c(paramCursor.getInt(i3));
        locala.b(paramCursor.getString(i4));
        ((List)localObject).add(locala);
      }
      ELog.debug("in AnalyticsDAO.paserCursor() end");
    }
  }

  public static boolean a(Context paramContext, a parama)
  {
    if ((paramContext == null) || (parama == null))
      ELog.info("AnalyticsDAO.insert() have null args");
    ArrayList localArrayList;
    for (boolean bool = false; ; bool = a(paramContext, localArrayList))
    {
      return bool;
      localArrayList = new ArrayList();
      localArrayList.add(parama);
    }
  }

  // ERROR //
  public static boolean a(Context paramContext, List paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc_w 361
    //   5: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnull +7 -> 16
    //   12: aload_1
    //   13: ifnonnull +13 -> 26
    //   16: ldc_w 355
    //   19: invokestatic 115	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   22: iconst_0
    //   23: istore_3
    //   24: iload_3
    //   25: ireturn
    //   26: aload_1
    //   27: invokeinterface 302 1 0
    //   32: ifgt +14 -> 46
    //   35: ldc_w 363
    //   38: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   41: iconst_1
    //   42: istore_3
    //   43: goto -19 -> 24
    //   46: new 75	com/tencent/feedback/common/a/d
    //   49: dup
    //   50: aload_0
    //   51: invokespecial 77	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   54: astore 4
    //   56: aload 4
    //   58: invokevirtual 81	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   61: astore 8
    //   63: aload 8
    //   65: astore_2
    //   66: iconst_0
    //   67: istore 9
    //   69: iload 9
    //   71: aload_1
    //   72: invokeinterface 302 1 0
    //   77: if_icmpge +89 -> 166
    //   80: aload_1
    //   81: iload 9
    //   83: invokeinterface 367 2 0
    //   88: checkcast 149	com/tencent/feedback/common/a/a
    //   91: astore 10
    //   93: aload_2
    //   94: ldc 83
    //   96: ldc 153
    //   98: aload 10
    //   100: invokestatic 369	com/tencent/feedback/common/a/b:a	(Lcom/tencent/feedback/common/a/a;)Landroid/content/ContentValues;
    //   103: invokevirtual 373	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   106: lstore 11
    //   108: lload 11
    //   110: lconst_0
    //   111: lcmp
    //   112: ifgt +40 -> 152
    //   115: ldc_w 375
    //   118: invokestatic 115	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   121: aload_2
    //   122: ifnull +14 -> 136
    //   125: aload_2
    //   126: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   129: ifeq +7 -> 136
    //   132: aload_2
    //   133: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   136: aload 4
    //   138: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   141: ldc_w 377
    //   144: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   147: iconst_0
    //   148: istore_3
    //   149: goto -125 -> 24
    //   152: aload 10
    //   154: lload 11
    //   156: invokevirtual 316	com/tencent/feedback/common/a/a:a	(J)Lcom/tencent/feedback/common/a/a;
    //   159: pop
    //   160: iinc 9 1
    //   163: goto -94 -> 69
    //   166: aload_2
    //   167: ifnull +14 -> 181
    //   170: aload_2
    //   171: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   174: ifeq +7 -> 181
    //   177: aload_2
    //   178: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   181: aload 4
    //   183: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   186: ldc_w 377
    //   189: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   192: iconst_1
    //   193: istore_3
    //   194: goto -170 -> 24
    //   197: astore 5
    //   199: aconst_null
    //   200: astore 6
    //   202: aload 5
    //   204: invokevirtual 104	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   207: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   210: aload 5
    //   212: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   215: aload 6
    //   217: ifnull +16 -> 233
    //   220: aload 6
    //   222: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   225: ifeq +8 -> 233
    //   228: aload 6
    //   230: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   233: aload_2
    //   234: ifnull +7 -> 241
    //   237: aload_2
    //   238: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   241: ldc_w 377
    //   244: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   247: iconst_0
    //   248: istore_3
    //   249: goto -225 -> 24
    //   252: astore 7
    //   254: aconst_null
    //   255: astore 4
    //   257: aload_2
    //   258: ifnull +14 -> 272
    //   261: aload_2
    //   262: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   265: ifeq +7 -> 272
    //   268: aload_2
    //   269: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   272: aload 4
    //   274: ifnull +8 -> 282
    //   277: aload 4
    //   279: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   282: ldc_w 377
    //   285: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   288: aload 7
    //   290: athrow
    //   291: astore 7
    //   293: goto -36 -> 257
    //   296: astore 7
    //   298: aload_2
    //   299: astore 4
    //   301: aload 6
    //   303: astore_2
    //   304: goto -47 -> 257
    //   307: astore 5
    //   309: aload 4
    //   311: astore_2
    //   312: aconst_null
    //   313: astore 6
    //   315: goto -113 -> 202
    //   318: astore 5
    //   320: aload_2
    //   321: astore 6
    //   323: aload 4
    //   325: astore_2
    //   326: goto -124 -> 202
    //
    // Exception table:
    //   from	to	target	type
    //   46	56	197	java/lang/Throwable
    //   46	56	252	finally
    //   56	63	291	finally
    //   69	121	291	finally
    //   152	160	291	finally
    //   202	215	296	finally
    //   56	63	307	java/lang/Throwable
    //   69	121	318	java/lang/Throwable
    //   152	160	318	java/lang/Throwable
  }

  // ERROR //
  public static int b(Context paramContext, int[] paramArrayOfInt, long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: ldc_w 379
    //   3: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: ifnonnull +15 -> 22
    //   10: ldc_w 381
    //   13: invokestatic 26	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   16: iconst_m1
    //   17: istore 6
    //   19: iload 6
    //   21: ireturn
    //   22: ldc2_w 382
    //   25: ldc2_w 220
    //   28: lcmp
    //   29: ifle +9 -> 38
    //   32: iconst_0
    //   33: istore 6
    //   35: goto -16 -> 19
    //   38: new 28	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   45: ldc 31
    //   47: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc2_w 382
    //   53: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   56: ldc 40
    //   58: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: ldc 42
    //   63: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: ldc 44
    //   68: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc2_w 220
    //   74: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   77: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: astore 7
    //   82: aload_1
    //   83: ifnull +101 -> 184
    //   86: aload_1
    //   87: arraylength
    //   88: ifle +96 -> 184
    //   91: ldc 50
    //   93: astore 23
    //   95: iconst_0
    //   96: istore 24
    //   98: iload 24
    //   100: aload_1
    //   101: arraylength
    //   102: if_icmpge +38 -> 140
    //   105: new 28	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   112: aload 23
    //   114: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc 52
    //   119: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: aload_1
    //   123: iload 24
    //   125: iaload
    //   126: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   129: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: astore 23
    //   134: iinc 24 1
    //   137: goto -39 -> 98
    //   140: aload 23
    //   142: ldc 57
    //   144: invokevirtual 63	java/lang/String:length	()I
    //   147: invokevirtual 67	java/lang/String:substring	(I)Ljava/lang/String;
    //   150: astore 25
    //   152: new 28	java/lang/StringBuilder
    //   155: dup
    //   156: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   159: aload 7
    //   161: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc 69
    //   166: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: aload 25
    //   171: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc 71
    //   176: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: astore 7
    //   184: new 28	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   191: ldc_w 385
    //   194: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: aload 7
    //   199: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   208: aconst_null
    //   209: astore 8
    //   211: aconst_null
    //   212: astore 9
    //   214: new 75	com/tencent/feedback/common/a/d
    //   217: dup
    //   218: aload_0
    //   219: invokespecial 77	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   222: astore 10
    //   224: aload 10
    //   226: invokevirtual 81	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   229: astore 15
    //   231: aload 15
    //   233: ldc 83
    //   235: iconst_1
    //   236: anewarray 59	java/lang/String
    //   239: dup
    //   240: iconst_0
    //   241: ldc_w 387
    //   244: aastore
    //   245: aload 7
    //   247: aconst_null
    //   248: aconst_null
    //   249: aconst_null
    //   250: aconst_null
    //   251: invokevirtual 294	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   254: astore 18
    //   256: aload 18
    //   258: astore 14
    //   260: aload 14
    //   262: invokeinterface 263 1 0
    //   267: pop
    //   268: aload 14
    //   270: aload 14
    //   272: ldc_w 389
    //   275: invokeinterface 257 2 0
    //   280: invokeinterface 327 2 0
    //   285: istore 22
    //   287: new 28	java/lang/StringBuilder
    //   290: dup
    //   291: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   294: ldc_w 391
    //   297: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: iload 22
    //   302: invokevirtual 55	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   305: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   308: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   311: aload 14
    //   313: ifnull +20 -> 333
    //   316: aload 14
    //   318: invokeinterface 273 1 0
    //   323: ifne +10 -> 333
    //   326: aload 14
    //   328: invokeinterface 274 1 0
    //   333: aload 15
    //   335: ifnull +16 -> 351
    //   338: aload 15
    //   340: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   343: ifeq +8 -> 351
    //   346: aload 15
    //   348: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   351: aload 10
    //   353: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   356: ldc_w 393
    //   359: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   362: iload 22
    //   364: istore 6
    //   366: goto -347 -> 19
    //   369: astore 11
    //   371: aconst_null
    //   372: astore 12
    //   374: aload 11
    //   376: invokevirtual 104	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   379: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   382: aload 11
    //   384: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   387: aload 12
    //   389: ifnull +20 -> 409
    //   392: aload 12
    //   394: invokeinterface 273 1 0
    //   399: ifne +10 -> 409
    //   402: aload 12
    //   404: invokeinterface 274 1 0
    //   409: aload 9
    //   411: ifnull +16 -> 427
    //   414: aload 9
    //   416: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   419: ifeq +8 -> 427
    //   422: aload 9
    //   424: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   427: aload 8
    //   429: ifnull +8 -> 437
    //   432: aload 8
    //   434: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   437: ldc_w 393
    //   440: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   443: iconst_m1
    //   444: istore 6
    //   446: goto -427 -> 19
    //   449: astore 13
    //   451: aconst_null
    //   452: astore 10
    //   454: aconst_null
    //   455: astore 14
    //   457: aload 14
    //   459: ifnull +20 -> 479
    //   462: aload 14
    //   464: invokeinterface 273 1 0
    //   469: ifne +10 -> 479
    //   472: aload 14
    //   474: invokeinterface 274 1 0
    //   479: aload 9
    //   481: ifnull +16 -> 497
    //   484: aload 9
    //   486: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   489: ifeq +8 -> 497
    //   492: aload 9
    //   494: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   497: aload 10
    //   499: ifnull +8 -> 507
    //   502: aload 10
    //   504: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   507: ldc_w 393
    //   510: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   513: aload 13
    //   515: athrow
    //   516: astore 13
    //   518: aconst_null
    //   519: astore 9
    //   521: aconst_null
    //   522: astore 14
    //   524: goto -67 -> 457
    //   527: astore 17
    //   529: aload 17
    //   531: astore 13
    //   533: aload 15
    //   535: astore 9
    //   537: aconst_null
    //   538: astore 14
    //   540: goto -83 -> 457
    //   543: astore 20
    //   545: aload 15
    //   547: astore 9
    //   549: aload 20
    //   551: astore 13
    //   553: goto -96 -> 457
    //   556: astore 13
    //   558: aload 8
    //   560: astore 10
    //   562: aload 12
    //   564: astore 14
    //   566: goto -109 -> 457
    //   569: astore 11
    //   571: aload 10
    //   573: astore 8
    //   575: aconst_null
    //   576: astore 9
    //   578: aconst_null
    //   579: astore 12
    //   581: goto -207 -> 374
    //   584: astore 16
    //   586: aload 10
    //   588: astore 8
    //   590: aload 15
    //   592: astore 9
    //   594: aload 16
    //   596: astore 11
    //   598: aconst_null
    //   599: astore 12
    //   601: goto -227 -> 374
    //   604: astore 19
    //   606: aload 14
    //   608: astore 12
    //   610: aload 10
    //   612: astore 8
    //   614: aload 19
    //   616: astore 11
    //   618: aload 15
    //   620: astore 9
    //   622: goto -248 -> 374
    //
    // Exception table:
    //   from	to	target	type
    //   214	224	369	java/lang/Throwable
    //   214	224	449	finally
    //   224	231	516	finally
    //   231	256	527	finally
    //   260	311	543	finally
    //   374	387	556	finally
    //   224	231	569	java/lang/Throwable
    //   231	256	584	java/lang/Throwable
    //   260	311	604	java/lang/Throwable
  }

  // ERROR //
  public static boolean b(Context paramContext, List paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc_w 395
    //   5: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnull +16 -> 25
    //   12: aload_1
    //   13: ifnull +12 -> 25
    //   16: aload_1
    //   17: invokeinterface 302 1 0
    //   22: ifgt +13 -> 35
    //   25: ldc_w 397
    //   28: invokestatic 115	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   31: iconst_0
    //   32: istore_3
    //   33: iload_3
    //   34: ireturn
    //   35: new 75	com/tencent/feedback/common/a/d
    //   38: dup
    //   39: aload_0
    //   40: invokespecial 77	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   43: astore 4
    //   45: aload 4
    //   47: invokevirtual 81	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   50: astore_2
    //   51: aload_1
    //   52: invokeinterface 401 1 0
    //   57: astore 7
    //   59: aload 7
    //   61: invokeinterface 406 1 0
    //   66: ifeq +192 -> 258
    //   69: aload 7
    //   71: invokeinterface 410 1 0
    //   76: checkcast 149	com/tencent/feedback/common/a/a
    //   79: astore 8
    //   81: aload 8
    //   83: invokestatic 369	com/tencent/feedback/common/a/b:a	(Lcom/tencent/feedback/common/a/a;)Landroid/content/ContentValues;
    //   86: astore 9
    //   88: aload 9
    //   90: ifnonnull +34 -> 124
    //   93: aload_2
    //   94: ifnull +14 -> 108
    //   97: aload_2
    //   98: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   101: ifeq +7 -> 108
    //   104: aload_2
    //   105: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   108: aload 4
    //   110: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   113: ldc_w 412
    //   116: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   119: iconst_0
    //   120: istore_3
    //   121: goto -88 -> 33
    //   124: aload_2
    //   125: ldc 83
    //   127: ldc 153
    //   129: aload 9
    //   131: invokevirtual 415	android/database/sqlite/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   134: lstore 10
    //   136: lload 10
    //   138: lconst_0
    //   139: lcmp
    //   140: ifgt +40 -> 180
    //   143: ldc_w 417
    //   146: invokestatic 115	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   149: aload_2
    //   150: ifnull +14 -> 164
    //   153: aload_2
    //   154: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   157: ifeq +7 -> 164
    //   160: aload_2
    //   161: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   164: aload 4
    //   166: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   169: ldc_w 412
    //   172: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   175: iconst_0
    //   176: istore_3
    //   177: goto -144 -> 33
    //   180: new 28	java/lang/StringBuilder
    //   183: dup
    //   184: invokespecial 29	java/lang/StringBuilder:<init>	()V
    //   187: ldc_w 419
    //   190: invokevirtual 35	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   193: lload 10
    //   195: invokevirtual 38	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   198: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   201: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   204: aload 8
    //   206: lload 10
    //   208: invokevirtual 316	com/tencent/feedback/common/a/a:a	(J)Lcom/tencent/feedback/common/a/a;
    //   211: pop
    //   212: goto -153 -> 59
    //   215: astore 6
    //   217: aload 6
    //   219: invokevirtual 107	java/lang/Throwable:printStackTrace	()V
    //   222: aload_2
    //   223: ifnull +14 -> 237
    //   226: aload_2
    //   227: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   230: ifeq +7 -> 237
    //   233: aload_2
    //   234: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   237: aload 4
    //   239: ifnull +8 -> 247
    //   242: aload 4
    //   244: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   247: ldc_w 412
    //   250: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   253: iconst_0
    //   254: istore_3
    //   255: goto -222 -> 33
    //   258: aload_2
    //   259: ifnull +14 -> 273
    //   262: aload_2
    //   263: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   266: ifeq +7 -> 273
    //   269: aload_2
    //   270: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   273: aload 4
    //   275: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   278: ldc_w 412
    //   281: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   284: iconst_1
    //   285: istore_3
    //   286: goto -253 -> 33
    //   289: astore 5
    //   291: aconst_null
    //   292: astore 4
    //   294: aload_2
    //   295: ifnull +14 -> 309
    //   298: aload_2
    //   299: invokevirtual 95	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   302: ifeq +7 -> 309
    //   305: aload_2
    //   306: invokevirtual 98	android/database/sqlite/SQLiteDatabase:close	()V
    //   309: aload 4
    //   311: ifnull +8 -> 319
    //   314: aload 4
    //   316: invokevirtual 99	com/tencent/feedback/common/a/d:close	()V
    //   319: ldc_w 412
    //   322: invokestatic 21	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   325: aload 5
    //   327: athrow
    //   328: astore 5
    //   330: goto -36 -> 294
    //   333: astore 6
    //   335: aconst_null
    //   336: astore_2
    //   337: aconst_null
    //   338: astore 4
    //   340: goto -123 -> 217
    //
    // Exception table:
    //   from	to	target	type
    //   45	88	215	java/lang/Throwable
    //   124	149	215	java/lang/Throwable
    //   180	212	215	java/lang/Throwable
    //   35	45	289	finally
    //   45	88	328	finally
    //   124	149	328	finally
    //   180	212	328	finally
    //   217	222	328	finally
    //   35	45	333	java/lang/Throwable
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.a.b
 * JD-Core Version:    0.6.2
 */