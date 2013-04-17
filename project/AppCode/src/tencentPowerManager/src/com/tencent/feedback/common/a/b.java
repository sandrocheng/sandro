package com.tencent.feedback.common.a;

import android.content.Context;
import android.database.Cursor;
import com.tencent.feedback.common.c;
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
    //   5: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnonnull +14 -> 23
    //   12: ldc 23
    //   14: invokestatic 25	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
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
    //   37: new 27	java/lang/StringBuilder
    //   40: dup
    //   41: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   44: ldc 30
    //   46: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   49: lload_2
    //   50: invokevirtual 37	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   53: ldc 39
    //   55: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   58: ldc 41
    //   60: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   63: ldc 43
    //   65: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   68: lload 4
    //   70: invokevirtual 37	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   73: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   76: astore 9
    //   78: aload_1
    //   79: ifnull +352 -> 431
    //   82: aload_1
    //   83: arraylength
    //   84: ifle +347 -> 431
    //   87: ldc 49
    //   89: astore 16
    //   91: iload 8
    //   93: aload_1
    //   94: arraylength
    //   95: if_icmpge +38 -> 133
    //   98: new 27	java/lang/StringBuilder
    //   101: dup
    //   102: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   105: aload 16
    //   107: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   110: ldc 51
    //   112: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: aload_1
    //   116: iload 8
    //   118: iaload
    //   119: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   122: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   125: astore 16
    //   127: iinc 8 1
    //   130: goto -39 -> 91
    //   133: aload 16
    //   135: ldc 56
    //   137: invokevirtual 62	java/lang/String:length	()I
    //   140: invokevirtual 66	java/lang/String:substring	(I)Ljava/lang/String;
    //   143: astore 17
    //   145: new 27	java/lang/StringBuilder
    //   148: dup
    //   149: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   152: aload 9
    //   154: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   157: ldc 68
    //   159: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   162: aload 17
    //   164: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   167: ldc 70
    //   169: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   172: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   175: astore 10
    //   177: new 27	java/lang/StringBuilder
    //   180: dup
    //   181: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   184: ldc 72
    //   186: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   189: aload 10
    //   191: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   194: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   197: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   200: new 74	com/tencent/feedback/common/a/d
    //   203: dup
    //   204: aload_0
    //   205: invokespecial 76	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   208: astore 11
    //   210: aload 11
    //   212: invokevirtual 80	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   215: astore 15
    //   217: aload 15
    //   219: astore 13
    //   221: aload 13
    //   223: ldc 82
    //   225: aload 10
    //   227: aconst_null
    //   228: invokevirtual 88	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   231: istore 8
    //   233: new 27	java/lang/StringBuilder
    //   236: dup
    //   237: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   240: ldc 90
    //   242: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   245: iload 8
    //   247: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   250: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   253: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   256: aload 13
    //   258: ifnull +16 -> 274
    //   261: aload 13
    //   263: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   266: ifeq +8 -> 274
    //   269: aload 13
    //   271: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   274: aload 11
    //   276: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   279: ldc 100
    //   281: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   284: goto -264 -> 20
    //   287: astore 12
    //   289: aconst_null
    //   290: astore 13
    //   292: aload 12
    //   294: invokevirtual 103	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   297: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   300: aload 12
    //   302: invokevirtual 106	java/lang/Throwable:printStackTrace	()V
    //   305: aload 13
    //   307: ifnull +16 -> 323
    //   310: aload 13
    //   312: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   315: ifeq +8 -> 323
    //   318: aload 13
    //   320: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   323: aload 6
    //   325: ifnull +8 -> 333
    //   328: aload 6
    //   330: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   333: ldc 100
    //   335: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
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
    //   359: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   362: ifeq +8 -> 370
    //   365: aload 13
    //   367: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   370: aload 11
    //   372: ifnull +8 -> 380
    //   375: aload 11
    //   377: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   380: ldc 100
    //   382: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
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
  public static int a(Context paramContext, java.lang.Long[] paramArrayOfLong)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 109
    //   4: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   7: aload_0
    //   8: ifnonnull +12 -> 20
    //   11: ldc 111
    //   13: invokestatic 114	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
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
    //   37: new 74	com/tencent/feedback/common/a/d
    //   40: dup
    //   41: aload_0
    //   42: invokespecial 76	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   45: astore 5
    //   47: aload 5
    //   49: invokevirtual 80	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   52: astore_2
    //   53: new 116	java/lang/StringBuffer
    //   56: dup
    //   57: invokespecial 117	java/lang/StringBuffer:<init>	()V
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
    //   76: invokevirtual 123	java/lang/Long:longValue	()J
    //   79: lstore 10
    //   81: aload 8
    //   83: new 27	java/lang/StringBuilder
    //   86: dup
    //   87: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   90: ldc 125
    //   92: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   95: lload 10
    //   97: invokevirtual 37	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   100: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: invokevirtual 128	java/lang/StringBuffer:append	(Ljava/lang/String;)Ljava/lang/StringBuffer;
    //   106: pop
    //   107: iload 9
    //   109: ifle +270 -> 379
    //   112: iload 9
    //   114: bipush 50
    //   116: irem
    //   117: ifne +262 -> 379
    //   120: new 27	java/lang/StringBuilder
    //   123: dup
    //   124: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   127: ldc 130
    //   129: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   132: iload 9
    //   134: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   137: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   140: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   143: iload_3
    //   144: aload_2
    //   145: ldc 82
    //   147: aload 8
    //   149: ldc 56
    //   151: invokevirtual 62	java/lang/String:length	()I
    //   154: invokevirtual 131	java/lang/StringBuffer:substring	(I)Ljava/lang/String;
    //   157: aconst_null
    //   158: invokevirtual 88	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   161: iadd
    //   162: istore_3
    //   163: aload 8
    //   165: iconst_0
    //   166: invokevirtual 135	java/lang/StringBuffer:setLength	(I)V
    //   169: new 27	java/lang/StringBuilder
    //   172: dup
    //   173: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   176: ldc 137
    //   178: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   181: iload_3
    //   182: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   185: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   188: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   191: goto +188 -> 379
    //   194: aload 8
    //   196: invokevirtual 138	java/lang/StringBuffer:length	()I
    //   199: ifle +29 -> 228
    //   202: iload_3
    //   203: aload_2
    //   204: ldc 82
    //   206: aload 8
    //   208: ldc 56
    //   210: invokevirtual 62	java/lang/String:length	()I
    //   213: invokevirtual 131	java/lang/StringBuffer:substring	(I)Ljava/lang/String;
    //   216: aconst_null
    //   217: invokevirtual 88	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   220: iadd
    //   221: istore_3
    //   222: aload 8
    //   224: iconst_0
    //   225: invokevirtual 135	java/lang/StringBuffer:setLength	(I)V
    //   228: new 27	java/lang/StringBuilder
    //   231: dup
    //   232: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   235: ldc 140
    //   237: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   240: iload_3
    //   241: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   244: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   247: invokestatic 25	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   250: aload_2
    //   251: ifnull +14 -> 265
    //   254: aload_2
    //   255: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   258: ifeq +7 -> 265
    //   261: aload_2
    //   262: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   265: aload 5
    //   267: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   270: ldc 142
    //   272: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   275: goto -257 -> 18
    //   278: astore 6
    //   280: aconst_null
    //   281: astore 5
    //   283: aload 6
    //   285: invokevirtual 106	java/lang/Throwable:printStackTrace	()V
    //   288: aload 6
    //   290: invokevirtual 103	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   293: invokestatic 114	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   296: aload_2
    //   297: ifnull +14 -> 311
    //   300: aload_2
    //   301: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   304: ifeq +7 -> 311
    //   307: aload_2
    //   308: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   311: aload 5
    //   313: ifnull +8 -> 321
    //   316: aload 5
    //   318: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   321: ldc 142
    //   323: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   326: iconst_m1
    //   327: istore_3
    //   328: goto -310 -> 18
    //   331: astore 7
    //   333: aconst_null
    //   334: astore 5
    //   336: aload_2
    //   337: ifnull +14 -> 351
    //   340: aload_2
    //   341: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   344: ifeq +7 -> 351
    //   347: aload_2
    //   348: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   351: aload 5
    //   353: ifnull +8 -> 361
    //   356: aload 5
    //   358: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   361: ldc 142
    //   363: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
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

  // ERROR //
  public static List a(Context paramContext, int[] paramArrayOfInt, int paramInt1, int paramInt2, int paramInt3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: ldc 145
    //   5: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   8: aload_0
    //   9: ifnull +8 -> 17
    //   12: iload 4
    //   14: ifne +14 -> 28
    //   17: ldc 147
    //   19: invokestatic 114	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   22: aconst_null
    //   23: astore 6
    //   25: aload 6
    //   27: areturn
    //   28: ldc 49
    //   30: astore 7
    //   32: aload_1
    //   33: ifnull +87 -> 120
    //   36: aload_1
    //   37: arraylength
    //   38: ifle +82 -> 120
    //   41: ldc 49
    //   43: astore 23
    //   45: iconst_0
    //   46: istore 24
    //   48: iload 24
    //   50: aload_1
    //   51: arraylength
    //   52: if_icmpge +38 -> 90
    //   55: new 27	java/lang/StringBuilder
    //   58: dup
    //   59: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   62: aload 23
    //   64: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   67: ldc 51
    //   69: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   72: aload_1
    //   73: iload 24
    //   75: iaload
    //   76: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   79: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   82: astore 23
    //   84: iinc 24 1
    //   87: goto -39 -> 48
    //   90: new 27	java/lang/StringBuilder
    //   93: dup
    //   94: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   97: aload 7
    //   99: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   102: aload 23
    //   104: ldc 56
    //   106: invokevirtual 62	java/lang/String:length	()I
    //   109: invokevirtual 66	java/lang/String:substring	(I)Ljava/lang/String;
    //   112: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   115: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   118: astore 7
    //   120: ldc 49
    //   122: astore 8
    //   124: iload_3
    //   125: tableswitch	default:+23 -> 148, 1:+154->279, 2:+179->304
    //   149: nop
    //   150: dstore_3
    //   151: dup
    //   152: aload_0
    //   153: invokespecial 76	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   156: astore 9
    //   158: aload 9
    //   160: invokevirtual 80	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   163: astore 15
    //   165: iload 4
    //   167: ifle +162 -> 329
    //   170: new 27	java/lang/StringBuilder
    //   173: dup
    //   174: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   177: ldc 49
    //   179: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   182: iload 4
    //   184: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   187: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   190: astore 16
    //   192: aload 15
    //   194: ldc 82
    //   196: aconst_null
    //   197: aload 7
    //   199: aconst_null
    //   200: aconst_null
    //   201: aconst_null
    //   202: aload 8
    //   204: aload 16
    //   206: invokevirtual 151	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   209: astore 19
    //   211: aload 19
    //   213: astore 12
    //   215: aload 12
    //   217: invokestatic 154	com/tencent/feedback/common/a/b:a	(Landroid/database/Cursor;)Ljava/util/List;
    //   220: astore 22
    //   222: aload 12
    //   224: ifnull +20 -> 244
    //   227: aload 12
    //   229: invokeinterface 159 1 0
    //   234: ifne +10 -> 244
    //   237: aload 12
    //   239: invokeinterface 160 1 0
    //   244: aload 15
    //   246: ifnull +16 -> 262
    //   249: aload 15
    //   251: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   254: ifeq +8 -> 262
    //   257: aload 15
    //   259: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   262: aload 9
    //   264: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   267: ldc 162
    //   269: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   272: aload 22
    //   274: astore 6
    //   276: goto -251 -> 25
    //   279: new 27	java/lang/StringBuilder
    //   282: dup
    //   283: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   286: aload 8
    //   288: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   291: ldc 164
    //   293: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   296: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   299: astore 8
    //   301: goto -153 -> 148
    //   304: new 27	java/lang/StringBuilder
    //   307: dup
    //   308: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   311: aload 8
    //   313: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   316: ldc 166
    //   318: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   321: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   324: astore 8
    //   326: goto -178 -> 148
    //   329: aconst_null
    //   330: astore 16
    //   332: goto -140 -> 192
    //   335: astore 10
    //   337: aconst_null
    //   338: astore 11
    //   340: aconst_null
    //   341: astore 12
    //   343: aconst_null
    //   344: astore 13
    //   346: aload 10
    //   348: invokevirtual 106	java/lang/Throwable:printStackTrace	()V
    //   351: aload 10
    //   353: invokevirtual 103	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   356: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   359: aload 12
    //   361: ifnull +20 -> 381
    //   364: aload 12
    //   366: invokeinterface 159 1 0
    //   371: ifne +10 -> 381
    //   374: aload 12
    //   376: invokeinterface 160 1 0
    //   381: aload 13
    //   383: ifnull +16 -> 399
    //   386: aload 13
    //   388: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   391: ifeq +8 -> 399
    //   394: aload 13
    //   396: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   399: aload 11
    //   401: ifnull +8 -> 409
    //   404: aload 11
    //   406: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   409: ldc 162
    //   411: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   414: aconst_null
    //   415: astore 6
    //   417: goto -392 -> 25
    //   420: astore 14
    //   422: aconst_null
    //   423: astore 9
    //   425: aconst_null
    //   426: astore 13
    //   428: aload 5
    //   430: ifnull +20 -> 450
    //   433: aload 5
    //   435: invokeinterface 159 1 0
    //   440: ifne +10 -> 450
    //   443: aload 5
    //   445: invokeinterface 160 1 0
    //   450: aload 13
    //   452: ifnull +16 -> 468
    //   455: aload 13
    //   457: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   460: ifeq +8 -> 468
    //   463: aload 13
    //   465: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   468: aload 9
    //   470: ifnull +8 -> 478
    //   473: aload 9
    //   475: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   478: ldc 162
    //   480: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   483: aload 14
    //   485: athrow
    //   486: astore 14
    //   488: aconst_null
    //   489: astore 13
    //   491: aconst_null
    //   492: astore 5
    //   494: goto -66 -> 428
    //   497: astore 18
    //   499: aload 15
    //   501: astore 13
    //   503: aload 18
    //   505: astore 14
    //   507: aconst_null
    //   508: astore 5
    //   510: goto -82 -> 428
    //   513: astore 21
    //   515: aload 12
    //   517: astore 5
    //   519: aload 15
    //   521: astore 13
    //   523: aload 21
    //   525: astore 14
    //   527: goto -99 -> 428
    //   530: astore 14
    //   532: aload 11
    //   534: astore 9
    //   536: aload 12
    //   538: astore 5
    //   540: goto -112 -> 428
    //   543: astore 10
    //   545: aload 9
    //   547: astore 11
    //   549: aconst_null
    //   550: astore 12
    //   552: aconst_null
    //   553: astore 13
    //   555: goto -209 -> 346
    //   558: astore 17
    //   560: aload 15
    //   562: astore 13
    //   564: aload 17
    //   566: astore 10
    //   568: aload 9
    //   570: astore 11
    //   572: aconst_null
    //   573: astore 12
    //   575: goto -229 -> 346
    //   578: astore 20
    //   580: aload 15
    //   582: astore 13
    //   584: aload 20
    //   586: astore 10
    //   588: aload 9
    //   590: astore 11
    //   592: goto -246 -> 346
    //
    // Exception table:
    //   from	to	target	type
    //   148	158	335	java/lang/Throwable
    //   148	158	420	finally
    //   158	165	486	finally
    //   170	211	497	finally
    //   215	222	513	finally
    //   346	359	530	finally
    //   158	165	543	java/lang/Throwable
    //   170	211	558	java/lang/Throwable
    //   215	222	578	java/lang/Throwable
  }

  private static List a(Cursor paramCursor)
  {
    c.c("in AnalyticsDAO.paserCursor() start");
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
      while (paramCursor.moveToNext())
      {
        a locala = new a();
        locala.a(paramCursor.getLong(i));
        locala.a(paramCursor.getBlob(n));
        locala.b(paramCursor.getInt(j));
        locala.b(paramCursor.getLong(k));
        locala.a(paramCursor.getInt(m));
        locala.c(paramCursor.getLong(i1));
        ((List)localObject).add(locala);
      }
      c.c("in AnalyticsDAO.paserCursor() end");
    }
  }

  // ERROR //
  public static boolean a(Context paramContext, List paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 228
    //   4: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   7: aload_0
    //   8: ifnull +7 -> 15
    //   11: aload_1
    //   12: ifnonnull +12 -> 24
    //   15: ldc 230
    //   17: invokestatic 25	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   20: iconst_0
    //   21: istore_3
    //   22: iload_3
    //   23: ireturn
    //   24: new 74	com/tencent/feedback/common/a/d
    //   27: dup
    //   28: aload_0
    //   29: invokespecial 76	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   32: astore 4
    //   34: aload 4
    //   36: invokevirtual 80	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   39: astore_2
    //   40: iconst_0
    //   41: istore 7
    //   43: iload 7
    //   45: aload_1
    //   46: invokeinterface 233 1 0
    //   51: if_icmpge +166 -> 217
    //   54: aload_1
    //   55: iload 7
    //   57: invokeinterface 237 2 0
    //   62: checkcast 190	com/tencent/feedback/common/a/a
    //   65: astore 8
    //   67: new 239	android/content/ContentValues
    //   70: dup
    //   71: invokespecial 240	android/content/ContentValues:<init>	()V
    //   74: astore 9
    //   76: aload 9
    //   78: ldc 179
    //   80: aload 8
    //   82: invokevirtual 242	com/tencent/feedback/common/a/a:c	()I
    //   85: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   88: invokevirtual 252	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   91: aload 9
    //   93: ldc 41
    //   95: aload 8
    //   97: invokevirtual 255	com/tencent/feedback/common/a/a:d	()J
    //   100: invokestatic 258	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   103: invokevirtual 261	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   106: aload 9
    //   108: ldc 181
    //   110: aload 8
    //   112: invokevirtual 263	com/tencent/feedback/common/a/a:b	()I
    //   115: invokestatic 248	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   118: invokevirtual 252	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   121: aload 9
    //   123: ldc 183
    //   125: aload 8
    //   127: invokevirtual 267	com/tencent/feedback/common/a/a:e	()[B
    //   130: invokevirtual 270	android/content/ContentValues:put	(Ljava/lang/String;[B)V
    //   133: aload 9
    //   135: ldc 185
    //   137: aload 8
    //   139: invokevirtual 273	com/tencent/feedback/common/a/a:f	()J
    //   142: invokestatic 258	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   145: invokevirtual 261	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   148: aload_2
    //   149: ldc 82
    //   151: ldc 173
    //   153: aload 9
    //   155: invokevirtual 277	android/database/sqlite/SQLiteDatabase:insert	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   158: lstore 10
    //   160: lload 10
    //   162: lconst_0
    //   163: lcmp
    //   164: ifgt +40 -> 204
    //   167: ldc_w 279
    //   170: invokestatic 114	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   173: aload_2
    //   174: ifnull +14 -> 188
    //   177: aload_2
    //   178: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   181: ifeq +7 -> 188
    //   184: aload_2
    //   185: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   188: aload 4
    //   190: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   193: ldc_w 281
    //   196: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   199: iconst_0
    //   200: istore_3
    //   201: goto -179 -> 22
    //   204: aload 8
    //   206: lload 10
    //   208: invokevirtual 198	com/tencent/feedback/common/a/a:a	(J)V
    //   211: iinc 7 1
    //   214: goto -171 -> 43
    //   217: aload_2
    //   218: ifnull +14 -> 232
    //   221: aload_2
    //   222: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   225: ifeq +7 -> 232
    //   228: aload_2
    //   229: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   232: aload 4
    //   234: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   237: ldc_w 281
    //   240: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   243: iconst_1
    //   244: istore_3
    //   245: goto -223 -> 22
    //   248: astore 5
    //   250: aconst_null
    //   251: astore 4
    //   253: aload 5
    //   255: invokevirtual 103	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   258: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   261: aload 5
    //   263: invokevirtual 106	java/lang/Throwable:printStackTrace	()V
    //   266: aload_2
    //   267: ifnull +14 -> 281
    //   270: aload_2
    //   271: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   274: ifeq +7 -> 281
    //   277: aload_2
    //   278: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   281: aload 4
    //   283: ifnull +8 -> 291
    //   286: aload 4
    //   288: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   291: ldc_w 281
    //   294: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   297: iconst_0
    //   298: istore_3
    //   299: goto -277 -> 22
    //   302: astore 6
    //   304: aconst_null
    //   305: astore 4
    //   307: aload_2
    //   308: ifnull +14 -> 322
    //   311: aload_2
    //   312: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   315: ifeq +7 -> 322
    //   318: aload_2
    //   319: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   322: aload 4
    //   324: ifnull +8 -> 332
    //   327: aload 4
    //   329: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   332: ldc_w 281
    //   335: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   338: aload 6
    //   340: athrow
    //   341: astore 6
    //   343: goto -36 -> 307
    //   346: astore 5
    //   348: goto -95 -> 253
    //
    // Exception table:
    //   from	to	target	type
    //   24	34	248	java/lang/Throwable
    //   24	34	302	finally
    //   34	173	341	finally
    //   204	211	341	finally
    //   253	266	341	finally
    //   34	173	346	java/lang/Throwable
    //   204	211	346	java/lang/Throwable
  }

  // ERROR //
  public static int b(Context paramContext, int[] paramArrayOfInt, long paramLong1, long paramLong2)
  {
    // Byte code:
    //   0: ldc_w 283
    //   3: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   6: aload_0
    //   7: ifnonnull +15 -> 22
    //   10: ldc_w 285
    //   13: invokestatic 25	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   16: iconst_m1
    //   17: istore 6
    //   19: iload 6
    //   21: ireturn
    //   22: ldc2_w 286
    //   25: ldc2_w 288
    //   28: lcmp
    //   29: ifle +9 -> 38
    //   32: iconst_0
    //   33: istore 6
    //   35: goto -16 -> 19
    //   38: new 27	java/lang/StringBuilder
    //   41: dup
    //   42: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   45: ldc 30
    //   47: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   50: ldc2_w 286
    //   53: invokevirtual 37	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   56: ldc 39
    //   58: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   61: ldc 41
    //   63: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   66: ldc 43
    //   68: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   71: ldc2_w 288
    //   74: invokevirtual 37	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   77: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   80: astore 7
    //   82: aload_1
    //   83: ifnull +101 -> 184
    //   86: aload_1
    //   87: arraylength
    //   88: ifle +96 -> 184
    //   91: ldc 49
    //   93: astore 23
    //   95: iconst_0
    //   96: istore 24
    //   98: iload 24
    //   100: aload_1
    //   101: arraylength
    //   102: if_icmpge +38 -> 140
    //   105: new 27	java/lang/StringBuilder
    //   108: dup
    //   109: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   112: aload 23
    //   114: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   117: ldc 51
    //   119: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   122: aload_1
    //   123: iload 24
    //   125: iaload
    //   126: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   129: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   132: astore 23
    //   134: iinc 24 1
    //   137: goto -39 -> 98
    //   140: aload 23
    //   142: ldc 56
    //   144: invokevirtual 62	java/lang/String:length	()I
    //   147: invokevirtual 66	java/lang/String:substring	(I)Ljava/lang/String;
    //   150: astore 25
    //   152: new 27	java/lang/StringBuilder
    //   155: dup
    //   156: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   159: aload 7
    //   161: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   164: ldc 68
    //   166: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   169: aload 25
    //   171: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   174: ldc 70
    //   176: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   179: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   182: astore 7
    //   184: new 27	java/lang/StringBuilder
    //   187: dup
    //   188: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   191: ldc_w 291
    //   194: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   197: aload 7
    //   199: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   202: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   205: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   208: aconst_null
    //   209: astore 8
    //   211: aconst_null
    //   212: astore 9
    //   214: new 74	com/tencent/feedback/common/a/d
    //   217: dup
    //   218: aload_0
    //   219: invokespecial 76	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   222: astore 10
    //   224: aload 10
    //   226: invokevirtual 80	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   229: astore 15
    //   231: aload 15
    //   233: ldc 82
    //   235: iconst_1
    //   236: anewarray 58	java/lang/String
    //   239: dup
    //   240: iconst_0
    //   241: ldc_w 293
    //   244: aastore
    //   245: aload 7
    //   247: aconst_null
    //   248: aconst_null
    //   249: aconst_null
    //   250: aconst_null
    //   251: invokevirtual 296	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   254: astore 18
    //   256: aload 18
    //   258: astore 14
    //   260: aload 14
    //   262: invokeinterface 188 1 0
    //   267: pop
    //   268: aload 14
    //   270: aload 14
    //   272: ldc_w 298
    //   275: invokeinterface 177 2 0
    //   280: invokeinterface 209 2 0
    //   285: istore 22
    //   287: new 27	java/lang/StringBuilder
    //   290: dup
    //   291: invokespecial 28	java/lang/StringBuilder:<init>	()V
    //   294: ldc_w 300
    //   297: invokevirtual 34	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   300: iload 22
    //   302: invokevirtual 54	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   305: invokevirtual 47	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   308: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   311: aload 14
    //   313: ifnull +20 -> 333
    //   316: aload 14
    //   318: invokeinterface 159 1 0
    //   323: ifne +10 -> 333
    //   326: aload 14
    //   328: invokeinterface 160 1 0
    //   333: aload 15
    //   335: ifnull +16 -> 351
    //   338: aload 15
    //   340: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   343: ifeq +8 -> 351
    //   346: aload 15
    //   348: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   351: aload 10
    //   353: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   356: ldc_w 302
    //   359: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   362: iload 22
    //   364: istore 6
    //   366: goto -347 -> 19
    //   369: astore 11
    //   371: aconst_null
    //   372: astore 12
    //   374: aload 11
    //   376: invokevirtual 103	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   379: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   382: aload 11
    //   384: invokevirtual 106	java/lang/Throwable:printStackTrace	()V
    //   387: aload 12
    //   389: ifnull +20 -> 409
    //   392: aload 12
    //   394: invokeinterface 159 1 0
    //   399: ifne +10 -> 409
    //   402: aload 12
    //   404: invokeinterface 160 1 0
    //   409: aload 9
    //   411: ifnull +16 -> 427
    //   414: aload 9
    //   416: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   419: ifeq +8 -> 427
    //   422: aload 9
    //   424: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   427: aload 8
    //   429: ifnull +8 -> 437
    //   432: aload 8
    //   434: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   437: ldc_w 302
    //   440: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
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
    //   464: invokeinterface 159 1 0
    //   469: ifne +10 -> 479
    //   472: aload 14
    //   474: invokeinterface 160 1 0
    //   479: aload 9
    //   481: ifnull +16 -> 497
    //   484: aload 9
    //   486: invokevirtual 94	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   489: ifeq +8 -> 497
    //   492: aload 9
    //   494: invokevirtual 97	android/database/sqlite/SQLiteDatabase:close	()V
    //   497: aload 10
    //   499: ifnull +8 -> 507
    //   502: aload 10
    //   504: invokevirtual 98	com/tencent/feedback/common/a/d:close	()V
    //   507: ldc_w 302
    //   510: invokestatic 21	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
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
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.a.b
 * JD-Core Version:    0.6.2
 */