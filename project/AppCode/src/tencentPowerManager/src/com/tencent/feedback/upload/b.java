package com.tencent.feedback.upload;

import android.content.Context;
import com.qq.jce.wup.UniPacket;
import com.qq.taf.jce.JceInputStream;
import com.tencent.feedback.common.b.a;
import com.tencent.feedback.common.b.f;
import com.tencent.feedback.common.c;
import common.RequestPackage;
import common.ResponsePackage;
import java.util.Map;
import strategy.SecurityStrategyPackage;
import strategy.UploadStrategyPackage;

public final class b
  implements UploadHandler
{
  private static b b = null;
  private Context a = null;

  private b(Context paramContext)
  {
    this.a = paramContext;
  }

  private static UniPacket a(RequestPackage paramRequestPackage)
  {
    c.c("RQDUploadImp.encode2Unipackage() start");
    try
    {
      localUniPacket = new UniPacket();
      localUniPacket.setRequestId(1);
      localUniPacket.setServantName("test");
      localUniPacket.setFuncName("test");
      localUniPacket.put("detail", paramRequestPackage);
      c.c("RQDUploadImp.encode2Unipackage() end");
      return localUniPacket;
    }
    catch (Throwable localThrowable)
    {
      while (true)
      {
        localThrowable.printStackTrace();
        UniPacket localUniPacket = null;
      }
    }
  }

  public static UploadHandler a(Context paramContext)
  {
    try
    {
      if (b == null)
        b = new b(paramContext);
      b localb = b;
      return localb;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  private static ResponsePackage a(byte[] paramArrayOfByte)
  {
    c.c("MyDoUpload.decode2ResponsePackage() start");
    ResponsePackage localResponsePackage;
    if (paramArrayOfByte == null)
      localResponsePackage = null;
    while (true)
    {
      return localResponsePackage;
      try
      {
        UniPacket localUniPacket = new UniPacket();
        localUniPacket.decode(paramArrayOfByte);
        localResponsePackage = (ResponsePackage)localUniPacket.get("detail");
        c.c("RQDUploadImp.decode2ResponsePackage() end");
      }
      catch (Throwable localThrowable)
      {
        localThrowable.printStackTrace();
        c.b("decode response failed,return null!");
        c.c("RQDUploadImp.decode2ResponsePackage() end");
        localResponsePackage = null;
      }
      finally
      {
        c.c("RQDUploadImp.decode2ResponsePackage() end");
      }
    }
  }

  // ERROR //
  private static byte[] a(java.lang.String paramString1, byte[] paramArrayOfByte, java.lang.String paramString2, int paramInt1, int paramInt2, java.lang.String paramString3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 6
    //   3: ldc 86
    //   5: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   8: new 88	org/apache/http/params/BasicHttpParams
    //   11: dup
    //   12: invokespecial 89	org/apache/http/params/BasicHttpParams:<init>	()V
    //   15: astore 7
    //   17: aload 7
    //   19: sipush 30000
    //   22: invokestatic 95	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   25: aload 7
    //   27: sipush 30000
    //   30: invokestatic 98	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   33: new 100	org/apache/http/entity/ByteArrayEntity
    //   36: dup
    //   37: aload_1
    //   38: invokespecial 102	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   41: astore 8
    //   43: aload_2
    //   44: invokevirtual 108	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   47: ldc 110
    //   49: invokevirtual 114	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   52: ifeq +160 -> 212
    //   55: new 116	org/apache/http/client/methods/HttpPost
    //   58: dup
    //   59: aload_0
    //   60: invokespecial 118	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   63: astore 9
    //   65: aload 9
    //   67: checkcast 116	org/apache/http/client/methods/HttpPost
    //   70: aload 8
    //   72: invokevirtual 122	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   75: new 124	org/apache/http/impl/client/DefaultHttpClient
    //   78: dup
    //   79: aload 7
    //   81: invokespecial 127	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   84: astore 10
    //   86: aconst_null
    //   87: astore 6
    //   89: aload 5
    //   91: ifnull +76 -> 167
    //   94: aload 5
    //   96: invokevirtual 108	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   99: ldc 129
    //   101: invokevirtual 133	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   104: istore 26
    //   106: aconst_null
    //   107: astore 6
    //   109: iload 26
    //   111: ifeq +56 -> 167
    //   114: new 135	java/lang/StringBuilder
    //   117: dup
    //   118: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   121: ldc 138
    //   123: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   126: aload 5
    //   128: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   131: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   134: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   137: new 149	org/apache/http/HttpHost
    //   140: dup
    //   141: invokestatic 154	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   144: invokestatic 158	android/net/Proxy:getDefaultPort	()I
    //   147: invokespecial 161	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   150: astore 27
    //   152: aload 10
    //   154: invokevirtual 165	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   157: ldc 167
    //   159: aload 27
    //   161: invokeinterface 173 3 0
    //   166: pop
    //   167: aload 10
    //   169: aload 9
    //   171: invokevirtual 177	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   174: astore 17
    //   176: aload 17
    //   178: invokeinterface 183 1 0
    //   183: invokeinterface 188 1 0
    //   188: istore 18
    //   190: aconst_null
    //   191: astore 6
    //   193: iload 18
    //   195: sipush 200
    //   198: if_icmpeq +56 -> 254
    //   201: ldc 190
    //   203: invokestatic 79	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   206: aconst_null
    //   207: astore 13
    //   209: aload 13
    //   211: areturn
    //   212: new 192	org/apache/http/client/methods/HttpGet
    //   215: dup
    //   216: new 135	java/lang/StringBuilder
    //   219: dup
    //   220: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   223: aload_0
    //   224: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   227: ldc 194
    //   229: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   232: new 104	java/lang/String
    //   235: dup
    //   236: aload_1
    //   237: invokespecial 195	java/lang/String:<init>	([B)V
    //   240: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   243: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   246: invokespecial 196	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   249: astore 9
    //   251: goto -176 -> 75
    //   254: aload 17
    //   256: invokeinterface 200 1 0
    //   261: astore 19
    //   263: aconst_null
    //   264: astore 6
    //   266: aload 19
    //   268: ifnonnull +14 -> 282
    //   271: ldc 202
    //   273: invokestatic 79	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   276: aconst_null
    //   277: astore 13
    //   279: goto -70 -> 209
    //   282: ldc 204
    //   284: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   287: new 206	java/io/DataInputStream
    //   290: dup
    //   291: aload 19
    //   293: invokeinterface 212 1 0
    //   298: invokespecial 215	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   301: astore 20
    //   303: new 217	java/io/ByteArrayOutputStream
    //   306: dup
    //   307: invokespecial 218	java/io/ByteArrayOutputStream:<init>	()V
    //   310: astore 21
    //   312: aload 20
    //   314: invokevirtual 221	java/io/DataInputStream:read	()I
    //   317: istore 23
    //   319: iload 23
    //   321: iconst_m1
    //   322: if_icmpeq +57 -> 379
    //   325: aload 21
    //   327: iload 23
    //   329: invokevirtual 224	java/io/ByteArrayOutputStream:write	(I)V
    //   332: goto -20 -> 312
    //   335: astore 22
    //   337: aload 22
    //   339: astore 12
    //   341: aconst_null
    //   342: astore 13
    //   344: aload 20
    //   346: astore 6
    //   348: aload 12
    //   350: invokevirtual 225	java/lang/Exception:printStackTrace	()V
    //   353: aload 12
    //   355: invokevirtual 228	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   358: invokestatic 79	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   361: aload 6
    //   363: ifnull +8 -> 371
    //   366: aload 6
    //   368: invokevirtual 231	java/io/DataInputStream:close	()V
    //   371: ldc 233
    //   373: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   376: goto -167 -> 209
    //   379: aload 21
    //   381: invokevirtual 236	java/io/ByteArrayOutputStream:flush	()V
    //   384: aload 21
    //   386: invokevirtual 240	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   389: astore 24
    //   391: aload 24
    //   393: astore 13
    //   395: ldc 242
    //   397: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   400: aload 20
    //   402: invokevirtual 231	java/io/DataInputStream:close	()V
    //   405: goto -34 -> 371
    //   408: astore 25
    //   410: aload 25
    //   412: invokevirtual 243	java/io/IOException:printStackTrace	()V
    //   415: aload 25
    //   417: invokevirtual 244	java/io/IOException:getMessage	()Ljava/lang/String;
    //   420: invokestatic 79	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   423: goto -52 -> 371
    //   426: astore 16
    //   428: aload 16
    //   430: invokevirtual 243	java/io/IOException:printStackTrace	()V
    //   433: aload 16
    //   435: invokevirtual 244	java/io/IOException:getMessage	()Ljava/lang/String;
    //   438: invokestatic 79	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   441: goto -70 -> 371
    //   444: astore 14
    //   446: aload 6
    //   448: ifnull +8 -> 456
    //   451: aload 6
    //   453: invokevirtual 231	java/io/DataInputStream:close	()V
    //   456: aload 14
    //   458: athrow
    //   459: astore 15
    //   461: aload 15
    //   463: invokevirtual 243	java/io/IOException:printStackTrace	()V
    //   466: aload 15
    //   468: invokevirtual 244	java/io/IOException:getMessage	()Ljava/lang/String;
    //   471: invokestatic 79	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   474: goto -18 -> 456
    //   477: astore 14
    //   479: aload 20
    //   481: astore 6
    //   483: goto -37 -> 446
    //   486: astore 11
    //   488: aload 11
    //   490: astore 12
    //   492: aconst_null
    //   493: astore 13
    //   495: aconst_null
    //   496: astore 6
    //   498: goto -150 -> 348
    //   501: astore 12
    //   503: aload 20
    //   505: astore 6
    //   507: goto -159 -> 348
    //
    // Exception table:
    //   from	to	target	type
    //   303	332	335	java/lang/Exception
    //   379	391	335	java/lang/Exception
    //   400	405	408	java/io/IOException
    //   366	371	426	java/io/IOException
    //   75	206	444	finally
    //   254	303	444	finally
    //   348	361	444	finally
    //   451	456	459	java/io/IOException
    //   303	332	477	finally
    //   379	391	477	finally
    //   395	400	477	finally
    //   75	206	486	java/lang/Exception
    //   254	303	486	java/lang/Exception
    //   395	400	501	java/lang/Exception
  }

  private void b(byte[] paramArrayOfByte)
  {
    c.c("RQDUploadImp.onUploadStrategy() start");
    if ((paramArrayOfByte == null) || (this.a == null));
    while (true)
    {
      return;
      UploadStrategyPackage localUploadStrategyPackage = new UploadStrategyPackage();
      localUploadStrategyPackage.readFrom(new JceInputStream(paramArrayOfByte));
      c.c(localUploadStrategyPackage.toString());
      com.tencent.feedback.common.b.b localb = com.tencent.feedback.common.b.b.a(this.a);
      synchronized (localb.c(this.a))
      {
        ???.b(localUploadStrategyPackage.b());
        ???.b(false);
        ???.a(false);
        ???.c(false);
        Map localMap = localUploadStrategyPackage.e();
        if (localMap != null)
        {
          Boolean localBoolean1 = (Boolean)localMap.get(Integer.valueOf(1));
          Boolean localBoolean2 = (Boolean)localMap.get(Integer.valueOf(2));
          Boolean localBoolean3 = (Boolean)localMap.get(Integer.valueOf(3));
          if (localBoolean1 != null)
            ???.c(localBoolean1.booleanValue());
          if (localBoolean2 != null)
            ???.a(localBoolean2.booleanValue());
          if (localBoolean3 != null)
            ???.b(localBoolean3.booleanValue());
        }
        ???.a(localUploadStrategyPackage.a());
        ???.a(localUploadStrategyPackage.d());
        ???.c(localUploadStrategyPackage.c());
        localb.a(this.a, ???);
        c.a("update succeed!");
        c.c("RQDUploadImp.onUploadStrategy() end");
      }
    }
  }

  private void c(byte[] paramArrayOfByte)
  {
    c.c("RQDUploadImp.onSecurityStrategy() start");
    if ((paramArrayOfByte == null) || (this.a == null));
    while (true)
    {
      return;
      SecurityStrategyPackage localSecurityStrategyPackage = new SecurityStrategyPackage();
      localSecurityStrategyPackage.readFrom(new JceInputStream(paramArrayOfByte));
      c.c(localSecurityStrategyPackage.toString());
      com.tencent.feedback.common.b.b localb = com.tencent.feedback.common.b.b.a(this.a);
      synchronized (localb.b(this.a))
      {
        ???.a(localSecurityStrategyPackage.b());
        ???.a(localSecurityStrategyPackage.a());
        ???.b(localSecurityStrategyPackage.c());
        localb.a(this.a, ???);
        c.a("update succeed!");
        c.c("RQDUploadImp.onSecurityStrategy() end");
      }
    }
  }

  // ERROR //
  public final void doUpload(AbstractUploadDatas paramAbstractUploadDatas)
  {
    // Byte code:
    //   0: ldc_w 346
    //   3: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   6: aload_1
    //   7: ifnonnull +4 -> 11
    //   10: return
    //   11: aload_1
    //   12: iconst_1
    //   13: invokevirtual 352	com/tencent/feedback/upload/AbstractUploadDatas:getUploadDatas	(Z)[B
    //   16: astore 4
    //   18: aload 4
    //   20: ifnonnull +18 -> 38
    //   23: ldc_w 354
    //   26: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   29: ldc_w 356
    //   32: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   35: goto -25 -> 10
    //   38: new 358	common/RequestPackage
    //   41: dup
    //   42: invokespecial 359	common/RequestPackage:<init>	()V
    //   45: astore 5
    //   47: aload 5
    //   49: new 251	com/qq/taf/jce/JceInputStream
    //   52: dup
    //   53: aload 4
    //   55: invokespecial 252	com/qq/taf/jce/JceInputStream:<init>	([B)V
    //   58: invokevirtual 360	common/RequestPackage:readFrom	(Lcom/qq/taf/jce/JceInputStream;)V
    //   61: aload_0
    //   62: getfield 20	com/tencent/feedback/upload/b:a	Landroid/content/Context;
    //   65: invokestatic 262	com/tencent/feedback/common/b/b:a	(Landroid/content/Context;)Lcom/tencent/feedback/common/b/b;
    //   68: aload_0
    //   69: getfield 20	com/tencent/feedback/upload/b:a	Landroid/content/Context;
    //   72: invokevirtual 265	com/tencent/feedback/common/b/b:c	(Landroid/content/Context;)Lcom/tencent/feedback/common/b/f;
    //   75: astore 6
    //   77: aload 6
    //   79: monitorenter
    //   80: aload 6
    //   82: invokevirtual 361	com/tencent/feedback/common/b/f:d	()Ljava/lang/String;
    //   85: astore 8
    //   87: aload 6
    //   89: monitorexit
    //   90: aload_0
    //   91: getfield 20	com/tencent/feedback/upload/b:a	Landroid/content/Context;
    //   94: invokestatic 366	com/tencent/feedback/a/a:a	(Landroid/content/Context;)Ljava/lang/String;
    //   97: astore 9
    //   99: aload 5
    //   101: invokestatic 368	com/tencent/feedback/upload/b:a	(Lcommon/RequestPackage;)Lcom/qq/jce/wup/UniPacket;
    //   104: astore 10
    //   106: aconst_null
    //   107: astore 11
    //   109: iconst_0
    //   110: istore 12
    //   112: iload 12
    //   114: iconst_2
    //   115: if_icmpge +58 -> 173
    //   118: aload 8
    //   120: aload 10
    //   122: invokevirtual 371	com/qq/jce/wup/UniPacket:encode	()[B
    //   125: ldc 110
    //   127: sipush 30000
    //   130: sipush 30000
    //   133: aload 9
    //   135: invokestatic 373	com/tencent/feedback/upload/b:a	(Ljava/lang/String;[BLjava/lang/String;IILjava/lang/String;)[B
    //   138: astore 11
    //   140: aload 11
    //   142: ifnonnull +31 -> 173
    //   145: iinc 12 1
    //   148: goto -36 -> 112
    //   151: astore 7
    //   153: aload 6
    //   155: monitorexit
    //   156: aload 7
    //   158: athrow
    //   159: astore_3
    //   160: aload_3
    //   161: invokevirtual 57	java/lang/Throwable:printStackTrace	()V
    //   164: ldc_w 356
    //   167: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   170: goto -160 -> 10
    //   173: aload 11
    //   175: astore 13
    //   177: aload 13
    //   179: invokestatic 375	com/tencent/feedback/upload/b:a	([B)Lcommon/ResponsePackage;
    //   182: astore 14
    //   184: ldc_w 377
    //   187: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   190: aload 14
    //   192: ifnull +314 -> 506
    //   195: new 135	java/lang/StringBuilder
    //   198: dup
    //   199: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   202: ldc_w 379
    //   205: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   208: aload 14
    //   210: invokevirtual 380	common/ResponsePackage:toString	()Ljava/lang/String;
    //   213: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   216: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   219: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   222: aload 14
    //   224: invokevirtual 383	common/ResponsePackage:a	()B
    //   227: ifne +288 -> 515
    //   230: iconst_1
    //   231: istore 15
    //   233: aload_1
    //   234: iload 15
    //   236: invokevirtual 386	com/tencent/feedback/upload/AbstractUploadDatas:done	(Z)V
    //   239: ldc_w 388
    //   242: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   245: invokestatic 394	com/tencent/feedback/common/CommonInfo:getCommonInfo	()Lcom/tencent/feedback/common/CommonInfo;
    //   248: astore 16
    //   250: aload 16
    //   252: ifnull +254 -> 506
    //   255: aload 16
    //   257: monitorenter
    //   258: aload 16
    //   260: aload 14
    //   262: invokevirtual 395	common/ResponsePackage:d	()Ljava/lang/String;
    //   265: invokevirtual 398	com/tencent/feedback/common/CommonInfo:setGateIP	(Ljava/lang/String;)V
    //   268: aload 14
    //   270: invokevirtual 402	common/ResponsePackage:g	()J
    //   273: ldc2_w 403
    //   276: lcmp
    //   277: iflt +34 -> 311
    //   280: ldc_w 406
    //   283: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   286: new 408	java/util/Date
    //   289: dup
    //   290: invokespecial 409	java/util/Date:<init>	()V
    //   293: astore 25
    //   295: aload 16
    //   297: aload 14
    //   299: invokevirtual 402	common/ResponsePackage:g	()J
    //   302: aload 25
    //   304: invokevirtual 412	java/util/Date:getTime	()J
    //   307: lsub
    //   308: invokevirtual 416	com/tencent/feedback/common/CommonInfo:setServerTimeGap	(J)V
    //   311: new 135	java/lang/StringBuilder
    //   314: dup
    //   315: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   318: ldc_w 418
    //   321: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   324: aload 16
    //   326: invokevirtual 421	com/tencent/feedback/common/CommonInfo:getGateIP	()Ljava/lang/String;
    //   329: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   332: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   335: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   338: new 135	java/lang/StringBuilder
    //   341: dup
    //   342: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   345: ldc_w 423
    //   348: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   351: aload 16
    //   353: invokevirtual 426	com/tencent/feedback/common/CommonInfo:getServerTimeGap	()J
    //   356: invokevirtual 429	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   359: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   362: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   365: aload 16
    //   367: monitorexit
    //   368: aload 14
    //   370: invokevirtual 431	common/ResponsePackage:c	()[B
    //   373: astore 18
    //   375: aload 18
    //   377: ifnull +129 -> 506
    //   380: aload 14
    //   382: invokevirtual 433	common/ResponsePackage:e	()B
    //   385: istore 19
    //   387: aload 18
    //   389: aload 14
    //   391: invokevirtual 436	common/ResponsePackage:f	()B
    //   394: iload 19
    //   396: ldc_w 438
    //   399: invokestatic 443	com/tencent/feedback/common/f:b	([BIILjava/lang/String;)[B
    //   402: astore 20
    //   404: aload 20
    //   406: ifnull +94 -> 500
    //   409: aload 14
    //   411: invokevirtual 444	common/ResponsePackage:b	()I
    //   414: istore 21
    //   416: iload 21
    //   418: tableswitch	default:+58 -> 476, 0:+297->715, 1:+58->476, 2:+58->476, 3:+58->476, 4:+58->476, 5:+58->476, 6:+58->476, 7:+246->664, 8:+282->700, 9:+261->679, 10:+120->538
    //   477: nop
    //   478: i2d
    //   479: dup
    //   480: invokespecial 136	java/lang/StringBuilder:<init>	()V
    //   483: ldc_w 446
    //   486: invokevirtual 142	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   489: iload 21
    //   491: invokevirtual 449	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   494: invokevirtual 145	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   497: invokestatic 79	com/tencent/feedback/common/c:b	(Ljava/lang/String;)V
    //   500: ldc_w 451
    //   503: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   506: ldc_w 356
    //   509: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   512: goto -502 -> 10
    //   515: iconst_0
    //   516: istore 15
    //   518: goto -285 -> 233
    //   521: astore 17
    //   523: aload 16
    //   525: monitorexit
    //   526: aload 17
    //   528: athrow
    //   529: astore_2
    //   530: ldc_w 356
    //   533: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   536: aload_2
    //   537: athrow
    //   538: ldc_w 453
    //   541: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   544: ldc_w 455
    //   547: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   550: aload 20
    //   552: ifnull -52 -> 500
    //   555: aload_0
    //   556: getfield 20	com/tencent/feedback/upload/b:a	Landroid/content/Context;
    //   559: ifnull -59 -> 500
    //   562: new 457	common/MixPackage
    //   565: dup
    //   566: invokespecial 458	common/MixPackage:<init>	()V
    //   569: astore 22
    //   571: aload 22
    //   573: new 251	com/qq/taf/jce/JceInputStream
    //   576: dup
    //   577: aload 20
    //   579: invokespecial 252	com/qq/taf/jce/JceInputStream:<init>	([B)V
    //   582: invokevirtual 459	common/MixPackage:readFrom	(Lcom/qq/taf/jce/JceInputStream;)V
    //   585: aload 22
    //   587: invokevirtual 461	common/MixPackage:a	()Ljava/util/Map;
    //   590: astore 23
    //   592: aload_0
    //   593: aload 23
    //   595: bipush 7
    //   597: invokestatic 288	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   600: invokeinterface 293 2 0
    //   605: checkcast 463	[B
    //   608: invokespecial 465	com/tencent/feedback/upload/b:c	([B)V
    //   611: aload_0
    //   612: aload 23
    //   614: bipush 8
    //   616: invokestatic 288	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   619: invokeinterface 293 2 0
    //   624: checkcast 463	[B
    //   627: invokespecial 467	com/tencent/feedback/upload/b:b	([B)V
    //   630: aload 23
    //   632: bipush 9
    //   634: invokestatic 288	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   637: invokeinterface 293 2 0
    //   642: pop
    //   643: ldc_w 469
    //   646: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   649: ldc_w 471
    //   652: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   655: ldc_w 473
    //   658: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   661: goto -161 -> 500
    //   664: ldc_w 475
    //   667: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   670: aload_0
    //   671: aload 20
    //   673: invokespecial 465	com/tencent/feedback/upload/b:c	([B)V
    //   676: goto -176 -> 500
    //   679: ldc_w 477
    //   682: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   685: ldc_w 469
    //   688: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   691: ldc_w 471
    //   694: invokestatic 31	com/tencent/feedback/common/c:c	(Ljava/lang/String;)V
    //   697: goto -197 -> 500
    //   700: ldc_w 479
    //   703: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   706: aload_0
    //   707: aload 20
    //   709: invokespecial 467	com/tencent/feedback/upload/b:b	([B)V
    //   712: goto -212 -> 500
    //   715: ldc_w 481
    //   718: invokestatic 147	com/tencent/feedback/common/c:a	(Ljava/lang/String;)V
    //   721: goto -221 -> 500
    //
    // Exception table:
    //   from	to	target	type
    //   80	90	151	finally
    //   11	29	159	java/lang/Throwable
    //   38	80	159	java/lang/Throwable
    //   90	159	159	java/lang/Throwable
    //   177	258	159	java/lang/Throwable
    //   368	506	159	java/lang/Throwable
    //   523	529	159	java/lang/Throwable
    //   538	721	159	java/lang/Throwable
    //   258	368	521	finally
    //   11	29	529	finally
    //   38	80	529	finally
    //   90	159	529	finally
    //   160	164	529	finally
    //   177	258	529	finally
    //   368	506	529	finally
    //   523	529	529	finally
    //   538	721	529	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar\
 * Qualified Name:     com.tencent.feedback.upload.b
 * JD-Core Version:    0.6.2
 */