package com.tencent.feedback.common.strategy;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import com.tencent.feedback.common.AppInfo;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.Constants;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.c;
import com.tencent.feedback.common.f;
import com.tencent.feedback.common.f.c;
import com.tencent.feedback.upload.UploadHandler;
import java.util.ArrayList;
import java.util.List;

public final class a
{
  private static a h = null;
  private static mqq.sdet.server.a.b i = null;
  private static UploadHandler j = null;
  private List a = new ArrayList();
  private boolean b = false;
  private boolean c = false;
  private String d = null;
  private String e = null;
  private UploadStrategyBean f = null;
  private SecurityStrategyBean g = null;

  private a(Context paramContext)
  {
    ELog.debug("StrategyHolder.StrategyHolder() start");
    c.a().a(14, new a(paramContext), 0L, f.d().a);
    ELog.debug("StrategyHolder.StrategyHolder() end");
  }

  public static a a(Context paramContext)
  {
    try
    {
      ELog.debug("getStrategyHolder start");
      if ((h == null) && (paramContext != null))
      {
        ELog.debug("new StrategyHolder");
        h = new a(paramContext.getApplicationContext());
      }
      ELog.debug("getStrategyHolder end");
      a locala = h;
      return locala;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static void a(Context paramContext, String paramString)
  {
    ELog.info("saveLocalVersion start");
    if ((paramContext == null) || (paramString == null))
      ELog.error("context == null || localVersion == null return");
    while (true)
    {
      return;
      try
      {
        SharedPreferences.Editor localEditor = paramContext.getApplicationContext().getSharedPreferences("eupstrategy", 0).edit();
        ELog.debug("updateLocalVersion：" + paramString);
        localEditor.putString("localversion", paramString);
        localEditor.commit();
        ELog.debug("updateLocalVersion success!");
        ELog.info("saveLocalVersion end");
      }
      catch (Throwable localThrowable)
      {
        while (true)
        {
          ELog.debug("updateLocalVersion fail!");
          localThrowable.printStackTrace();
        }
      }
    }
  }

  public static void a(UploadHandler paramUploadHandler)
  {
    try
    {
      j = paramUploadHandler;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static UploadHandler b()
  {
    try
    {
      UploadHandler localUploadHandler = j;
      return localUploadHandler;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static String c(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() <= 0))
      paramString = "";
    while (true)
    {
      return paramString;
      try
      {
        if (i == null)
        {
          mqq.sdet.server.a.b localb = mqq.sdet.server.a.a.a(1);
          i = localb;
          localb.a("qqch2011");
        }
        byte[] arrayOfByte1 = paramString.getBytes();
        byte[] arrayOfByte2 = i.b(arrayOfByte1);
        if (arrayOfByte2 == null)
        {
          paramString = null;
        }
        else
        {
          StringBuffer localStringBuffer = new StringBuffer();
          for (int k = 0; k < arrayOfByte2.length; k++)
            localStringBuffer.append("$" + arrayOfByte2[k]);
          String str = localStringBuffer.substring("$".length());
          paramString = str;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        ELog.error(localThrowable.getMessage());
      }
    }
  }

  public static String d(Context paramContext)
  {
    String str = null;
    if (paramContext == null)
      ELog.error("context == null return null");
    while (true)
    {
      return str;
      str = paramContext.getApplicationContext().getSharedPreferences("eupstrategy", 0).getString("localversion", null);
    }
  }

  // ERROR //
  private static String d(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: ifnull +13 -> 16
    //   6: aload_0
    //   7: invokevirtual 168	java/lang/String:trim	()Ljava/lang/String;
    //   10: invokevirtual 172	java/lang/String:length	()I
    //   13: ifgt +8 -> 21
    //   16: ldc 174
    //   18: astore_0
    //   19: aload_0
    //   20: areturn
    //   21: getstatic 28	com/tencent/feedback/common/strategy/a:i	Lmqq/sdet/server/a/b;
    //   24: ifnonnull +21 -> 45
    //   27: iconst_1
    //   28: invokestatic 179	mqq/sdet/server/a/a:a	(I)Lmqq/sdet/server/a/b;
    //   31: astore 18
    //   33: aload 18
    //   35: putstatic 28	com/tencent/feedback/common/strategy/a:i	Lmqq/sdet/server/a/b;
    //   38: aload 18
    //   40: ldc 181
    //   42: invokevirtual 185	mqq/sdet/server/a/b:a	(Ljava/lang/String;)V
    //   45: new 222	java/io/ByteArrayOutputStream
    //   48: dup
    //   49: invokespecial 223	java/io/ByteArrayOutputStream:<init>	()V
    //   52: astore 5
    //   54: aload_0
    //   55: invokevirtual 227	java/lang/String:toCharArray	()[C
    //   58: astore 8
    //   60: new 194	java/lang/StringBuffer
    //   63: dup
    //   64: invokespecial 195	java/lang/StringBuffer:<init>	()V
    //   67: astore 9
    //   69: aload 8
    //   71: arraylength
    //   72: istore 10
    //   74: iload_1
    //   75: iload 10
    //   77: if_icmpge +93 -> 170
    //   80: aload 8
    //   82: iload_1
    //   83: caload
    //   84: istore 16
    //   86: iload 16
    //   88: bipush 36
    //   90: if_icmpne +33 -> 123
    //   93: aload 9
    //   95: invokevirtual 228	java/lang/StringBuffer:length	()I
    //   98: ifle +210 -> 308
    //   101: aload 5
    //   103: aload 9
    //   105: invokevirtual 229	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   108: invokestatic 235	java/lang/Byte:parseByte	(Ljava/lang/String;)B
    //   111: invokevirtual 239	java/io/ByteArrayOutputStream:write	(I)V
    //   114: aload 9
    //   116: iconst_0
    //   117: invokevirtual 242	java/lang/StringBuffer:setLength	(I)V
    //   120: goto +188 -> 308
    //   123: aload 9
    //   125: iload 16
    //   127: invokevirtual 245	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   130: pop
    //   131: goto +177 -> 308
    //   134: astore_2
    //   135: aload 5
    //   137: astore_3
    //   138: aload_2
    //   139: invokevirtual 158	java/lang/Throwable:printStackTrace	()V
    //   142: aload_2
    //   143: invokevirtual 210	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   146: invokestatic 112	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   149: aload_3
    //   150: ifnull -131 -> 19
    //   153: aload_3
    //   154: invokevirtual 248	java/io/ByteArrayOutputStream:close	()V
    //   157: goto -138 -> 19
    //   160: astore 7
    //   162: aload 7
    //   164: invokevirtual 249	java/io/IOException:printStackTrace	()V
    //   167: goto -148 -> 19
    //   170: aload 5
    //   172: aload 9
    //   174: invokevirtual 229	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   177: invokestatic 235	java/lang/Byte:parseByte	(Ljava/lang/String;)B
    //   180: invokevirtual 239	java/io/ByteArrayOutputStream:write	(I)V
    //   183: aload 9
    //   185: iconst_0
    //   186: invokevirtual 242	java/lang/StringBuffer:setLength	(I)V
    //   189: aload 5
    //   191: invokevirtual 252	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   194: astore 11
    //   196: getstatic 28	com/tencent/feedback/common/strategy/a:i	Lmqq/sdet/server/a/b;
    //   199: aload 11
    //   201: invokevirtual 254	mqq/sdet/server/a/b:a	([B)[B
    //   204: astore 12
    //   206: aload 12
    //   208: ifnull +35 -> 243
    //   211: new 165	java/lang/String
    //   214: dup
    //   215: aload 12
    //   217: invokespecial 257	java/lang/String:<init>	([B)V
    //   220: astore 13
    //   222: aload 5
    //   224: invokevirtual 248	java/io/ByteArrayOutputStream:close	()V
    //   227: aload 13
    //   229: astore_0
    //   230: goto -211 -> 19
    //   233: astore 14
    //   235: aload 14
    //   237: invokevirtual 249	java/io/IOException:printStackTrace	()V
    //   240: goto -13 -> 227
    //   243: aload 5
    //   245: invokevirtual 248	java/io/ByteArrayOutputStream:close	()V
    //   248: goto -229 -> 19
    //   251: astore 15
    //   253: aload 15
    //   255: invokevirtual 249	java/io/IOException:printStackTrace	()V
    //   258: goto -239 -> 19
    //   261: astore 4
    //   263: aconst_null
    //   264: astore 5
    //   266: aload 5
    //   268: ifnull +8 -> 276
    //   271: aload 5
    //   273: invokevirtual 248	java/io/ByteArrayOutputStream:close	()V
    //   276: aload 4
    //   278: athrow
    //   279: astore 6
    //   281: aload 6
    //   283: invokevirtual 249	java/io/IOException:printStackTrace	()V
    //   286: goto -10 -> 276
    //   289: astore 4
    //   291: goto -25 -> 266
    //   294: astore 4
    //   296: aload_3
    //   297: astore 5
    //   299: goto -33 -> 266
    //   302: astore_2
    //   303: aconst_null
    //   304: astore_3
    //   305: goto -167 -> 138
    //   308: iinc 1 1
    //   311: goto -237 -> 74
    //
    // Exception table:
    //   from	to	target	type
    //   54	131	134	java/lang/Throwable
    //   170	222	134	java/lang/Throwable
    //   153	157	160	java/io/IOException
    //   222	227	233	java/io/IOException
    //   243	248	251	java/io/IOException
    //   21	54	261	finally
    //   271	276	279	java/io/IOException
    //   54	131	289	finally
    //   170	222	289	finally
    //   138	149	294	finally
    //   21	54	302	java/lang/Throwable
  }

  protected final void a()
  {
    ELog.info("notifyAfterEmptyQuery start");
    b[] arrayOfb = e();
    if (arrayOfb != null)
    {
      int k = arrayOfb.length;
      for (int m = 0; m < k; m++)
      {
        b localb = arrayOfb[m];
        if (this.c)
          localb.onLocalVersionChanged(this.d, this.e);
        localb.onInitByQuery();
      }
    }
    ELog.info("notifyAfterEmptyQuery end");
  }

  // ERROR //
  public final void a(Context paramContext, SecurityStrategyBean paramSecurityStrategyBean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc_w 277
    //   5: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   8: aload_1
    //   9: ifnull +7 -> 16
    //   12: aload_2
    //   13: ifnonnull +6 -> 19
    //   16: aload_0
    //   17: monitorexit
    //   18: return
    //   19: ldc_w 279
    //   22: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   25: aload_0
    //   26: aload_2
    //   27: putfield 51	com/tencent/feedback/common/strategy/a:g	Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;
    //   30: aload_1
    //   31: invokevirtual 95	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   34: astore 4
    //   36: aload_0
    //   37: getfield 51	com/tencent/feedback/common/strategy/a:g	Lcom/tencent/feedback/common/strategy/SecurityStrategyBean;
    //   40: astore 5
    //   42: aload 4
    //   44: ifnull +8 -> 52
    //   47: aload 5
    //   49: ifnonnull +56 -> 105
    //   52: ldc_w 281
    //   55: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   58: aload_0
    //   59: getfield 39	com/tencent/feedback/common/strategy/a:a	Ljava/util/List;
    //   62: ifnull +29 -> 91
    //   65: aload_0
    //   66: getfield 39	com/tencent/feedback/common/strategy/a:a	Ljava/util/List;
    //   69: invokeinterface 286 1 0
    //   74: ifle +17 -> 91
    //   77: invokestatic 64	com/tencent/feedback/common/c:a	()Lcom/tencent/feedback/common/c;
    //   80: new 288	com/tencent/feedback/common/strategy/c
    //   83: dup
    //   84: aload_0
    //   85: invokespecial 291	com/tencent/feedback/common/strategy/c:<init>	(Lcom/tencent/feedback/common/strategy/a;)V
    //   88: invokevirtual 294	com/tencent/feedback/common/c:a	(Ljava/lang/Runnable;)V
    //   91: ldc_w 296
    //   94: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   97: goto -81 -> 16
    //   100: astore_3
    //   101: aload_0
    //   102: monitorexit
    //   103: aload_3
    //   104: athrow
    //   105: aload 4
    //   107: invokevirtual 95	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   110: ldc 114
    //   112: iconst_0
    //   113: invokevirtual 118	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   116: invokeinterface 124 1 0
    //   121: astore 7
    //   123: aload 5
    //   125: monitorenter
    //   126: new 126	java/lang/StringBuilder
    //   129: dup
    //   130: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   133: ldc_w 298
    //   136: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   139: aload 5
    //   141: invokevirtual 301	com/tencent/feedback/common/strategy/SecurityStrategyBean:toString	()Ljava/lang/String;
    //   144: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   147: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   150: invokestatic 59	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   153: aload 7
    //   155: ldc_w 303
    //   158: aload 5
    //   160: invokevirtual 306	com/tencent/feedback/common/strategy/SecurityStrategyBean:getEncryAlgorithm	()I
    //   163: invokeinterface 310 3 0
    //   168: pop
    //   169: aload 7
    //   171: ldc_w 312
    //   174: aload 5
    //   176: invokevirtual 315	com/tencent/feedback/common/strategy/SecurityStrategyBean:getEncryKey	()Ljava/lang/String;
    //   179: invokestatic 317	com/tencent/feedback/common/strategy/a:c	(Ljava/lang/String;)Ljava/lang/String;
    //   182: invokeinterface 145 3 0
    //   187: pop
    //   188: aload 7
    //   190: ldc_w 319
    //   193: aload 5
    //   195: invokevirtual 322	com/tencent/feedback/common/strategy/SecurityStrategyBean:getZipAlgorithm	()I
    //   198: invokeinterface 310 3 0
    //   203: pop
    //   204: aload 5
    //   206: monitorexit
    //   207: aload 7
    //   209: ldc_w 324
    //   212: new 326	java/util/Date
    //   215: dup
    //   216: invokespecial 327	java/util/Date:<init>	()V
    //   219: invokevirtual 331	java/util/Date:getTime	()J
    //   222: invokeinterface 335 4 0
    //   227: pop
    //   228: aload 7
    //   230: invokeinterface 149 1 0
    //   235: pop
    //   236: ldc_w 337
    //   239: invokestatic 59	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   242: goto -190 -> 52
    //   245: astore 6
    //   247: ldc_w 339
    //   250: invokestatic 59	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   253: aload 6
    //   255: invokevirtual 158	java/lang/Throwable:printStackTrace	()V
    //   258: goto -206 -> 52
    //   261: astore 8
    //   263: aload 5
    //   265: monitorexit
    //   266: aload 8
    //   268: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   2	8	100	finally
    //   19	97	100	finally
    //   105	126	100	finally
    //   207	242	100	finally
    //   247	258	100	finally
    //   263	269	100	finally
    //   105	126	245	java/lang/Throwable
    //   207	242	245	java/lang/Throwable
    //   263	269	245	java/lang/Throwable
    //   126	207	261	finally
  }

  // ERROR //
  public final void a(Context paramContext, UploadStrategyBean paramUploadStrategyBean)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: ldc_w 342
    //   5: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   8: aload_1
    //   9: ifnull +7 -> 16
    //   12: aload_2
    //   13: ifnonnull +12 -> 25
    //   16: ldc_w 344
    //   19: invokestatic 112	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   22: aload_0
    //   23: monitorexit
    //   24: return
    //   25: ldc_w 346
    //   28: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   31: aload_0
    //   32: aload_2
    //   33: putfield 49	com/tencent/feedback/common/strategy/a:f	Lcom/tencent/feedback/common/strategy/UploadStrategyBean;
    //   36: aload_1
    //   37: invokevirtual 95	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   40: astore 4
    //   42: ldc_w 348
    //   45: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   48: aload 4
    //   50: ifnull +7 -> 57
    //   53: aload_2
    //   54: ifnonnull +56 -> 110
    //   57: ldc_w 281
    //   60: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   63: aload_0
    //   64: getfield 39	com/tencent/feedback/common/strategy/a:a	Ljava/util/List;
    //   67: ifnull +29 -> 96
    //   70: aload_0
    //   71: getfield 39	com/tencent/feedback/common/strategy/a:a	Ljava/util/List;
    //   74: invokeinterface 286 1 0
    //   79: ifle +17 -> 96
    //   82: invokestatic 64	com/tencent/feedback/common/c:a	()Lcom/tencent/feedback/common/c;
    //   85: new 350	com/tencent/feedback/common/strategy/d
    //   88: dup
    //   89: aload_0
    //   90: invokespecial 351	com/tencent/feedback/common/strategy/d:<init>	(Lcom/tencent/feedback/common/strategy/a;)V
    //   93: invokevirtual 294	com/tencent/feedback/common/c:a	(Ljava/lang/Runnable;)V
    //   96: ldc_w 353
    //   99: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   102: goto -80 -> 22
    //   105: astore_3
    //   106: aload_0
    //   107: monitorexit
    //   108: aload_3
    //   109: athrow
    //   110: aload 4
    //   112: invokevirtual 95	android/content/Context:getApplicationContext	()Landroid/content/Context;
    //   115: ldc 114
    //   117: iconst_0
    //   118: invokevirtual 118	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   121: invokeinterface 124 1 0
    //   126: astore 6
    //   128: aload_2
    //   129: monitorenter
    //   130: new 126	java/lang/StringBuilder
    //   133: dup
    //   134: invokespecial 127	java/lang/StringBuilder:<init>	()V
    //   137: ldc_w 355
    //   140: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   143: aload_2
    //   144: invokevirtual 358	com/tencent/feedback/common/strategy/UploadStrategyBean:toString	()Ljava/lang/String;
    //   147: invokevirtual 133	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   150: invokevirtual 137	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   153: invokestatic 59	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   156: aload 6
    //   158: ldc_w 360
    //   161: aload_2
    //   162: invokevirtual 363	com/tencent/feedback/common/strategy/UploadStrategyBean:getMaxPackageSize	()I
    //   165: invokeinterface 310 3 0
    //   170: pop
    //   171: aload 6
    //   173: ldc_w 365
    //   176: aload_2
    //   177: invokevirtual 368	com/tencent/feedback/common/strategy/UploadStrategyBean:getTestCount	()I
    //   180: invokeinterface 310 3 0
    //   185: pop
    //   186: aload 6
    //   188: ldc_w 370
    //   191: aload_2
    //   192: invokevirtual 373	com/tencent/feedback/common/strategy/UploadStrategyBean:getUploadServer	()Ljava/lang/String;
    //   195: invokestatic 317	com/tencent/feedback/common/strategy/a:c	(Ljava/lang/String;)Ljava/lang/String;
    //   198: invokeinterface 145 3 0
    //   203: pop
    //   204: aload 6
    //   206: ldc_w 375
    //   209: aload_2
    //   210: invokevirtual 378	com/tencent/feedback/common/strategy/UploadStrategyBean:getUploadStrategy	()I
    //   213: invokeinterface 310 3 0
    //   218: pop
    //   219: aload 6
    //   221: ldc_w 380
    //   224: aload_2
    //   225: invokevirtual 383	com/tencent/feedback/common/strategy/UploadStrategyBean:isExceptionUploadServerOpen	()Z
    //   228: invokeinterface 387 3 0
    //   233: pop
    //   234: aload 6
    //   236: ldc_w 389
    //   239: aload_2
    //   240: invokevirtual 392	com/tencent/feedback/common/strategy/UploadStrategyBean:isExceptionUploadUserOpen	()Z
    //   243: invokeinterface 387 3 0
    //   248: pop
    //   249: aload 6
    //   251: ldc_w 394
    //   254: aload_2
    //   255: invokevirtual 397	com/tencent/feedback/common/strategy/UploadStrategyBean:isSpeedMonitorServerOpen	()Z
    //   258: invokeinterface 387 3 0
    //   263: pop
    //   264: aload 6
    //   266: ldc_w 399
    //   269: aload_2
    //   270: invokevirtual 402	com/tencent/feedback/common/strategy/UploadStrategyBean:isSpeedMonitorUserOpen	()Z
    //   273: invokeinterface 387 3 0
    //   278: pop
    //   279: aload 6
    //   281: ldc_w 404
    //   284: aload_2
    //   285: invokevirtual 407	com/tencent/feedback/common/strategy/UploadStrategyBean:isUserEventServerOpen	()Z
    //   288: invokeinterface 387 3 0
    //   293: pop
    //   294: aload 6
    //   296: ldc_w 409
    //   299: aload_2
    //   300: invokevirtual 412	com/tencent/feedback/common/strategy/UploadStrategyBean:isUserEventUserOpen	()Z
    //   303: invokeinterface 387 3 0
    //   308: pop
    //   309: aload 6
    //   311: ldc_w 414
    //   314: aload_2
    //   315: invokevirtual 417	com/tencent/feedback/common/strategy/UploadStrategyBean:getApkUID	()Ljava/lang/String;
    //   318: invokeinterface 145 3 0
    //   323: pop
    //   324: aload_2
    //   325: monitorexit
    //   326: aload 6
    //   328: ldc_w 324
    //   331: new 326	java/util/Date
    //   334: dup
    //   335: invokespecial 327	java/util/Date:<init>	()V
    //   338: invokevirtual 331	java/util/Date:getTime	()J
    //   341: invokeinterface 335 4 0
    //   346: pop
    //   347: aload 6
    //   349: invokeinterface 149 1 0
    //   354: pop
    //   355: ldc_w 337
    //   358: invokestatic 59	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   361: ldc_w 419
    //   364: invokestatic 107	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   367: ldc_w 337
    //   370: invokestatic 59	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   373: goto -316 -> 57
    //   376: astore 7
    //   378: aload_2
    //   379: monitorexit
    //   380: aload 7
    //   382: athrow
    //   383: astore 5
    //   385: ldc_w 421
    //   388: invokestatic 59	com/tencent/feedback/common/ELog:debug	(Ljava/lang/String;)V
    //   391: aload 5
    //   393: invokevirtual 158	java/lang/Throwable:printStackTrace	()V
    //   396: goto -29 -> 367
    //
    // Exception table:
    //   from	to	target	type
    //   2	22	105	finally
    //   25	102	105	finally
    //   110	130	105	finally
    //   326	367	105	finally
    //   367	373	105	finally
    //   378	383	105	finally
    //   385	396	105	finally
    //   130	326	376	finally
    //   110	130	383	java/lang/Throwable
    //   326	367	383	java/lang/Throwable
    //   378	383	383	java/lang/Throwable
  }

  public final void a(b paramb)
  {
    try
    {
      ELog.debug("addStrategyChangeListener start");
      if (paramb == null);
      while (true)
      {
        return;
        if ((this.a != null) && (!this.a.contains(paramb)))
        {
          this.a.add(paramb);
          if (this.b)
            c.a().a(new b(this, paramb));
        }
        ELog.debug("addStrategyChangeListener end");
      }
    }
    finally
    {
    }
  }

  public final void a(String paramString)
  {
    try
    {
      this.d = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.c = paramBoolean;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final SecurityStrategyBean b(Context paramContext)
  {
    try
    {
      ELog.info("StrategyHolder.getSecurityStrategy() start");
      SecurityStrategyBean localSecurityStrategyBean1 = null;
      if (paramContext == null)
        return localSecurityStrategyBean1;
      Context localContext;
      Object localObject2;
      if (this.g == null)
      {
        ELog.debug("load ssBean!");
        localContext = paramContext.getApplicationContext();
        localObject2 = null;
        if (localContext != null)
          break label119;
      }
      while (true)
      {
        if (localObject2 == null)
        {
          ELog.debug("create default security strategy bean!");
          localObject2 = new SecurityStrategyBean();
          ((SecurityStrategyBean)localObject2).setEncryAlgorithm(-1);
          ((SecurityStrategyBean)localObject2).setEncryKey("*^@K#K@!");
          ((SecurityStrategyBean)localObject2).setPubEncryKey("S(@L@L@)");
          ((SecurityStrategyBean)localObject2).setZipAlgorithm(-1);
        }
        ELog.info("back up new security!");
        this.g = ((SecurityStrategyBean)localObject2);
        ELog.info("StrategyHolder.getSecurityStrategy() end");
        localSecurityStrategyBean1 = this.g;
        break;
        label119: ELog.debug("#load security strategy：");
        SecurityStrategyBean localSecurityStrategyBean2 = new SecurityStrategyBean();
        SharedPreferences localSharedPreferences = localContext.getApplicationContext().getSharedPreferences("eupstrategy", 0);
        int k = localSharedPreferences.getInt("ea", -10);
        localObject2 = null;
        if (k != -10)
        {
          localSecurityStrategyBean2.setEncryAlgorithm(k);
          String str = localSharedPreferences.getString("ek", null);
          localObject2 = null;
          if (str != null)
          {
            localSecurityStrategyBean2.setEncryKey(d(str));
            int m = localSharedPreferences.getInt("za", -10);
            localObject2 = null;
            if (m != -10)
            {
              localSecurityStrategyBean2.setZipAlgorithm(m);
              localSecurityStrategyBean2.setPubEncryKey("S(@L@L@)");
              localObject2 = localSecurityStrategyBean2;
            }
          }
        }
      }
    }
    finally
    {
    }
  }

  public final void b(b paramb)
  {
    try
    {
      ELog.info("removeStrategyChangeListener start");
      if (paramb == null);
      while (true)
      {
        return;
        if (this.a != null)
          this.a.remove(paramb);
        ELog.info("removeStrategyChangeListener end");
      }
    }
    finally
    {
    }
  }

  public final void b(String paramString)
  {
    try
    {
      this.e = paramString;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void b(boolean paramBoolean)
  {
    try
    {
      ELog.debug("set isQueryFinish:" + true);
      this.b = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final UploadStrategyBean c(Context paramContext)
  {
    while (true)
    {
      try
      {
        ELog.debug("StrategyHolder.getUploadStrategy() start");
        Context localContext;
        if ((this.f == null) && (paramContext != null))
        {
          ELog.debug("load usBean!");
          localContext = paramContext.getApplicationContext();
          ELog.info("StrategyHolder.loadUploadStrategy() start");
          localObject2 = null;
          if (localContext == null)
          {
            if (localObject2 == null)
            {
              ELog.debug("create default upload strategy bean!");
              localObject2 = new UploadStrategyBean();
              ((UploadStrategyBean)localObject2).setMaxPackageSize(50);
              ((UploadStrategyBean)localObject2).setTestCount(1);
              ((UploadStrategyBean)localObject2).setUploadServer("http://monitor.uu.qq.com/analytics/upload");
              ((UploadStrategyBean)localObject2).setUploadStrategy(3);
              ((UploadStrategyBean)localObject2).setExceptionUploadServerOpen(true);
              ((UploadStrategyBean)localObject2).setExceptionUploadUserOpen(false);
              ((UploadStrategyBean)localObject2).setSpeedMonitorServerOpen(true);
              ((UploadStrategyBean)localObject2).setSpeedMonitorUserOpen(false);
              ((UploadStrategyBean)localObject2).setUserEventServerOpen(true);
              ((UploadStrategyBean)localObject2).setUserEventUserOpen(false);
            }
            this.f = ((UploadStrategyBean)localObject2);
            ELog.debug(((UploadStrategyBean)localObject2).toString());
            ELog.debug("create success");
          }
        }
        else
        {
          ELog.debug("StrategyHolder.getUploadStrategy() end");
          UploadStrategyBean localUploadStrategyBean1 = this.f;
          return localUploadStrategyBean1;
        }
        ELog.debug("#load upload strategy：");
        UploadStrategyBean localUploadStrategyBean2 = new UploadStrategyBean();
        SharedPreferences localSharedPreferences = localContext.getApplicationContext().getSharedPreferences("eupstrategy", 0);
        int k = localSharedPreferences.getInt("ms", -10);
        Object localObject2 = null;
        if (k == -10)
          continue;
        if (k > 10)
        {
          localUploadStrategyBean2.setMaxPackageSize(k);
          m = localSharedPreferences.getInt("tms", -10);
          localObject2 = null;
          if (m == -10)
            continue;
          if (m < 0)
            continue;
          localUploadStrategyBean2.setTestCount(m);
          String str1 = localSharedPreferences.getString("use", null);
          localObject2 = null;
          if (str1 == null)
            continue;
          str2 = d(str1);
          if ((str2 == null) || (str2.trim().length() <= 0))
            break label550;
          if ((!Constants.IS_USETESTSERVER) && (!str2.equals("http://monitor.uu.qq.com/analytics/upload")) && ((str2.equals("http://monitor.sp0309.3g.qq.com/analytics/upload")) || (str2.equals("http://112.90.139.158:8080/analytics/upload"))))
            break label558;
          localUploadStrategyBean2.setUploadServer(str2);
          int n = localSharedPreferences.getInt("ust", -10);
          localObject2 = null;
          if (n == -10)
            continue;
          if (n < 0)
            continue;
          i1 = n;
          localUploadStrategyBean2.setUploadStrategy(i1);
          localUploadStrategyBean2.setExceptionUploadServerOpen(localSharedPreferences.getBoolean("euso", true));
          localUploadStrategyBean2.setExceptionUploadUserOpen(localSharedPreferences.getBoolean("euuo", false));
          localUploadStrategyBean2.setSpeedMonitorServerOpen(localSharedPreferences.getBoolean("smso", true));
          localUploadStrategyBean2.setSpeedMonitorUserOpen(localSharedPreferences.getBoolean("smuo", false));
          localUploadStrategyBean2.setUserEventServerOpen(localSharedPreferences.getBoolean("ueso", true));
          localUploadStrategyBean2.setUserEventUserOpen(localSharedPreferences.getBoolean("ueuo", false));
          localUploadStrategyBean2.setApkUID(localSharedPreferences.getString("uuid", null));
          ELog.info("StrategyHolder.loadUploadStrategy() end");
          localObject2 = localUploadStrategyBean2;
          continue;
        }
        k = 10;
        continue;
        int m = 1;
        continue;
        int i1 = 3;
        continue;
      }
      finally
      {
      }
      label550: String str2 = "http://monitor.uu.qq.com/analytics/upload";
      continue;
      label558: str2 = "http://monitor.uu.qq.com/analytics/upload";
    }
  }

  public final boolean c()
  {
    try
    {
      boolean bool = this.c;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final boolean d()
  {
    try
    {
      ELog.debug("isQueryFinish:" + this.b);
      boolean bool = this.b;
      return bool;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final b[] e()
  {
    try
    {
      ELog.info("getSclListArray " + this.a.size());
      if ((this.a != null) && (this.a.size() > 0))
      {
        arrayOfb = (b[])this.a.toArray(new b[0]);
        return arrayOfb;
      }
      b[] arrayOfb = null;
    }
    finally
    {
    }
  }

  public final class a
    implements Runnable
  {
    private Context a;

    public a(Context arg2)
    {
      Object localObject;
      this.a = localObject;
    }

    public final void run()
    {
      ELog.info("empty query start");
      CommonInfo localCommonInfo = CommonInfo.getCommonInfo();
      if (localCommonInfo == null)
        ELog.error("CommonInfo ,have not been Created!pls check!");
      while (true)
      {
        return;
        if ((localCommonInfo.getUUId() == null) || (localCommonInfo.getUUId().trim().length() <= 0))
        {
          ELog.info("appid have not been setted , set uid");
          UploadStrategyBean localUploadStrategyBean = a.this.c(this.a);
          if (localUploadStrategyBean != null)
          {
            String str3 = localUploadStrategyBean.getApkUID();
            if ((str3 == null) || (str3.trim().length() <= 0))
            {
              ELog.info("go to caculate the apk uid!");
              str3 = AppInfo.getUidFromAPKFile(this.a);
              localUploadStrategyBean.setApkUID(str3);
              a.this.a(this.a, localUploadStrategyBean);
            }
            ELog.info("set rqd uid to common info");
            localCommonInfo.setUUId(str3);
          }
        }
        UploadHandler localUploadHandler = a.b();
        if (localUploadHandler != null)
          ELog.info("do empty query");
        try
        {
          localUploadHandler.doUpload(new com.tencent.feedback.upload.a(), null, null);
          if (!a.this.d())
          {
            a.this.b(true);
            ELog.info("verify local version");
            ELog.info("app first launched , check version changed");
            String str1 = localCommonInfo.getProductVersion() + "|" + localCommonInfo.getUUId() + "|" + localCommonInfo.getSdkVersion() + "|" + localCommonInfo.getAPPId();
            String str2 = a.d(this.a);
            a.this.b(str1);
            a.this.a(str2);
            a.this.a(a.a(a.this));
            boolean bool1 = str1.equals(str2);
            boolean bool2 = false;
            if (!bool1)
            {
              ELog.info("version change,notify and update");
              a.a(this.a, str1);
              bool2 = true;
            }
            a.this.a(bool2);
            ELog.info("first empty query ,do init notify!");
            ELog.info("start notify");
            a.this.a();
          }
          ELog.info("empty query end");
        }
        catch (Throwable localThrowable)
        {
          while (true)
            localThrowable.printStackTrace();
        }
      }
    }
  }

  public static abstract interface b
  {
    public abstract void onInitByQuery();

    public abstract void onLocalVersionChanged(String paramString1, String paramString2);

    public abstract void onSecurityStrategyChange(SecurityStrategyBean paramSecurityStrategyBean);

    public abstract void onUploadStrategyChange(UploadStrategyBean paramUploadStrategyBean);
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.common.strategy.a
 * JD-Core Version:    0.6.2
 */