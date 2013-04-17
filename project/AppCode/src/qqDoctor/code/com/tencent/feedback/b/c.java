package com.tencent.feedback.b;

import android.content.Context;
import com.tencent.feedback.c.i;
import com.tencent.feedback.common.CommonInfo;
import com.tencent.feedback.common.ELog;
import com.tencent.feedback.common.d;
import com.tencent.feedback.common.f.c;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class c
  implements Runnable
{
  private Context a;
  private List b;

  public c(Context paramContext, List paramList)
  {
    this.a = paramContext;
    this.b = paramList;
  }

  // ERROR //
  private static byte[] a(String paramString1, byte[] paramArrayOfByte, String paramString2, int paramInt, String paramString3)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 5
    //   3: new 26	org/apache/http/params/BasicHttpParams
    //   6: dup
    //   7: invokespecial 27	org/apache/http/params/BasicHttpParams:<init>	()V
    //   10: astore 6
    //   12: aload 6
    //   14: ldc 28
    //   16: invokestatic 34	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   19: aload 6
    //   21: ldc 28
    //   23: invokestatic 37	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   26: new 39	org/apache/http/entity/ByteArrayEntity
    //   29: dup
    //   30: aload_1
    //   31: invokespecial 42	org/apache/http/entity/ByteArrayEntity:<init>	([B)V
    //   34: astore 7
    //   36: aload_2
    //   37: invokevirtual 48	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   40: ldc 50
    //   42: invokevirtual 54	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   45: ifeq +165 -> 210
    //   48: new 56	org/apache/http/client/methods/HttpPost
    //   51: dup
    //   52: aload_0
    //   53: invokespecial 59	org/apache/http/client/methods/HttpPost:<init>	(Ljava/lang/String;)V
    //   56: astore 8
    //   58: aload 8
    //   60: checkcast 56	org/apache/http/client/methods/HttpPost
    //   63: aload 7
    //   65: invokevirtual 63	org/apache/http/client/methods/HttpPost:setEntity	(Lorg/apache/http/HttpEntity;)V
    //   68: new 65	org/apache/http/impl/client/DefaultHttpClient
    //   71: dup
    //   72: aload 6
    //   74: invokespecial 68	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   77: astore 9
    //   79: aconst_null
    //   80: astore 5
    //   82: aload 4
    //   84: ifnull +76 -> 160
    //   87: aload 4
    //   89: invokevirtual 48	java/lang/String:toLowerCase	()Ljava/lang/String;
    //   92: ldc 70
    //   94: invokevirtual 74	java/lang/String:contains	(Ljava/lang/CharSequence;)Z
    //   97: istore 25
    //   99: aconst_null
    //   100: astore 5
    //   102: iload 25
    //   104: ifeq +56 -> 160
    //   107: new 76	java/lang/StringBuilder
    //   110: dup
    //   111: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   114: ldc 79
    //   116: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   119: aload 4
    //   121: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   124: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   127: invokestatic 91	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   130: new 93	org/apache/http/HttpHost
    //   133: dup
    //   134: invokestatic 98	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   137: invokestatic 102	android/net/Proxy:getDefaultPort	()I
    //   140: invokespecial 105	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   143: astore 26
    //   145: aload 9
    //   147: invokevirtual 109	org/apache/http/impl/client/DefaultHttpClient:getParams	()Lorg/apache/http/params/HttpParams;
    //   150: ldc 111
    //   152: aload 26
    //   154: invokeinterface 117 3 0
    //   159: pop
    //   160: ldc 119
    //   162: invokestatic 91	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   165: aload 9
    //   167: aload 8
    //   169: invokevirtual 123	org/apache/http/impl/client/DefaultHttpClient:execute	(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    //   172: astore 16
    //   174: aload 16
    //   176: invokeinterface 129 1 0
    //   181: invokeinterface 134 1 0
    //   186: istore 17
    //   188: aconst_null
    //   189: astore 5
    //   191: iload 17
    //   193: sipush 200
    //   196: if_icmpeq +56 -> 252
    //   199: ldc 136
    //   201: invokestatic 139	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   204: aconst_null
    //   205: astore 12
    //   207: aload 12
    //   209: areturn
    //   210: new 141	org/apache/http/client/methods/HttpGet
    //   213: dup
    //   214: new 76	java/lang/StringBuilder
    //   217: dup
    //   218: invokespecial 77	java/lang/StringBuilder:<init>	()V
    //   221: aload_0
    //   222: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   225: ldc 143
    //   227: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   230: new 44	java/lang/String
    //   233: dup
    //   234: aload_1
    //   235: invokespecial 144	java/lang/String:<init>	([B)V
    //   238: invokevirtual 83	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   241: invokevirtual 86	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   244: invokespecial 145	org/apache/http/client/methods/HttpGet:<init>	(Ljava/lang/String;)V
    //   247: astore 8
    //   249: goto -181 -> 68
    //   252: aload 16
    //   254: invokeinterface 149 1 0
    //   259: astore 18
    //   261: aconst_null
    //   262: astore 5
    //   264: aload 18
    //   266: ifnonnull +14 -> 280
    //   269: ldc 151
    //   271: invokestatic 139	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   274: aconst_null
    //   275: astore 12
    //   277: goto -70 -> 207
    //   280: ldc 153
    //   282: invokestatic 91	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   285: new 155	java/io/DataInputStream
    //   288: dup
    //   289: aload 18
    //   291: invokeinterface 161 1 0
    //   296: invokespecial 164	java/io/DataInputStream:<init>	(Ljava/io/InputStream;)V
    //   299: astore 19
    //   301: new 166	java/io/ByteArrayOutputStream
    //   304: dup
    //   305: invokespecial 167	java/io/ByteArrayOutputStream:<init>	()V
    //   308: astore 20
    //   310: aload 19
    //   312: invokevirtual 170	java/io/DataInputStream:read	()I
    //   315: istore 22
    //   317: iload 22
    //   319: iconst_m1
    //   320: if_icmpeq +70 -> 390
    //   323: aload 20
    //   325: iload 22
    //   327: invokevirtual 174	java/io/ByteArrayOutputStream:write	(I)V
    //   330: goto -20 -> 310
    //   333: astore 21
    //   335: aload 21
    //   337: astore 11
    //   339: aconst_null
    //   340: astore 12
    //   342: aload 19
    //   344: astore 5
    //   346: aload 11
    //   348: invokevirtual 177	java/lang/Throwable:printStackTrace	()V
    //   351: aload 11
    //   353: invokevirtual 180	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   356: invokestatic 139	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   359: aload 5
    //   361: ifnull -154 -> 207
    //   364: aload 5
    //   366: invokevirtual 183	java/io/DataInputStream:close	()V
    //   369: goto -162 -> 207
    //   372: astore 15
    //   374: aload 15
    //   376: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   379: aload 15
    //   381: invokevirtual 185	java/io/IOException:getMessage	()Ljava/lang/String;
    //   384: invokestatic 139	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   387: goto -180 -> 207
    //   390: aload 20
    //   392: invokevirtual 188	java/io/ByteArrayOutputStream:flush	()V
    //   395: aload 20
    //   397: invokevirtual 192	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   400: astore 23
    //   402: aload 23
    //   404: astore 12
    //   406: ldc 194
    //   408: invokestatic 91	com/tencent/feedback/common/ELog:info	(Ljava/lang/String;)V
    //   411: aload 19
    //   413: invokevirtual 183	java/io/DataInputStream:close	()V
    //   416: goto -209 -> 207
    //   419: astore 24
    //   421: aload 24
    //   423: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   426: aload 24
    //   428: invokevirtual 185	java/io/IOException:getMessage	()Ljava/lang/String;
    //   431: invokestatic 139	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   434: goto -227 -> 207
    //   437: astore 13
    //   439: aload 5
    //   441: ifnull +8 -> 449
    //   444: aload 5
    //   446: invokevirtual 183	java/io/DataInputStream:close	()V
    //   449: aload 13
    //   451: athrow
    //   452: astore 14
    //   454: aload 14
    //   456: invokevirtual 184	java/io/IOException:printStackTrace	()V
    //   459: aload 14
    //   461: invokevirtual 185	java/io/IOException:getMessage	()Ljava/lang/String;
    //   464: invokestatic 139	com/tencent/feedback/common/ELog:error	(Ljava/lang/String;)V
    //   467: goto -18 -> 449
    //   470: astore 13
    //   472: aload 19
    //   474: astore 5
    //   476: goto -37 -> 439
    //   479: astore 10
    //   481: aload 10
    //   483: astore 11
    //   485: aconst_null
    //   486: astore 12
    //   488: aconst_null
    //   489: astore 5
    //   491: goto -145 -> 346
    //   494: astore 11
    //   496: aload 19
    //   498: astore 5
    //   500: goto -154 -> 346
    //
    // Exception table:
    //   from	to	target	type
    //   301	330	333	java/lang/Throwable
    //   390	402	333	java/lang/Throwable
    //   364	369	372	java/io/IOException
    //   411	416	419	java/io/IOException
    //   68	204	437	finally
    //   252	301	437	finally
    //   346	359	437	finally
    //   444	449	452	java/io/IOException
    //   301	330	470	finally
    //   390	402	470	finally
    //   406	411	470	finally
    //   68	204	479	java/lang/Throwable
    //   252	301	479	java/lang/Throwable
    //   406	411	494	java/lang/Throwable
  }

  public final void run()
  {
    if ((this.a == null) || (this.b == null));
    CommonInfo localCommonInfo;
    while (true)
    {
      return;
      localCommonInfo = CommonInfo.getCommonInfo();
      if (localCommonInfo != null)
        break;
      ELog.error("common info null");
    }
    while (true)
    {
      long l1;
      String str2;
      HashMap localHashMap;
      b localb;
      a.b localb1;
      try
      {
        l1 = localCommonInfo.getServerTimeGap();
        String str1 = localCommonInfo.getGateIP();
        str2 = d.b(this.a);
        localHashMap = new HashMap();
        Iterator localIterator = this.b.iterator();
        if (!localIterator.hasNext())
          break label810;
        localb = (b)localIterator.next();
        ELog.info("check " + localb.a());
        ELog.debug("address:" + localb.c());
        localHashMap.clear();
        localHashMap.put("srcip", str1);
        if (!"PG".equals(localb.a()))
          break label733;
        if (str2.toLowerCase().contains("wap"))
        {
          ELog.info("using wap request");
          localb1 = a.a(localb.c(), str2);
          if (localb1 == null)
            localb1 = new a.b();
          if (localb1.a + localb1.b + localb1.c + localb1.d + localb1.e <= 0L)
          {
            ELog.info("elapse bean is not avilable!try apach");
            long l7 = System.currentTimeMillis();
            if (a(localb.c(), " ".getBytes(), "post", 60000, str2) != null)
            {
              localb1.e = (System.currentTimeMillis() - l7);
              ELog.info("get a total time" + localb1.e);
            }
          }
          i locali2 = new i();
          locali2.b(localb.c());
          long l5 = new Date().getTime();
          ELog.info("loc time:" + l5);
          long l6 = l5 + l1;
          ELog.info("to stime:" + l6);
          locali2.b(l6);
          locali2.a("PG");
          localHashMap.put("apn", str2);
          localHashMap.put("tcptime", "" + localb1.b);
          localHashMap.put("dnsserver", "unknown");
          localHashMap.put("targetip", localb1.f);
          localHashMap.put("dnstime", "" + localb1.a);
          localHashMap.put("requestsendtime", "" + localb1.c);
          localHashMap.put("responserecvreadtime", "" + localb1.e);
          localHashMap.put("netwaittime", "" + localb1.d);
          locali2.a(localHashMap);
          locali1 = locali2;
          if (locali1 == null)
            continue;
          ELog.info("insert record type " + localb.a());
          if (com.tencent.feedback.c.a.a(this.a, locali1))
            continue;
          ELog.info("insert record fail!");
        }
      }
      finally
      {
      }
      continue;
      label733: boolean bool = "IP".equals(localb.a());
      i locali1 = null;
      if (bool)
      {
        String str3 = localb.c().trim();
        String[] arrayOfString = str3.split(":");
        if ((arrayOfString == null) || (arrayOfString.length != 2))
        {
          ELog.error("ip dest wrong " + str3);
          label810: f.c.a(this.a, -1L, new Date().getTime());
          break;
        }
        long l2 = a.a(arrayOfString[0], Integer.parseInt(arrayOfString[1]));
        locali1 = new i();
        locali1.b(localb.c());
        long l3 = new Date().getTime();
        ELog.info("loc time:" + l3);
        long l4 = l3 + l1;
        ELog.info("to stime:" + l4);
        locali1.b(l4);
        locali1.a("IP");
        localHashMap.put("apn", str2);
        localHashMap.put("elapse", "" + l2);
        locali1.a(localHashMap);
      }
    }
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     com.tencent.feedback.b.c
 * JD-Core Version:    0.6.2
 */