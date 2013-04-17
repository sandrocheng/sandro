package com.tencent.feedback.common.b;

import android.content.Context;
import android.content.SharedPreferences;
import com.tencent.feedback.common.Constants;
import com.tencent.feedback.upload.UploadHandler;
import java.util.ArrayList;
import java.util.List;

public final class b
{
  private static b e = null;
  private static mqq.sdet.server.a.b f = null;
  private static UploadHandler g = null;
  private List a = new ArrayList();
  private boolean b = false;
  private f c = null;
  private a d = null;

  protected b()
  {
    com.tencent.feedback.common.c.c("StrategyHolder.StrategyHolder() start");
    c localc = new c(this);
    localc.setName("RQD_EmptyUp");
    localc.start();
    com.tencent.feedback.common.c.c("StrategyHolder.StrategyHolder() end");
  }

  public static b a(Context paramContext)
  {
    try
    {
      if (e == null)
        e = new b();
      b localb = e;
      return localb;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public static UploadHandler a()
  {
    try
    {
      UploadHandler localUploadHandler = g;
      return localUploadHandler;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static String a(String paramString)
  {
    if ((paramString == null) || (paramString.trim().length() <= 0))
      paramString = "";
    while (true)
    {
      return paramString;
      try
      {
        if (f == null)
        {
          mqq.sdet.server.a.b localb = mqq.sdet.server.a.a.a(1);
          f = localb;
          localb.a("qqch2011");
        }
        byte[] arrayOfByte1 = paramString.getBytes();
        byte[] arrayOfByte2 = f.b(arrayOfByte1);
        if (arrayOfByte2 == null)
        {
          paramString = null;
        }
        else
        {
          StringBuffer localStringBuffer = new StringBuffer();
          for (int i = 0; i < arrayOfByte2.length; i++)
            localStringBuffer.append("$" + arrayOfByte2[i]);
          String str = localStringBuffer.substring("$".length());
          paramString = str;
        }
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        com.tencent.feedback.common.c.b(localThrowable.getMessage());
      }
    }
  }

  public static void a(UploadHandler paramUploadHandler)
  {
    try
    {
      g = paramUploadHandler;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  // ERROR //
  private static String b(String paramString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_1
    //   2: aload_0
    //   3: ifnull +13 -> 16
    //   6: aload_0
    //   7: invokevirtual 76	java/lang/String:trim	()Ljava/lang/String;
    //   10: invokevirtual 80	java/lang/String:length	()I
    //   13: ifgt +8 -> 21
    //   16: ldc 82
    //   18: astore_0
    //   19: aload_0
    //   20: areturn
    //   21: getstatic 24	com/tencent/feedback/common/b/b:f	Lmqq/sdet/server/a/b;
    //   24: ifnonnull +21 -> 45
    //   27: iconst_1
    //   28: invokestatic 87	mqq/sdet/server/a/a:a	(I)Lmqq/sdet/server/a/b;
    //   31: astore 18
    //   33: aload 18
    //   35: putstatic 24	com/tencent/feedback/common/b/b:f	Lmqq/sdet/server/a/b;
    //   38: aload 18
    //   40: ldc 89
    //   42: invokevirtual 93	mqq/sdet/server/a/b:a	(Ljava/lang/String;)V
    //   45: new 138	java/io/ByteArrayOutputStream
    //   48: dup
    //   49: invokespecial 139	java/io/ByteArrayOutputStream:<init>	()V
    //   52: astore 5
    //   54: aload_0
    //   55: invokevirtual 143	java/lang/String:toCharArray	()[C
    //   58: astore 8
    //   60: new 102	java/lang/StringBuffer
    //   63: dup
    //   64: invokespecial 103	java/lang/StringBuffer:<init>	()V
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
    //   95: invokevirtual 144	java/lang/StringBuffer:length	()I
    //   98: ifle +210 -> 308
    //   101: aload 5
    //   103: aload 9
    //   105: invokevirtual 145	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   108: invokestatic 151	java/lang/Byte:parseByte	(Ljava/lang/String;)B
    //   111: invokevirtual 155	java/io/ByteArrayOutputStream:write	(I)V
    //   114: aload 9
    //   116: iconst_0
    //   117: invokevirtual 158	java/lang/StringBuffer:setLength	(I)V
    //   120: goto +188 -> 308
    //   123: aload 9
    //   125: iload 16
    //   127: invokevirtual 161	java/lang/StringBuffer:append	(C)Ljava/lang/StringBuffer;
    //   130: pop
    //   131: goto +177 -> 308
    //   134: astore_2
    //   135: aload 5
    //   137: astore_3
    //   138: aload_2
    //   139: invokevirtual 128	java/lang/Throwable:printStackTrace	()V
    //   142: aload_2
    //   143: invokevirtual 131	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   146: invokestatic 133	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   149: aload_3
    //   150: ifnull -131 -> 19
    //   153: aload_3
    //   154: invokevirtual 164	java/io/ByteArrayOutputStream:close	()V
    //   157: goto -138 -> 19
    //   160: astore 7
    //   162: aload 7
    //   164: invokevirtual 165	java/io/IOException:printStackTrace	()V
    //   167: goto -148 -> 19
    //   170: aload 5
    //   172: aload 9
    //   174: invokevirtual 145	java/lang/StringBuffer:toString	()Ljava/lang/String;
    //   177: invokestatic 151	java/lang/Byte:parseByte	(Ljava/lang/String;)B
    //   180: invokevirtual 155	java/io/ByteArrayOutputStream:write	(I)V
    //   183: aload 9
    //   185: iconst_0
    //   186: invokevirtual 158	java/lang/StringBuffer:setLength	(I)V
    //   189: aload 5
    //   191: invokevirtual 168	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   194: astore 11
    //   196: getstatic 24	com/tencent/feedback/common/b/b:f	Lmqq/sdet/server/a/b;
    //   199: aload 11
    //   201: invokevirtual 170	mqq/sdet/server/a/b:a	([B)[B
    //   204: astore 12
    //   206: aload 12
    //   208: ifnull +35 -> 243
    //   211: new 72	java/lang/String
    //   214: dup
    //   215: aload 12
    //   217: invokespecial 173	java/lang/String:<init>	([B)V
    //   220: astore 13
    //   222: aload 5
    //   224: invokevirtual 164	java/io/ByteArrayOutputStream:close	()V
    //   227: aload 13
    //   229: astore_0
    //   230: goto -211 -> 19
    //   233: astore 14
    //   235: aload 14
    //   237: invokevirtual 165	java/io/IOException:printStackTrace	()V
    //   240: goto -13 -> 227
    //   243: aload 5
    //   245: invokevirtual 164	java/io/ByteArrayOutputStream:close	()V
    //   248: goto -229 -> 19
    //   251: astore 15
    //   253: aload 15
    //   255: invokevirtual 165	java/io/IOException:printStackTrace	()V
    //   258: goto -239 -> 19
    //   261: astore 4
    //   263: aconst_null
    //   264: astore 5
    //   266: aload 5
    //   268: ifnull +8 -> 276
    //   271: aload 5
    //   273: invokevirtual 164	java/io/ByteArrayOutputStream:close	()V
    //   276: aload 4
    //   278: athrow
    //   279: astore 6
    //   281: aload 6
    //   283: invokevirtual 165	java/io/IOException:printStackTrace	()V
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

  // ERROR //
  public final void a(Context paramContext, a parama)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +7 -> 10
    //   6: aload_2
    //   7: ifnonnull +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: ldc 176
    //   15: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   18: aload_0
    //   19: aload_2
    //   20: putfield 40	com/tencent/feedback/common/b/b:d	Lcom/tencent/feedback/common/b/a;
    //   23: aload_0
    //   24: getfield 40	com/tencent/feedback/common/b/b:d	Lcom/tencent/feedback/common/b/a;
    //   27: astore 4
    //   29: aload_1
    //   30: ifnull +8 -> 38
    //   33: aload 4
    //   35: ifnonnull +63 -> 98
    //   38: ldc 178
    //   40: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   43: aload_0
    //   44: getfield 34	com/tencent/feedback/common/b/b:a	Ljava/util/List;
    //   47: ifnull -37 -> 10
    //   50: aload_0
    //   51: getfield 34	com/tencent/feedback/common/b/b:a	Ljava/util/List;
    //   54: invokeinterface 184 1 0
    //   59: astore 5
    //   61: aload 5
    //   63: invokeinterface 190 1 0
    //   68: ifeq -58 -> 10
    //   71: aload 5
    //   73: invokeinterface 194 1 0
    //   78: checkcast 196	com/tencent/feedback/common/b/e
    //   81: aload_0
    //   82: getfield 40	com/tencent/feedback/common/b/b:d	Lcom/tencent/feedback/common/b/a;
    //   85: invokeinterface 200 2 0
    //   90: goto -29 -> 61
    //   93: astore_3
    //   94: aload_0
    //   95: monitorexit
    //   96: aload_3
    //   97: athrow
    //   98: aload_1
    //   99: ldc 202
    //   101: iconst_0
    //   102: invokevirtual 208	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   105: invokeinterface 214 1 0
    //   110: astore 7
    //   112: aload 4
    //   114: monitorenter
    //   115: new 105	java/lang/StringBuilder
    //   118: dup
    //   119: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   122: ldc 216
    //   124: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   127: aload 4
    //   129: invokevirtual 219	com/tencent/feedback/common/b/a:toString	()Ljava/lang/String;
    //   132: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   135: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   138: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   141: aload 7
    //   143: ldc 221
    //   145: aload 4
    //   147: invokevirtual 223	com/tencent/feedback/common/b/a:b	()I
    //   150: invokeinterface 229 3 0
    //   155: pop
    //   156: aload 7
    //   158: ldc 231
    //   160: aload 4
    //   162: invokevirtual 233	com/tencent/feedback/common/b/a:a	()Ljava/lang/String;
    //   165: invokestatic 235	com/tencent/feedback/common/b/b:a	(Ljava/lang/String;)Ljava/lang/String;
    //   168: invokeinterface 239 3 0
    //   173: pop
    //   174: aload 7
    //   176: ldc 241
    //   178: aload 4
    //   180: invokevirtual 243	com/tencent/feedback/common/b/a:c	()I
    //   183: invokeinterface 229 3 0
    //   188: pop
    //   189: aload 4
    //   191: monitorexit
    //   192: aload 7
    //   194: ldc 245
    //   196: new 247	java/util/Date
    //   199: dup
    //   200: invokespecial 248	java/util/Date:<init>	()V
    //   203: invokevirtual 252	java/util/Date:getTime	()J
    //   206: invokeinterface 256 4 0
    //   211: pop
    //   212: aload 7
    //   214: invokeinterface 259 1 0
    //   219: pop
    //   220: ldc_w 261
    //   223: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   226: goto -188 -> 38
    //   229: astore 6
    //   231: ldc_w 263
    //   234: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   237: aload 6
    //   239: invokevirtual 128	java/lang/Throwable:printStackTrace	()V
    //   242: goto -204 -> 38
    //   245: astore 8
    //   247: aload 4
    //   249: monitorexit
    //   250: aload 8
    //   252: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   13	90	93	finally
    //   98	115	93	finally
    //   192	226	93	finally
    //   231	242	93	finally
    //   247	253	93	finally
    //   98	115	229	java/lang/Throwable
    //   192	226	229	java/lang/Throwable
    //   247	253	229	java/lang/Throwable
    //   115	192	245	finally
  }

  // ERROR //
  public final void a(Context paramContext, f paramf)
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: aload_1
    //   3: ifnull +7 -> 10
    //   6: aload_2
    //   7: ifnonnull +6 -> 13
    //   10: aload_0
    //   11: monitorexit
    //   12: return
    //   13: ldc_w 266
    //   16: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   19: aload_0
    //   20: aload_2
    //   21: putfield 38	com/tencent/feedback/common/b/b:c	Lcom/tencent/feedback/common/b/f;
    //   24: aload_1
    //   25: ifnull +7 -> 32
    //   28: aload_2
    //   29: ifnonnull +63 -> 92
    //   32: ldc 178
    //   34: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   37: aload_0
    //   38: getfield 34	com/tencent/feedback/common/b/b:a	Ljava/util/List;
    //   41: ifnull -31 -> 10
    //   44: aload_0
    //   45: getfield 34	com/tencent/feedback/common/b/b:a	Ljava/util/List;
    //   48: invokeinterface 184 1 0
    //   53: astore 4
    //   55: aload 4
    //   57: invokeinterface 190 1 0
    //   62: ifeq -52 -> 10
    //   65: aload 4
    //   67: invokeinterface 194 1 0
    //   72: checkcast 196	com/tencent/feedback/common/b/e
    //   75: aload_0
    //   76: getfield 38	com/tencent/feedback/common/b/b:c	Lcom/tencent/feedback/common/b/f;
    //   79: invokeinterface 270 2 0
    //   84: goto -29 -> 55
    //   87: astore_3
    //   88: aload_0
    //   89: monitorexit
    //   90: aload_3
    //   91: athrow
    //   92: aload_1
    //   93: ldc 202
    //   95: iconst_0
    //   96: invokevirtual 208	android/content/Context:getSharedPreferences	(Ljava/lang/String;I)Landroid/content/SharedPreferences;
    //   99: invokeinterface 214 1 0
    //   104: astore 6
    //   106: aload_2
    //   107: monitorenter
    //   108: new 105	java/lang/StringBuilder
    //   111: dup
    //   112: invokespecial 106	java/lang/StringBuilder:<init>	()V
    //   115: ldc_w 272
    //   118: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   121: aload_2
    //   122: invokevirtual 275	com/tencent/feedback/common/b/f:toString	()Ljava/lang/String;
    //   125: invokevirtual 112	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   128: invokevirtual 118	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   131: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   134: aload 6
    //   136: ldc_w 277
    //   139: aload_2
    //   140: invokevirtual 278	com/tencent/feedback/common/b/f:b	()I
    //   143: invokeinterface 229 3 0
    //   148: pop
    //   149: aload 6
    //   151: ldc_w 280
    //   154: aload_2
    //   155: invokevirtual 282	com/tencent/feedback/common/b/f:a	()I
    //   158: invokeinterface 229 3 0
    //   163: pop
    //   164: aload 6
    //   166: ldc_w 284
    //   169: aload_2
    //   170: invokevirtual 286	com/tencent/feedback/common/b/f:d	()Ljava/lang/String;
    //   173: invokestatic 235	com/tencent/feedback/common/b/b:a	(Ljava/lang/String;)Ljava/lang/String;
    //   176: invokeinterface 239 3 0
    //   181: pop
    //   182: aload 6
    //   184: ldc_w 288
    //   187: aload_2
    //   188: invokevirtual 289	com/tencent/feedback/common/b/f:c	()I
    //   191: invokeinterface 229 3 0
    //   196: pop
    //   197: aload 6
    //   199: ldc_w 291
    //   202: aload_2
    //   203: invokevirtual 293	com/tencent/feedback/common/b/f:f	()Z
    //   206: invokeinterface 297 3 0
    //   211: pop
    //   212: aload 6
    //   214: ldc_w 299
    //   217: aload_2
    //   218: invokevirtual 302	com/tencent/feedback/common/b/f:i	()Z
    //   221: invokeinterface 297 3 0
    //   226: pop
    //   227: aload 6
    //   229: ldc_w 304
    //   232: aload_2
    //   233: invokevirtual 306	com/tencent/feedback/common/b/f:e	()Z
    //   236: invokeinterface 297 3 0
    //   241: pop
    //   242: aload 6
    //   244: ldc_w 308
    //   247: aload_2
    //   248: invokevirtual 311	com/tencent/feedback/common/b/f:h	()Z
    //   251: invokeinterface 297 3 0
    //   256: pop
    //   257: aload 6
    //   259: ldc_w 313
    //   262: aload_2
    //   263: invokevirtual 315	com/tencent/feedback/common/b/f:g	()Z
    //   266: invokeinterface 297 3 0
    //   271: pop
    //   272: aload 6
    //   274: ldc_w 317
    //   277: aload_2
    //   278: invokevirtual 320	com/tencent/feedback/common/b/f:j	()Z
    //   281: invokeinterface 297 3 0
    //   286: pop
    //   287: aload_2
    //   288: monitorexit
    //   289: aload 6
    //   291: ldc 245
    //   293: new 247	java/util/Date
    //   296: dup
    //   297: invokespecial 248	java/util/Date:<init>	()V
    //   300: invokevirtual 252	java/util/Date:getTime	()J
    //   303: invokeinterface 256 4 0
    //   308: pop
    //   309: aload 6
    //   311: invokeinterface 259 1 0
    //   316: pop
    //   317: ldc_w 261
    //   320: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   323: ldc_w 261
    //   326: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   329: goto -297 -> 32
    //   332: astore 7
    //   334: aload_2
    //   335: monitorexit
    //   336: aload 7
    //   338: athrow
    //   339: astore 5
    //   341: ldc_w 322
    //   344: invokestatic 47	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   347: aload 5
    //   349: invokevirtual 128	java/lang/Throwable:printStackTrace	()V
    //   352: goto -29 -> 323
    //
    // Exception table:
    //   from	to	target	type
    //   13	84	87	finally
    //   92	108	87	finally
    //   289	323	87	finally
    //   323	329	87	finally
    //   334	339	87	finally
    //   341	352	87	finally
    //   108	289	332	finally
    //   92	108	339	java/lang/Throwable
    //   289	323	339	java/lang/Throwable
    //   334	339	339	java/lang/Throwable
  }

  public final void a(e parame)
  {
    if (parame == null);
    while (true)
    {
      return;
      try
      {
        if ((this.a == null) || (this.a.contains(parame)))
          continue;
        this.a.add(parame);
        if (!this.b)
          continue;
        d locald = new d(this, parame);
        locald.setName("addStrategyInitThread");
        locald.start();
      }
      finally
      {
      }
    }
  }

  public final void a(boolean paramBoolean)
  {
    try
    {
      this.b = true;
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final a b(Context paramContext)
  {
    try
    {
      com.tencent.feedback.common.c.c("StrategyHolder.getSecurityStrategy() start");
      a locala1 = null;
      if (paramContext == null)
        return locala1;
      Object localObject2;
      if (this.d == null)
      {
        com.tencent.feedback.common.c.c("load ssBean!");
        localObject2 = null;
        if (paramContext != null)
          break label106;
      }
      while (true)
      {
        if (localObject2 == null)
        {
          com.tencent.feedback.common.c.c("create default security strategy bean!");
          localObject2 = new a();
          ((a)localObject2).a(-1);
          ((a)localObject2).a("*^@K#K@!");
          ((a)localObject2).b("S(@L@L@)");
          ((a)localObject2).b(-1);
        }
        com.tencent.feedback.common.c.a("back up new security!");
        this.d = ((a)localObject2);
        locala1 = this.d;
        break;
        label106: com.tencent.feedback.common.c.c("#load security strategy：");
        a locala2 = new a();
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("eupstrategy", 0);
        int i = localSharedPreferences.getInt("ea", -10);
        localObject2 = null;
        if (i != -10)
        {
          locala2.a(i);
          String str = localSharedPreferences.getString("ek", null);
          localObject2 = null;
          if (str != null)
          {
            locala2.a(b(str));
            int j = localSharedPreferences.getInt("za", -10);
            localObject2 = null;
            if (j != -10)
            {
              locala2.b(j);
              locala2.b("S(@L@L@)");
              localObject2 = locala2;
            }
          }
        }
      }
    }
    finally
    {
    }
  }

  public final e[] b()
  {
    try
    {
      if ((this.a != null) && (this.a.size() > 0))
      {
        arrayOfe = (e[])this.a.toArray(new e[0]);
        return arrayOfe;
      }
      e[] arrayOfe = null;
    }
    finally
    {
    }
  }

  public final f c(Context paramContext)
  {
    while (true)
    {
      try
      {
        com.tencent.feedback.common.c.c("StrategyHolder.getUploadStrategy() start");
        f localf1 = null;
        if (paramContext == null)
          return localf1;
        if (this.c == null)
        {
          com.tencent.feedback.common.c.c("load usBean!");
          localObject2 = null;
          if (paramContext == null)
          {
            if (localObject2 == null)
            {
              com.tencent.feedback.common.c.c("create default upload strategy bean!");
              localObject2 = new f();
              ((f)localObject2).b(50);
              ((f)localObject2).a(1);
              ((f)localObject2).a("http://monitor.uu.qq.com/analytics/upload");
              ((f)localObject2).c(3);
              ((f)localObject2).b(true);
              ((f)localObject2).e(false);
              ((f)localObject2).a(true);
              ((f)localObject2).d(false);
              ((f)localObject2).c(true);
              ((f)localObject2).f(false);
            }
            this.c = ((f)localObject2);
            com.tencent.feedback.common.c.c(((f)localObject2).toString());
            com.tencent.feedback.common.c.c("create success");
          }
        }
        else
        {
          com.tencent.feedback.common.c.c("StrategyHolder.getUploadStrategy() end");
          localf1 = this.c;
          continue;
        }
        com.tencent.feedback.common.c.c("#load upload strategy：");
        f localf2 = new f();
        SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("eupstrategy", 0);
        int i = localSharedPreferences.getInt("ms", -10);
        Object localObject2 = null;
        if (i == -10)
          continue;
        if (i > 10)
        {
          localf2.b(i);
          j = localSharedPreferences.getInt("tms", -10);
          localObject2 = null;
          if (j == -10)
            continue;
          if (j < 0)
            continue;
          localf2.a(j);
          String str1 = localSharedPreferences.getString("use", null);
          localObject2 = null;
          if (str1 == null)
            continue;
          str2 = b(str1);
          if ((str2 == null) || (str2.trim().length() <= 0))
            break label516;
          if ((!Constants.IS_USETESTSERVER) && (!str2.equals("http://monitor.uu.qq.com/analytics/upload")) && ((str2.equals("http://monitor.sp0309.3g.qq.com/analytics/upload")) || (str2.equals("http://112.90.139.158:8080/analytics/upload"))))
            break label524;
          localf2.a(str2);
          int k = localSharedPreferences.getInt("ust", -10);
          localObject2 = null;
          if (k == -10)
            continue;
          if (k < 0)
            continue;
          m = k;
          localf2.c(m);
          localf2.b(localSharedPreferences.getBoolean("euso", true));
          localf2.e(localSharedPreferences.getBoolean("euuo", false));
          localf2.a(localSharedPreferences.getBoolean("smso", true));
          localf2.d(localSharedPreferences.getBoolean("smuo", false));
          localf2.c(localSharedPreferences.getBoolean("ueso", true));
          localf2.f(localSharedPreferences.getBoolean("ueuo", false));
          localObject2 = localf2;
          continue;
        }
        i = 10;
        continue;
        int j = 1;
        continue;
        int m = 3;
        continue;
      }
      finally
      {
      }
      label516: String str2 = "http://monitor.uu.qq.com/analytics/upload";
      continue;
      label524: str2 = "http://monitor.uu.qq.com/analytics/upload";
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.common.b.b
 * JD-Core Version:    0.6.2
 */