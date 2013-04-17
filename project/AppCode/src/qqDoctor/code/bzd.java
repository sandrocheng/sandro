import QQPIM.RspTemplate;
import QQPIM.UrlCheckResponse;
import android.content.Context;
import com.tencent.tmsecure.common.BaseManager;
import com.tencent.tmsecure.common.ManagerCreator;
import com.tencent.tmsecure.module.wupsession.WupSessionManager;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicReference;

public final class bzd extends BaseManager
{
  public Context a;
  public ConcurrentHashMap<Long, UrlCheckResponse> b;
  public LinkedHashMap<Long, UrlCheckResponse> c;
  public long d;

  // ERROR //
  public static int a(String paramString, bzd.a parama)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: iconst_0
    //   3: istore_3
    //   4: new 27	org/apache/http/params/BasicHttpParams
    //   7: dup
    //   8: invokespecial 28	org/apache/http/params/BasicHttpParams:<init>	()V
    //   11: astore 4
    //   13: aload 4
    //   15: sipush 10000
    //   18: invokestatic 34	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   21: aload 4
    //   23: sipush 20000
    //   26: invokestatic 37	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   29: aload 4
    //   31: sipush 4096
    //   34: invokestatic 40	org/apache/http/params/HttpConnectionParams:setSocketBufferSize	(Lorg/apache/http/params/HttpParams;I)V
    //   37: aload 4
    //   39: iconst_1
    //   40: invokestatic 46	org/apache/http/client/params/HttpClientParams:setRedirecting	(Lorg/apache/http/params/HttpParams;Z)V
    //   43: new 48	org/apache/http/impl/client/DefaultHttpClient
    //   46: dup
    //   47: aload 4
    //   49: invokespecial 51	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   52: astore 5
    //   54: invokestatic 57	com/tencent/tmsecure/utils/NetworkUtil:getNetworkType	()LQQPIM/ConnectType;
    //   57: getstatic 63	QQPIM/ConnectType:CT_GPRS_WAP	LQQPIM/ConnectType;
    //   60: if_acmpne +35 -> 95
    //   63: new 65	org/apache/http/HttpHost
    //   66: dup
    //   67: invokestatic 71	android/net/Proxy:getDefaultHost	()Ljava/lang/String;
    //   70: invokestatic 75	android/net/Proxy:getDefaultPort	()I
    //   73: invokespecial 78	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   76: astore 6
    //   78: aload 5
    //   80: invokeinterface 84 1 0
    //   85: ldc 86
    //   87: aload 6
    //   89: invokeinterface 92 3 0
    //   94: pop
    //   95: new 94	org/apache/http/client/methods/HttpGet
    //   98: dup
    //   99: invokespecial 95	org/apache/http/client/methods/HttpGet:<init>	()V
    //   102: astore 8
    //   104: aload 8
    //   106: new 97	java/net/URI
    //   109: dup
    //   110: aload_0
    //   111: invokespecial 100	java/net/URI:<init>	(Ljava/lang/String;)V
    //   114: invokevirtual 104	org/apache/http/client/methods/HttpGet:setURI	(Ljava/net/URI;)V
    //   117: aload 5
    //   119: aload 8
    //   121: invokeinterface 108 2 0
    //   126: astore 25
    //   128: aload 25
    //   130: invokeinterface 114 1 0
    //   135: invokeinterface 119 1 0
    //   140: pop
    //   141: aload 25
    //   143: invokeinterface 123 1 0
    //   148: astore 27
    //   150: aload_1
    //   151: aload 27
    //   153: invokeinterface 129 1 0
    //   158: l2i
    //   159: putfield 134	bzd$a:b	I
    //   162: aload 27
    //   164: invokeinterface 138 1 0
    //   169: astore 28
    //   171: aload 28
    //   173: astore 10
    //   175: sipush 1024
    //   178: newarray byte
    //   180: astore 32
    //   182: new 140	java/io/ByteArrayOutputStream
    //   185: dup
    //   186: invokespecial 141	java/io/ByteArrayOutputStream:<init>	()V
    //   189: astore 33
    //   191: iconst_0
    //   192: istore 34
    //   194: iload 34
    //   196: sipush 2048
    //   199: if_icmpge +18 -> 217
    //   202: aload 10
    //   204: aload 32
    //   206: invokevirtual 147	java/io/InputStream:read	([B)I
    //   209: istore 40
    //   211: iload 40
    //   213: iconst_m1
    //   214: if_icmpne +44 -> 258
    //   217: aload_1
    //   218: aload 33
    //   220: invokevirtual 151	java/io/ByteArrayOutputStream:toByteArray	()[B
    //   223: invokestatic 156	btk:b	([B)Ljava/lang/String;
    //   226: putfield 159	bzd$a:a	Ljava/lang/String;
    //   229: aload 10
    //   231: ifnull +8 -> 239
    //   234: aload 10
    //   236: invokevirtual 162	java/io/InputStream:close	()V
    //   239: aload 33
    //   241: invokevirtual 163	java/io/ByteArrayOutputStream:close	()V
    //   244: aload 5
    //   246: invokeinterface 167 1 0
    //   251: invokeinterface 172 1 0
    //   256: iload_3
    //   257: ireturn
    //   258: iload 34
    //   260: iload 40
    //   262: iadd
    //   263: sipush 2048
    //   266: if_icmpgt +23 -> 289
    //   269: aload 33
    //   271: aload 32
    //   273: iconst_0
    //   274: iload 40
    //   276: invokevirtual 176	java/io/ByteArrayOutputStream:write	([BII)V
    //   279: iload 40
    //   281: iload 34
    //   283: iadd
    //   284: istore 34
    //   286: goto -92 -> 194
    //   289: sipush 2048
    //   292: iload 34
    //   294: isub
    //   295: istore 40
    //   297: goto -28 -> 269
    //   300: astore 21
    //   302: aload 21
    //   304: astore 22
    //   306: aconst_null
    //   307: astore 10
    //   309: sipush -3053
    //   312: istore_3
    //   313: aload 22
    //   315: invokevirtual 179	java/net/URISyntaxException:printStackTrace	()V
    //   318: aload 10
    //   320: ifnull +8 -> 328
    //   323: aload 10
    //   325: invokevirtual 162	java/io/InputStream:close	()V
    //   328: aload_2
    //   329: ifnull +7 -> 336
    //   332: aload_2
    //   333: invokevirtual 163	java/io/ByteArrayOutputStream:close	()V
    //   336: aload 5
    //   338: invokeinterface 167 1 0
    //   343: invokeinterface 172 1 0
    //   348: goto -92 -> 256
    //   351: astore 24
    //   353: aload 24
    //   355: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   358: goto -30 -> 328
    //   361: astore 23
    //   363: aload 23
    //   365: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   368: goto -32 -> 336
    //   371: astore 17
    //   373: aload 17
    //   375: astore 18
    //   377: aconst_null
    //   378: astore 10
    //   380: sipush -3051
    //   383: istore_3
    //   384: aload 18
    //   386: invokevirtual 181	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   389: aload 10
    //   391: ifnull +8 -> 399
    //   394: aload 10
    //   396: invokevirtual 162	java/io/InputStream:close	()V
    //   399: aload_2
    //   400: ifnull +7 -> 407
    //   403: aload_2
    //   404: invokevirtual 163	java/io/ByteArrayOutputStream:close	()V
    //   407: aload 5
    //   409: invokeinterface 167 1 0
    //   414: invokeinterface 172 1 0
    //   419: goto -163 -> 256
    //   422: astore 20
    //   424: aload 20
    //   426: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   429: goto -30 -> 399
    //   432: astore 19
    //   434: aload 19
    //   436: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   439: goto -32 -> 407
    //   442: astore 13
    //   444: aload 13
    //   446: astore 14
    //   448: aconst_null
    //   449: astore 10
    //   451: sipush -3056
    //   454: istore_3
    //   455: aload 14
    //   457: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   460: aload 10
    //   462: ifnull +8 -> 470
    //   465: aload 10
    //   467: invokevirtual 162	java/io/InputStream:close	()V
    //   470: aload_2
    //   471: ifnull +7 -> 478
    //   474: aload_2
    //   475: invokevirtual 163	java/io/ByteArrayOutputStream:close	()V
    //   478: aload 5
    //   480: invokeinterface 167 1 0
    //   485: invokeinterface 172 1 0
    //   490: goto -234 -> 256
    //   493: astore 16
    //   495: aload 16
    //   497: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   500: goto -30 -> 470
    //   503: astore 15
    //   505: aload 15
    //   507: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   510: goto -32 -> 478
    //   513: astore 9
    //   515: aconst_null
    //   516: astore 10
    //   518: aload 10
    //   520: ifnull +8 -> 528
    //   523: aload 10
    //   525: invokevirtual 162	java/io/InputStream:close	()V
    //   528: aload_2
    //   529: ifnull +7 -> 536
    //   532: aload_2
    //   533: invokevirtual 163	java/io/ByteArrayOutputStream:close	()V
    //   536: aload 5
    //   538: invokeinterface 167 1 0
    //   543: invokeinterface 172 1 0
    //   548: aload 9
    //   550: athrow
    //   551: astore 12
    //   553: aload 12
    //   555: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   558: goto -30 -> 528
    //   561: astore 11
    //   563: aload 11
    //   565: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   568: goto -32 -> 536
    //   571: astore 39
    //   573: aload 39
    //   575: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   578: goto -339 -> 239
    //   581: astore 38
    //   583: aload 38
    //   585: invokevirtual 180	java/io/IOException:printStackTrace	()V
    //   588: goto -344 -> 244
    //   591: astore 9
    //   593: goto -75 -> 518
    //   596: astore 9
    //   598: aload 33
    //   600: astore_2
    //   601: goto -83 -> 518
    //   604: astore 31
    //   606: aload 31
    //   608: astore 14
    //   610: aconst_null
    //   611: astore_2
    //   612: goto -161 -> 451
    //   615: astore 37
    //   617: aload 33
    //   619: astore_2
    //   620: aload 37
    //   622: astore 14
    //   624: goto -173 -> 451
    //   627: astore 30
    //   629: aload 30
    //   631: astore 18
    //   633: aconst_null
    //   634: astore_2
    //   635: goto -255 -> 380
    //   638: astore 36
    //   640: aload 33
    //   642: astore_2
    //   643: aload 36
    //   645: astore 18
    //   647: goto -267 -> 380
    //   650: astore 29
    //   652: aload 29
    //   654: astore 22
    //   656: aconst_null
    //   657: astore_2
    //   658: goto -349 -> 309
    //   661: astore 35
    //   663: aload 33
    //   665: astore_2
    //   666: aload 35
    //   668: astore 22
    //   670: goto -361 -> 309
    //
    // Exception table:
    //   from	to	target	type
    //   104	171	300	java/net/URISyntaxException
    //   323	328	351	java/io/IOException
    //   332	336	361	java/io/IOException
    //   104	171	371	org/apache/http/client/ClientProtocolException
    //   394	399	422	java/io/IOException
    //   403	407	432	java/io/IOException
    //   104	171	442	java/io/IOException
    //   465	470	493	java/io/IOException
    //   474	478	503	java/io/IOException
    //   104	171	513	finally
    //   523	528	551	java/io/IOException
    //   532	536	561	java/io/IOException
    //   234	239	571	java/io/IOException
    //   239	244	581	java/io/IOException
    //   175	191	591	finally
    //   313	318	591	finally
    //   384	389	591	finally
    //   455	460	591	finally
    //   202	229	596	finally
    //   269	279	596	finally
    //   175	191	604	java/io/IOException
    //   202	229	615	java/io/IOException
    //   269	279	615	java/io/IOException
    //   175	191	627	org/apache/http/client/ClientProtocolException
    //   202	229	638	org/apache/http/client/ClientProtocolException
    //   269	279	638	org/apache/http/client/ClientProtocolException
    //   175	191	650	java/net/URISyntaxException
    //   202	229	661	java/net/URISyntaxException
    //   269	279	661	java/net/URISyntaxException
  }

  public final Map<String, UrlCheckResponse> a(List<String> paramList)
  {
    int i = 0;
    if ((paramList == null) || (paramList.size() == 0));
    HashMap localHashMap1;
    ArrayList localArrayList1;
    int k;
    int m;
    for (Object localObject = new HashMap(0); ; localObject = localHashMap1)
    {
      return localObject;
      int j = paramList.size();
      localHashMap1 = new HashMap(j);
      localArrayList1 = new ArrayList(1);
      k = 0;
      m = 0;
      if (k < j)
        break;
      if (localArrayList1.size() != 0)
        break label207;
    }
    String str1 = (String)paramList.get(k);
    a();
    Iterator localIterator1 = this.b.values().iterator();
    label115: int n;
    if (!localIterator1.hasNext())
    {
      n = m;
      label129: if (n == 0)
        break label190;
    }
    for (int i1 = 0; ; i1 = n)
    {
      k++;
      m = i1;
      break;
      UrlCheckResponse localUrlCheckResponse1 = (UrlCheckResponse)localIterator1.next();
      if (!str1.equalsIgnoreCase(localUrlCheckResponse1.getUrl()))
        break label115;
      localHashMap1.put(str1, localUrlCheckResponse1);
      n = 1;
      break label129;
      label190: localArrayList1.add(str1);
    }
    label207: AtomicReference localAtomicReference = new AtomicReference();
    int i2 = localArrayList1.size();
    ((WupSessionManager)ManagerCreator.getManager(WupSessionManager.class)).checkUrlEx(localArrayList1, localAtomicReference);
    HashMap localHashMap2 = new HashMap(i2);
    Iterator localIterator2 = localArrayList1.iterator();
    ArrayList localArrayList2;
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        localArrayList1.clear();
        RspTemplate localRspTemplate = (RspTemplate)localAtomicReference.get();
        if (localRspTemplate != null)
        {
          localArrayList2 = localRspTemplate.getRspTemp();
          if ((localArrayList2 != null) && (localArrayList2.size() != 0))
            break label368;
        }
        localHashMap1.putAll(localHashMap2);
        localObject = localHashMap1;
        break;
      }
      String str2 = (String)localIterator2.next();
      localHashMap2.put(str2, new UrlCheckResponse(str2, -1, 0, 0, ""));
    }
    label368: int i3 = localArrayList2.size();
    while (true)
    {
      if (i >= i3)
      {
        localObject = localHashMap1;
        break;
      }
      UrlCheckResponse localUrlCheckResponse2 = (UrlCheckResponse)localArrayList2.get(i);
      localHashMap2.put(localUrlCheckResponse2.url, localUrlCheckResponse2);
      long l = System.currentTimeMillis();
      this.b.put(Long.valueOf(l), localUrlCheckResponse2);
      this.c.put(Long.valueOf(l), localUrlCheckResponse2);
      if (this.d == 0L)
        this.d = l;
      i++;
    }
  }

  public final void a()
  {
    long l1 = System.currentTimeMillis();
    if ((this.d == 0L) || (l1 - this.d < 21600000L))
      return;
    Iterator localIterator1 = this.c.keySet().iterator();
    ArrayList localArrayList = new ArrayList();
    label49: label58: Iterator localIterator2;
    if (!localIterator1.hasNext())
      localIterator2 = localArrayList.iterator();
    while (true)
    {
      if (!localIterator2.hasNext())
      {
        if (this.b.size() != 0)
          break;
        this.d = 0L;
        break;
        long l2 = ((Long)localIterator1.next()).longValue();
        this.d = l2;
        if (l1 - l2 < 21600000L)
          break label58;
        localIterator1.remove();
        localArrayList.add(Long.valueOf(l2));
        break label49;
      }
      Long localLong = (Long)localIterator2.next();
      this.b.remove(localLong);
    }
  }

  protected final void finalize()
    throws Throwable
  {
    super.finalize();
  }

  public final int getSingletonType()
  {
    return 0;
  }

  public final void onCreate(Context paramContext)
  {
    this.a = paramContext;
    try
    {
      this.b = new ConcurrentHashMap();
      this.c = new LinkedHashMap();
      return;
    }
    catch (IOException localIOException)
    {
      while (true)
        localIOException.printStackTrace();
    }
  }

  public final class a
  {
    public String a;
    public int b;
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bzd
 * JD-Core Version:    0.6.2
 */