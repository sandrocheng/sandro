package com.tencent.feedback.a;

import android.content.Context;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.g;
import com.tencent.feedback.upload.e.a;
import java.util.Date;

public class b
  implements e.a
{
  Context a;

  public b()
  {
  }

  public b(Context paramContext)
  {
    this.a = paramContext.getApplicationContext();
  }

  private static String a(long[] paramArrayOfLong)
  {
    ELog.debug("CountDAO.parseToStr()");
    Object localObject;
    if (paramArrayOfLong == null)
      localObject = "";
    while (true)
    {
      return localObject;
      int i = paramArrayOfLong.length;
      localObject = "";
      int j = 0;
      while (j < i)
      {
        long l = paramArrayOfLong[j];
        String str = (String)localObject + "%" + l;
        j++;
        localObject = str;
      }
    }
  }

  // ERROR //
  public static java.util.List a(Context paramContext)
  {
    // Byte code:
    //   0: ldc 53
    //   2: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   5: aload_0
    //   6: ifnonnull +9 -> 15
    //   9: aconst_null
    //   10: astore 9
    //   12: aload 9
    //   14: areturn
    //   15: new 55	com/tencent/feedback/common/a/d
    //   18: dup
    //   19: aload_0
    //   20: invokespecial 57	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   23: astore_1
    //   24: aload_1
    //   25: invokevirtual 61	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   28: astore 10
    //   30: aload 10
    //   32: ldc 63
    //   34: aconst_null
    //   35: aconst_null
    //   36: aconst_null
    //   37: aconst_null
    //   38: aconst_null
    //   39: aconst_null
    //   40: invokevirtual 69	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   43: astore 13
    //   45: aload 13
    //   47: astore 8
    //   49: new 71	java/util/ArrayList
    //   52: dup
    //   53: invokespecial 72	java/util/ArrayList:<init>	()V
    //   56: astore 14
    //   58: aload 8
    //   60: invokeinterface 78 1 0
    //   65: ifeq +403 -> 468
    //   68: ldc 80
    //   70: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   73: aload 8
    //   75: ifnull +573 -> 648
    //   78: aload 8
    //   80: invokeinterface 83 1 0
    //   85: ifne +563 -> 648
    //   88: aload 8
    //   90: invokeinterface 86 1 0
    //   95: ifeq +101 -> 196
    //   98: goto +550 -> 648
    //   101: aload 14
    //   103: aload 18
    //   105: invokeinterface 92 2 0
    //   110: pop
    //   111: goto -53 -> 58
    //   114: astore 16
    //   116: aload_1
    //   117: astore_3
    //   118: aload 8
    //   120: astore 17
    //   122: aload 10
    //   124: astore 5
    //   126: aload 16
    //   128: astore_2
    //   129: aload 17
    //   131: astore 4
    //   133: aload_2
    //   134: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
    //   137: aload 4
    //   139: ifnull +20 -> 159
    //   142: aload 4
    //   144: invokeinterface 98 1 0
    //   149: ifne +10 -> 159
    //   152: aload 4
    //   154: invokeinterface 101 1 0
    //   159: aload 5
    //   161: ifnull +16 -> 177
    //   164: aload 5
    //   166: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   169: ifeq +8 -> 177
    //   172: aload 5
    //   174: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   177: aload_3
    //   178: ifnull +7 -> 185
    //   181: aload_3
    //   182: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   185: ldc 108
    //   187: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   190: aconst_null
    //   191: astore 9
    //   193: goto -181 -> 12
    //   196: aload 8
    //   198: aload 8
    //   200: ldc 110
    //   202: invokeinterface 114 2 0
    //   207: invokeinterface 118 2 0
    //   212: ifne +244 -> 456
    //   215: iconst_1
    //   216: istore 20
    //   218: aload 8
    //   220: aload 8
    //   222: ldc 120
    //   224: invokeinterface 114 2 0
    //   229: invokeinterface 118 2 0
    //   234: ifne +228 -> 462
    //   237: iconst_1
    //   238: istore 21
    //   240: new 122	com/tencent/feedback/a/a
    //   243: dup
    //   244: iload 20
    //   246: aload 8
    //   248: aload 8
    //   250: ldc 124
    //   252: invokeinterface 114 2 0
    //   257: invokeinterface 128 2 0
    //   262: iload 21
    //   264: invokespecial 131	com/tencent/feedback/a/a:<init>	(ZLjava/lang/String;Z)V
    //   267: astore 18
    //   269: aload 18
    //   271: aload 8
    //   273: aload 8
    //   275: ldc 133
    //   277: invokeinterface 114 2 0
    //   282: invokeinterface 137 2 0
    //   287: invokevirtual 140	com/tencent/feedback/a/a:a	(J)Lcom/tencent/feedback/a/a;
    //   290: pop
    //   291: aload 18
    //   293: aload 8
    //   295: aload 8
    //   297: ldc 142
    //   299: invokeinterface 114 2 0
    //   304: invokeinterface 118 2 0
    //   309: invokevirtual 145	com/tencent/feedback/a/a:a	(I)Lcom/tencent/feedback/a/a;
    //   312: pop
    //   313: aload 18
    //   315: aload 8
    //   317: aload 8
    //   319: ldc 147
    //   321: invokeinterface 114 2 0
    //   326: invokeinterface 137 2 0
    //   331: invokevirtual 150	com/tencent/feedback/a/a:b	(J)Lcom/tencent/feedback/a/a;
    //   334: pop
    //   335: aload 18
    //   337: aload 8
    //   339: aload 8
    //   341: ldc 152
    //   343: invokeinterface 114 2 0
    //   348: invokeinterface 137 2 0
    //   353: invokevirtual 155	com/tencent/feedback/a/a:c	(J)Lcom/tencent/feedback/a/a;
    //   356: pop
    //   357: aload 18
    //   359: aload 8
    //   361: aload 8
    //   363: ldc 157
    //   365: invokeinterface 114 2 0
    //   370: invokeinterface 128 2 0
    //   375: invokestatic 160	com/tencent/feedback/a/b:a	(Ljava/lang/String;)[J
    //   378: invokevirtual 163	com/tencent/feedback/a/a:a	([J)Lcom/tencent/feedback/a/a;
    //   381: pop
    //   382: ldc 165
    //   384: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   387: goto -286 -> 101
    //   390: astore 15
    //   392: aload 10
    //   394: astore 7
    //   396: aload 15
    //   398: astore 6
    //   400: aload 8
    //   402: ifnull +20 -> 422
    //   405: aload 8
    //   407: invokeinterface 98 1 0
    //   412: ifne +10 -> 422
    //   415: aload 8
    //   417: invokeinterface 101 1 0
    //   422: aload 7
    //   424: ifnull +16 -> 440
    //   427: aload 7
    //   429: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   432: ifeq +8 -> 440
    //   435: aload 7
    //   437: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   440: aload_1
    //   441: ifnull +7 -> 448
    //   444: aload_1
    //   445: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   448: ldc 108
    //   450: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   453: aload 6
    //   455: athrow
    //   456: iconst_0
    //   457: istore 20
    //   459: goto -241 -> 218
    //   462: iconst_0
    //   463: istore 21
    //   465: goto -225 -> 240
    //   468: new 34	java/lang/StringBuilder
    //   471: dup
    //   472: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   475: ldc 167
    //   477: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   480: aload 14
    //   482: invokeinterface 171 1 0
    //   487: invokevirtual 174	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   490: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   493: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   496: aload 8
    //   498: ifnull +20 -> 518
    //   501: aload 8
    //   503: invokeinterface 98 1 0
    //   508: ifne +10 -> 518
    //   511: aload 8
    //   513: invokeinterface 101 1 0
    //   518: aload 10
    //   520: ifnull +16 -> 536
    //   523: aload 10
    //   525: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   528: ifeq +8 -> 536
    //   531: aload 10
    //   533: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   536: aload_1
    //   537: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   540: ldc 108
    //   542: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   545: aload 14
    //   547: astore 9
    //   549: goto -537 -> 12
    //   552: astore 6
    //   554: aconst_null
    //   555: astore 8
    //   557: aconst_null
    //   558: astore 7
    //   560: aconst_null
    //   561: astore_1
    //   562: goto -162 -> 400
    //   565: astore 6
    //   567: aconst_null
    //   568: astore 8
    //   570: aconst_null
    //   571: astore 7
    //   573: goto -173 -> 400
    //   576: astore 12
    //   578: aload 10
    //   580: astore 7
    //   582: aload 12
    //   584: astore 6
    //   586: aconst_null
    //   587: astore 8
    //   589: goto -189 -> 400
    //   592: astore 6
    //   594: aload 5
    //   596: astore 7
    //   598: aload_3
    //   599: astore_1
    //   600: aload 4
    //   602: astore 8
    //   604: goto -204 -> 400
    //   607: astore_2
    //   608: aconst_null
    //   609: astore 4
    //   611: aconst_null
    //   612: astore 5
    //   614: aconst_null
    //   615: astore_3
    //   616: goto -483 -> 133
    //   619: astore_2
    //   620: aload_1
    //   621: astore_3
    //   622: aconst_null
    //   623: astore 4
    //   625: aconst_null
    //   626: astore 5
    //   628: goto -495 -> 133
    //   631: astore 11
    //   633: aload 10
    //   635: astore 5
    //   637: aload_1
    //   638: astore_3
    //   639: aload 11
    //   641: astore_2
    //   642: aconst_null
    //   643: astore 4
    //   645: goto -512 -> 133
    //   648: aconst_null
    //   649: astore 18
    //   651: goto -550 -> 101
    //
    // Exception table:
    //   from	to	target	type
    //   49	111	114	java/lang/Throwable
    //   196	387	114	java/lang/Throwable
    //   468	496	114	java/lang/Throwable
    //   49	111	390	finally
    //   196	387	390	finally
    //   468	496	390	finally
    //   15	24	552	finally
    //   24	30	565	finally
    //   30	45	576	finally
    //   133	137	592	finally
    //   15	24	607	java/lang/Throwable
    //   24	30	619	java/lang/Throwable
    //   30	45	631	java/lang/Throwable
  }

  // ERROR //
  public static boolean a(Context paramContext, java.util.List paramList)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: ldc 177
    //   4: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   7: aload_0
    //   8: ifnull +7 -> 15
    //   11: aload_1
    //   12: ifnonnull +38 -> 50
    //   15: new 34	java/lang/StringBuilder
    //   18: dup
    //   19: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   22: ldc 179
    //   24: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   27: aload_0
    //   28: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   31: ldc 184
    //   33: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   36: aload_1
    //   37: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   40: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   43: invokestatic 187	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   46: iconst_0
    //   47: istore_3
    //   48: iload_3
    //   49: ireturn
    //   50: new 55	com/tencent/feedback/common/a/d
    //   53: dup
    //   54: aload_0
    //   55: invokespecial 57	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   58: astore 4
    //   60: aload 4
    //   62: invokevirtual 61	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   65: astore 8
    //   67: aload 8
    //   69: astore_2
    //   70: iconst_0
    //   71: istore 9
    //   73: iload 9
    //   75: aload_1
    //   76: invokeinterface 171 1 0
    //   81: if_icmpge +264 -> 345
    //   84: aload_1
    //   85: iload 9
    //   87: invokeinterface 191 2 0
    //   92: checkcast 122	com/tencent/feedback/a/a
    //   95: astore 10
    //   97: new 193	android/content/ContentValues
    //   100: dup
    //   101: invokespecial 194	android/content/ContentValues:<init>	()V
    //   104: astore 11
    //   106: aload 11
    //   108: ldc 124
    //   110: aload 10
    //   112: invokevirtual 196	com/tencent/feedback/a/a:a	()Ljava/lang/String;
    //   115: invokevirtual 200	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   118: aload 10
    //   120: invokevirtual 202	com/tencent/feedback/a/a:b	()Z
    //   123: ifeq +173 -> 296
    //   126: iconst_0
    //   127: istore 12
    //   129: aload 11
    //   131: ldc 110
    //   133: iload 12
    //   135: invokestatic 208	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   138: invokevirtual 211	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   141: aload 10
    //   143: invokevirtual 214	com/tencent/feedback/a/a:g	()Z
    //   146: ifeq +156 -> 302
    //   149: iconst_0
    //   150: istore 13
    //   152: aload 11
    //   154: ldc 120
    //   156: iload 13
    //   158: invokestatic 208	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   161: invokevirtual 211	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   164: aload 11
    //   166: ldc 147
    //   168: aload 10
    //   170: invokevirtual 217	com/tencent/feedback/a/a:c	()J
    //   173: invokestatic 222	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   176: invokevirtual 225	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   179: aload 11
    //   181: ldc 152
    //   183: aload 10
    //   185: invokevirtual 228	com/tencent/feedback/a/a:d	()J
    //   188: invokestatic 222	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   191: invokevirtual 225	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Long;)V
    //   194: aload 11
    //   196: ldc 142
    //   198: aload 10
    //   200: invokevirtual 231	com/tencent/feedback/a/a:e	()I
    //   203: invokestatic 208	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   206: invokevirtual 211	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/Integer;)V
    //   209: aload 11
    //   211: ldc 157
    //   213: new 34	java/lang/StringBuilder
    //   216: dup
    //   217: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   220: ldc 32
    //   222: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: aload 10
    //   227: invokevirtual 235	com/tencent/feedback/a/a:f	()[J
    //   230: invokestatic 237	com/tencent/feedback/a/b:a	([J)Ljava/lang/String;
    //   233: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   236: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   239: invokevirtual 200	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   242: aload_2
    //   243: ldc 63
    //   245: ldc 133
    //   247: aload 11
    //   249: invokevirtual 241	android/database/sqlite/SQLiteDatabase:replace	(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
    //   252: lstore 14
    //   254: lload 14
    //   256: lconst_0
    //   257: lcmp
    //   258: ifgt +50 -> 308
    //   261: ldc 243
    //   263: invokestatic 187	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   266: aload_2
    //   267: ifnull +14 -> 281
    //   270: aload_2
    //   271: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   274: ifeq +7 -> 281
    //   277: aload_2
    //   278: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   281: aload 4
    //   283: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   286: ldc 245
    //   288: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   291: iconst_0
    //   292: istore_3
    //   293: goto -245 -> 48
    //   296: iconst_5
    //   297: istore 12
    //   299: goto -170 -> 129
    //   302: iconst_1
    //   303: istore 13
    //   305: goto -153 -> 152
    //   308: new 34	java/lang/StringBuilder
    //   311: dup
    //   312: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   315: ldc 247
    //   317: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   320: lload 14
    //   322: invokevirtual 44	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   325: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   328: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   331: aload 10
    //   333: lload 14
    //   335: invokevirtual 140	com/tencent/feedback/a/a:a	(J)Lcom/tencent/feedback/a/a;
    //   338: pop
    //   339: iinc 9 1
    //   342: goto -269 -> 73
    //   345: aload_2
    //   346: ifnull +14 -> 360
    //   349: aload_2
    //   350: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   353: ifeq +7 -> 360
    //   356: aload_2
    //   357: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   360: aload 4
    //   362: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   365: ldc 245
    //   367: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   370: iconst_1
    //   371: istore_3
    //   372: goto -324 -> 48
    //   375: astore 5
    //   377: aconst_null
    //   378: astore 6
    //   380: aload 5
    //   382: invokevirtual 250	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   385: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   388: aload 5
    //   390: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
    //   393: aload 6
    //   395: ifnull +16 -> 411
    //   398: aload 6
    //   400: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   403: ifeq +8 -> 411
    //   406: aload 6
    //   408: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   411: aload_2
    //   412: ifnull +7 -> 419
    //   415: aload_2
    //   416: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   419: ldc 245
    //   421: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   424: iconst_0
    //   425: istore_3
    //   426: goto -378 -> 48
    //   429: astore 7
    //   431: aconst_null
    //   432: astore 4
    //   434: aload_2
    //   435: ifnull +14 -> 449
    //   438: aload_2
    //   439: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   442: ifeq +7 -> 449
    //   445: aload_2
    //   446: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   449: aload 4
    //   451: ifnull +8 -> 459
    //   454: aload 4
    //   456: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   459: ldc 245
    //   461: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   464: aload 7
    //   466: athrow
    //   467: astore 7
    //   469: goto -35 -> 434
    //   472: astore 7
    //   474: aload_2
    //   475: astore 4
    //   477: aload 6
    //   479: astore_2
    //   480: goto -46 -> 434
    //   483: astore 5
    //   485: aload 4
    //   487: astore_2
    //   488: aconst_null
    //   489: astore 6
    //   491: goto -111 -> 380
    //   494: astore 5
    //   496: aload_2
    //   497: astore 6
    //   499: aload 4
    //   501: astore_2
    //   502: goto -122 -> 380
    //
    // Exception table:
    //   from	to	target	type
    //   50	60	375	java/lang/Throwable
    //   50	60	429	finally
    //   60	67	467	finally
    //   73	266	467	finally
    //   308	339	467	finally
    //   380	393	472	finally
    //   60	67	483	java/lang/Throwable
    //   73	266	494	java/lang/Throwable
    //   308	339	494	java/lang/Throwable
  }

  private static long[] a(String paramString)
  {
    int i = 0;
    ELog.debug("CountDAOparseToArray()");
    Object localObject;
    if ((paramString == null) || (paramString.trim().length() <= 0))
    {
      localObject = null;
      return localObject;
    }
    while (true)
    {
      try
      {
        String[] arrayOfString = paramString.split("%");
        if (arrayOfString != null)
          break label183;
        localObject = null;
        break;
        if (k < arrayOfString.length)
        {
          if (arrayOfString[k] == null)
            break label192;
          if (arrayOfString[k].trim().length() > 0)
            break label195;
          break label192;
        }
        long[] arrayOfLong = new long[arrayOfString.length - j];
        int m = 0;
        if ((i < arrayOfString.length) && (m < arrayOfLong.length))
        {
          if ((arrayOfString[i] != null) && (arrayOfString[i].trim().length() > 0))
          {
            arrayOfLong[m] = Long.parseLong(arrayOfString[i]);
            m++;
          }
          i++;
          continue;
        }
        localObject = arrayOfLong;
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error("" + paramString);
        localObject = null;
      }
      break;
      label183: int j = 0;
      int k = 0;
      continue;
      label192: j++;
      label195: k++;
    }
  }

  // ERROR //
  public static int b(Context paramContext)
  {
    // Byte code:
    //   0: iconst_m1
    //   1: istore_1
    //   2: aconst_null
    //   3: astore_2
    //   4: ldc_w 271
    //   7: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   10: aload_0
    //   11: ifnonnull +27 -> 38
    //   14: new 34	java/lang/StringBuilder
    //   17: dup
    //   18: invokespecial 35	java/lang/StringBuilder:<init>	()V
    //   21: ldc 179
    //   23: invokevirtual 39	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_0
    //   27: invokevirtual 182	java/lang/StringBuilder:append	(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    //   30: invokevirtual 48	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   33: invokestatic 187	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   36: iload_1
    //   37: ireturn
    //   38: new 55	com/tencent/feedback/common/a/d
    //   41: dup
    //   42: aload_0
    //   43: invokespecial 57	com/tencent/feedback/common/a/d:<init>	(Landroid/content/Context;)V
    //   46: astore_3
    //   47: aload_3
    //   48: invokevirtual 61	com/tencent/feedback/common/a/d:getWritableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   51: astore_2
    //   52: aload_2
    //   53: ldc 63
    //   55: aconst_null
    //   56: aconst_null
    //   57: invokevirtual 275	android/database/sqlite/SQLiteDatabase:delete	(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    //   60: istore 6
    //   62: iload 6
    //   64: istore_1
    //   65: aload_2
    //   66: ifnull +14 -> 80
    //   69: aload_2
    //   70: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   73: ifeq +7 -> 80
    //   76: aload_2
    //   77: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   80: aload_3
    //   81: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   84: ldc_w 277
    //   87: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   90: goto -54 -> 36
    //   93: astore 4
    //   95: aconst_null
    //   96: astore_3
    //   97: ldc_w 279
    //   100: invokestatic 187	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   103: aload 4
    //   105: invokevirtual 95	java/lang/Throwable:printStackTrace	()V
    //   108: aload_2
    //   109: ifnull +14 -> 123
    //   112: aload_2
    //   113: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   116: ifeq +7 -> 123
    //   119: aload_2
    //   120: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   123: aload_3
    //   124: ifnull +7 -> 131
    //   127: aload_3
    //   128: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   131: ldc_w 277
    //   134: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   137: goto -101 -> 36
    //   140: astore 5
    //   142: aconst_null
    //   143: astore_3
    //   144: aload_2
    //   145: ifnull +14 -> 159
    //   148: aload_2
    //   149: invokevirtual 104	android/database/sqlite/SQLiteDatabase:isOpen	()Z
    //   152: ifeq +7 -> 159
    //   155: aload_2
    //   156: invokevirtual 105	android/database/sqlite/SQLiteDatabase:close	()V
    //   159: aload_3
    //   160: ifnull +7 -> 167
    //   163: aload_3
    //   164: invokevirtual 106	com/tencent/feedback/common/a/d:close	()V
    //   167: ldc_w 277
    //   170: invokestatic 30	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   173: aload 5
    //   175: athrow
    //   176: astore 5
    //   178: goto -34 -> 144
    //   181: astore 4
    //   183: goto -86 -> 97
    //
    // Exception table:
    //   from	to	target	type
    //   38	47	93	java/lang/Throwable
    //   38	47	140	finally
    //   47	62	176	finally
    //   97	108	176	finally
    //   47	62	181	java/lang/Throwable
  }

  public void a(String paramString, long paramLong1, long paramLong2, long paramLong3)
  {
    if ((paramString == null) || (paramString.trim().length() < 0));
    while (true)
    {
      return;
      c localc = c.a(this.a);
      if (localc == null)
      {
        ELog.error("CountProcess == null error");
      }
      else
      {
        ELog.debug("onUploadConsume count start " + paramLong2 + " " + paramLong3);
        boolean bool = paramString.equals("wifi");
        String str1;
        label92: String str2;
        if (bool)
        {
          str1 = "rqd_upload_wifi_consumed";
          localc.a(str1, new long[] { paramLong1, paramLong2, paramLong3 }, false, true);
          if (!bool)
            break label287;
          str2 = "local_rqd_upload_totalwifi";
          label128: localc.a(str2, new long[] { paramLong1, paramLong2, paramLong3 }, true, true);
          ELog.debug("onUploadConsume count end");
          if (!bool)
            break label295;
        }
        long[] arrayOfLong;
        label287: label295: for (String str3 = "local_rqd_upload_todaywifi"; ; str3 = "local_rqd_upload_todaynowifi")
        {
          a locala = localc.a(str3);
          Date localDate = new Date();
          arrayOfLong = new long[] { paramLong1, paramLong2, paramLong3 };
          if ((locala == null) || (g.a(new Date(locala.c()), localDate)))
            break label303;
          locala.a(1);
          locala.a(arrayOfLong);
          locala.b(localDate.getTime());
          locala.c(locala.c());
          localc.a(locala);
          break;
          str1 = "rqd_upload_nowifi_consumed";
          break label92;
          str2 = "local_rqd_upload_totalnowifi";
          break label128;
        }
        label303: localc.a(str3, arrayOfLong, true, true);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.a.b
 * JD-Core Version:    0.6.2
 */