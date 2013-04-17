import QQPIM.ConnectType;
import android.content.Context;
import android.net.Proxy;
import android.os.Environment;
import android.os.Looper;
import com.tencent.tmsecure.exception.NetworkOnMainThreadException;
import com.tencent.tmsecure.utils.NetworkUtil;
import java.io.File;
import java.net.URI;
import java.net.URISyntaxException;
import org.apache.http.client.methods.HttpGet;

public final class bth extends btf
{
  public String f = null;
  public String g = null;
  public int h = 0;
  private Context i;
  private HttpGet j = null;
  private String k = null;
  private String l = null;
  private boolean m = false;
  private long n = 0L;
  private long o = 0L;

  public bth(Context paramContext)
  {
    if ((!NetworkUtil.canNetworkOnMainThread()) && (Thread.currentThread().getId() == Looper.getMainLooper().getThread().getId()))
      throw new NetworkOnMainThreadException();
    this.i = paramContext;
    this.m = "mounted".equals(Environment.getExternalStorageState());
    if (this.m)
    {
      this.k = "/sdcard/qqsecure";
      this.f = "/sdcard/qqsecure";
      File localFile = new File(this.k);
      if (!localFile.exists())
        localFile.mkdir();
    }
    while (true)
    {
      this.j = new HttpGet();
      if (NetworkUtil.getNetworkType() == ConnectType.CT_GPRS_WAP)
      {
        String str = Proxy.getDefaultHost();
        int i1 = Proxy.getDefaultPort();
        this.c = str;
        this.d = i1;
        this.b = true;
      }
      return;
      this.k = paramContext.getCacheDir().getAbsolutePath();
      this.f = paramContext.getFilesDir().getAbsolutePath();
    }
  }

  // ERROR //
  private int a()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_1
    //   2: sipush -7000
    //   5: istore_2
    //   6: new 152	java/lang/StringBuilder
    //   9: dup
    //   10: aload_0
    //   11: getfield 29	bth:k	Ljava/lang/String;
    //   14: invokestatic 156	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   17: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   20: getstatic 160	java/io/File:separator	Ljava/lang/String;
    //   23: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   26: aload_0
    //   27: getfield 33	bth:l	Ljava/lang/String;
    //   30: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   33: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   36: pop
    //   37: new 152	java/lang/StringBuilder
    //   40: dup
    //   41: aload_0
    //   42: getfield 31	bth:f	Ljava/lang/String;
    //   45: invokestatic 156	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   48: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   51: getstatic 160	java/io/File:separator	Ljava/lang/String;
    //   54: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   57: aload_0
    //   58: getfield 35	bth:g	Ljava/lang/String;
    //   61: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   67: pop
    //   68: new 91	java/io/File
    //   71: dup
    //   72: new 152	java/lang/StringBuilder
    //   75: dup
    //   76: aload_0
    //   77: getfield 29	bth:k	Ljava/lang/String;
    //   80: invokestatic 156	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   83: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   86: getstatic 160	java/io/File:separator	Ljava/lang/String;
    //   89: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   92: aload_0
    //   93: getfield 33	bth:l	Ljava/lang/String;
    //   96: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   99: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   102: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   105: astore 5
    //   107: aload 5
    //   109: invokevirtual 97	java/io/File:exists	()Z
    //   112: ifeq +367 -> 479
    //   115: aload_0
    //   116: getfield 37	bth:h	I
    //   119: iconst_1
    //   120: if_icmpne +116 -> 236
    //   123: aload_0
    //   124: getfield 73	bth:i	Landroid/content/Context;
    //   127: invokevirtual 143	android/content/Context:getFilesDir	()Ljava/io/File;
    //   130: invokevirtual 140	java/io/File:getAbsolutePath	()Ljava/lang/String;
    //   133: aload_0
    //   134: getfield 31	bth:f	Ljava/lang/String;
    //   137: invokevirtual 87	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   140: ifeq +96 -> 236
    //   143: aload_0
    //   144: getfield 73	bth:i	Landroid/content/Context;
    //   147: aload_0
    //   148: getfield 35	bth:g	Ljava/lang/String;
    //   151: iconst_1
    //   152: invokevirtual 171	android/content/Context:openFileOutput	(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    //   155: astore 37
    //   157: aload 37
    //   159: astore 7
    //   161: new 173	java/io/FileInputStream
    //   164: dup
    //   165: aload 5
    //   167: invokespecial 176	java/io/FileInputStream:<init>	(Ljava/io/File;)V
    //   170: astore 27
    //   172: sipush 1024
    //   175: newarray byte
    //   177: astore 34
    //   179: aload 27
    //   181: aload 34
    //   183: invokevirtual 180	java/io/FileInputStream:read	([B)I
    //   186: istore 35
    //   188: iconst_0
    //   189: istore 26
    //   191: iload 35
    //   193: iconst_m1
    //   194: if_icmpne +260 -> 454
    //   197: aload 27
    //   199: ifnull +8 -> 207
    //   202: aload 27
    //   204: invokevirtual 183	java/io/FileInputStream:close	()V
    //   207: aload 7
    //   209: ifnull +8 -> 217
    //   212: aload 7
    //   214: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   217: aload 5
    //   219: invokevirtual 97	java/io/File:exists	()Z
    //   222: ifeq +9 -> 231
    //   225: aload 5
    //   227: invokevirtual 189	java/io/File:delete	()Z
    //   230: pop
    //   231: iload 26
    //   233: istore_2
    //   234: iload_2
    //   235: ireturn
    //   236: new 91	java/io/File
    //   239: dup
    //   240: new 152	java/lang/StringBuilder
    //   243: dup
    //   244: aload_0
    //   245: getfield 31	bth:f	Ljava/lang/String;
    //   248: invokestatic 156	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   251: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   254: getstatic 160	java/io/File:separator	Ljava/lang/String;
    //   257: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   260: aload_0
    //   261: getfield 35	bth:g	Ljava/lang/String;
    //   264: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   267: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   270: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   273: astore 31
    //   275: aload 31
    //   277: invokevirtual 97	java/io/File:exists	()Z
    //   280: ifeq +81 -> 361
    //   283: aload 31
    //   285: invokevirtual 189	java/io/File:delete	()Z
    //   288: pop
    //   289: new 185	java/io/FileOutputStream
    //   292: dup
    //   293: aload 31
    //   295: invokespecial 190	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   298: astore 7
    //   300: goto -139 -> 161
    //   303: astore 20
    //   305: aconst_null
    //   306: astore 21
    //   308: aload 20
    //   310: invokevirtual 193	java/io/FileNotFoundException:printStackTrace	()V
    //   313: aload_1
    //   314: ifnull +521 -> 835
    //   317: aload_1
    //   318: invokevirtual 183	java/io/FileInputStream:close	()V
    //   321: sipush -7001
    //   324: istore 22
    //   326: aload 21
    //   328: ifnull +501 -> 829
    //   331: aload 21
    //   333: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   336: iload 22
    //   338: istore_2
    //   339: aload 5
    //   341: ifnull -107 -> 234
    //   344: aload 5
    //   346: invokevirtual 97	java/io/File:exists	()Z
    //   349: ifeq -115 -> 234
    //   352: aload 5
    //   354: invokevirtual 189	java/io/File:delete	()Z
    //   357: pop
    //   358: goto -124 -> 234
    //   361: new 91	java/io/File
    //   364: dup
    //   365: aload_0
    //   366: getfield 31	bth:f	Ljava/lang/String;
    //   369: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   372: invokevirtual 196	java/io/File:mkdirs	()Z
    //   375: pop
    //   376: aload 31
    //   378: invokevirtual 199	java/io/File:createNewFile	()Z
    //   381: pop
    //   382: new 185	java/io/FileOutputStream
    //   385: dup
    //   386: aload 31
    //   388: invokespecial 190	java/io/FileOutputStream:<init>	(Ljava/io/File;)V
    //   391: astore 7
    //   393: goto -232 -> 161
    //   396: astore 15
    //   398: aconst_null
    //   399: astore 7
    //   401: aload 15
    //   403: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   406: aload_1
    //   407: ifnull +414 -> 821
    //   410: aload_1
    //   411: invokevirtual 183	java/io/FileInputStream:close	()V
    //   414: sipush -7056
    //   417: istore 16
    //   419: aload 7
    //   421: ifnull +394 -> 815
    //   424: aload 7
    //   426: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   429: iload 16
    //   431: istore_2
    //   432: aload 5
    //   434: ifnull -200 -> 234
    //   437: aload 5
    //   439: invokevirtual 97	java/io/File:exists	()Z
    //   442: ifeq -208 -> 234
    //   445: aload 5
    //   447: invokevirtual 189	java/io/File:delete	()Z
    //   450: pop
    //   451: goto -217 -> 234
    //   454: aload 7
    //   456: aload 34
    //   458: iconst_0
    //   459: iload 35
    //   461: invokevirtual 204	java/io/FileOutputStream:write	([BII)V
    //   464: goto -285 -> 179
    //   467: astore 20
    //   469: aload 27
    //   471: astore_1
    //   472: aload 7
    //   474: astore 21
    //   476: goto -168 -> 308
    //   479: sipush -7001
    //   482: istore 26
    //   484: aconst_null
    //   485: astore 27
    //   487: aconst_null
    //   488: astore 7
    //   490: goto -293 -> 197
    //   493: astore 25
    //   495: aload 25
    //   497: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   500: iload_2
    //   501: istore 22
    //   503: goto -177 -> 326
    //   506: astore 24
    //   508: aload 24
    //   510: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   513: goto -174 -> 339
    //   516: astore 19
    //   518: aload 19
    //   520: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   523: iload_2
    //   524: istore 16
    //   526: goto -107 -> 419
    //   529: astore 18
    //   531: aload 18
    //   533: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   536: goto -104 -> 432
    //   539: astore 6
    //   541: aconst_null
    //   542: astore 5
    //   544: aconst_null
    //   545: astore 7
    //   547: aload 6
    //   549: invokevirtual 205	java/lang/Exception:printStackTrace	()V
    //   552: aload_1
    //   553: ifnull +7 -> 560
    //   556: aload_1
    //   557: invokevirtual 183	java/io/FileInputStream:close	()V
    //   560: aload 7
    //   562: ifnull +8 -> 570
    //   565: aload 7
    //   567: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   570: aload 5
    //   572: ifnull -338 -> 234
    //   575: aload 5
    //   577: invokevirtual 97	java/io/File:exists	()Z
    //   580: ifeq -346 -> 234
    //   583: aload 5
    //   585: invokevirtual 189	java/io/File:delete	()Z
    //   588: pop
    //   589: goto -355 -> 234
    //   592: astore 14
    //   594: aload 14
    //   596: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   599: goto -39 -> 560
    //   602: astore 13
    //   604: aload 13
    //   606: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   609: goto -39 -> 570
    //   612: astore 8
    //   614: aconst_null
    //   615: astore 5
    //   617: aconst_null
    //   618: astore 7
    //   620: aload_1
    //   621: ifnull +7 -> 628
    //   624: aload_1
    //   625: invokevirtual 183	java/io/FileInputStream:close	()V
    //   628: aload 7
    //   630: ifnull +8 -> 638
    //   633: aload 7
    //   635: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   638: aload 5
    //   640: ifnull +17 -> 657
    //   643: aload 5
    //   645: invokevirtual 97	java/io/File:exists	()Z
    //   648: ifeq +9 -> 657
    //   651: aload 5
    //   653: invokevirtual 189	java/io/File:delete	()Z
    //   656: pop
    //   657: aload 8
    //   659: athrow
    //   660: astore 11
    //   662: aload 11
    //   664: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   667: goto -39 -> 628
    //   670: astore 10
    //   672: aload 10
    //   674: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   677: goto -39 -> 638
    //   680: astore 30
    //   682: aload 30
    //   684: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   687: iload_2
    //   688: istore 26
    //   690: goto -483 -> 207
    //   693: astore 29
    //   695: aload 29
    //   697: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   700: iload_2
    //   701: istore 26
    //   703: goto -486 -> 217
    //   706: astore 8
    //   708: aconst_null
    //   709: astore_1
    //   710: aconst_null
    //   711: astore 7
    //   713: goto -93 -> 620
    //   716: astore 8
    //   718: goto -98 -> 620
    //   721: astore 8
    //   723: aload 27
    //   725: astore_1
    //   726: goto -106 -> 620
    //   729: astore 8
    //   731: aload 21
    //   733: astore 7
    //   735: goto -115 -> 620
    //   738: astore 6
    //   740: aconst_null
    //   741: astore_1
    //   742: aconst_null
    //   743: astore 7
    //   745: goto -198 -> 547
    //   748: astore 6
    //   750: aconst_null
    //   751: astore_1
    //   752: goto -205 -> 547
    //   755: astore 6
    //   757: aload 27
    //   759: astore_1
    //   760: goto -213 -> 547
    //   763: astore 15
    //   765: aconst_null
    //   766: astore 5
    //   768: aconst_null
    //   769: astore_1
    //   770: aconst_null
    //   771: astore 7
    //   773: goto -372 -> 401
    //   776: astore 15
    //   778: aconst_null
    //   779: astore_1
    //   780: goto -379 -> 401
    //   783: astore 15
    //   785: aload 27
    //   787: astore_1
    //   788: goto -387 -> 401
    //   791: astore 20
    //   793: aconst_null
    //   794: astore 5
    //   796: aconst_null
    //   797: astore_1
    //   798: aconst_null
    //   799: astore 21
    //   801: goto -493 -> 308
    //   804: astore 20
    //   806: aload 7
    //   808: astore 21
    //   810: aconst_null
    //   811: astore_1
    //   812: goto -504 -> 308
    //   815: iload 16
    //   817: istore_2
    //   818: goto -386 -> 432
    //   821: sipush -7056
    //   824: istore 16
    //   826: goto -407 -> 419
    //   829: iload 22
    //   831: istore_2
    //   832: goto -493 -> 339
    //   835: sipush -7001
    //   838: istore 22
    //   840: goto -514 -> 326
    //
    // Exception table:
    //   from	to	target	type
    //   107	157	303	java/io/FileNotFoundException
    //   236	300	303	java/io/FileNotFoundException
    //   361	393	303	java/io/FileNotFoundException
    //   107	157	396	java/io/IOException
    //   236	300	396	java/io/IOException
    //   361	393	396	java/io/IOException
    //   172	188	467	java/io/FileNotFoundException
    //   454	464	467	java/io/FileNotFoundException
    //   317	321	493	java/io/IOException
    //   331	336	506	java/io/IOException
    //   410	414	516	java/io/IOException
    //   424	429	529	java/io/IOException
    //   68	107	539	java/lang/Exception
    //   556	560	592	java/io/IOException
    //   565	570	602	java/io/IOException
    //   68	107	612	finally
    //   624	628	660	java/io/IOException
    //   633	638	670	java/io/IOException
    //   202	207	680	java/io/IOException
    //   212	217	693	java/io/IOException
    //   107	157	706	finally
    //   236	300	706	finally
    //   361	393	706	finally
    //   161	172	716	finally
    //   401	406	716	finally
    //   547	552	716	finally
    //   172	188	721	finally
    //   454	464	721	finally
    //   308	313	729	finally
    //   107	157	738	java/lang/Exception
    //   236	300	738	java/lang/Exception
    //   361	393	738	java/lang/Exception
    //   161	172	748	java/lang/Exception
    //   172	188	755	java/lang/Exception
    //   454	464	755	java/lang/Exception
    //   68	107	763	java/io/IOException
    //   161	172	776	java/io/IOException
    //   172	188	783	java/io/IOException
    //   454	464	783	java/io/IOException
    //   68	107	791	java/io/FileNotFoundException
    //   161	172	804	java/io/FileNotFoundException
  }

  private int a(String paramString)
  {
    try
    {
      URI localURI1 = new URI(paramString);
      localURI2 = localURI1;
      i1 = -1000;
      if (localURI2 != null)
      {
        this.j.setURI(localURI2);
        i1 = 0;
      }
      return i1;
    }
    catch (URISyntaxException localURISyntaxException)
    {
      while (true)
      {
        new StringBuilder("url error: ").append(localURISyntaxException.getMessage()).toString();
        localURISyntaxException.printStackTrace();
        int i1 = -1053;
        URI localURI2 = null;
      }
    }
  }

  // ERROR //
  private int a(org.apache.http.HttpEntity paramHttpEntity, android.os.Bundle paramBundle, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore 4
    //   3: sipush 1024
    //   6: newarray byte
    //   8: astore 5
    //   10: aload_0
    //   11: aload_1
    //   12: invokeinterface 231 1 0
    //   17: aload_0
    //   18: getfield 43	bth:o	J
    //   21: ladd
    //   22: putfield 41	bth:n	J
    //   25: aload_2
    //   26: ldc 233
    //   28: aload_0
    //   29: getfield 41	bth:n	J
    //   32: invokevirtual 239	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   35: aload_2
    //   36: ldc 241
    //   38: aload_0
    //   39: getfield 43	bth:o	J
    //   42: invokevirtual 239	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   45: new 91	java/io/File
    //   48: dup
    //   49: new 152	java/lang/StringBuilder
    //   52: dup
    //   53: aload_0
    //   54: getfield 29	bth:k	Ljava/lang/String;
    //   57: invokestatic 156	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   60: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   63: getstatic 160	java/io/File:separator	Ljava/lang/String;
    //   66: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: aload_0
    //   70: getfield 33	bth:l	Ljava/lang/String;
    //   73: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   76: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   79: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   82: astore 29
    //   84: aload 29
    //   86: invokevirtual 97	java/io/File:exists	()Z
    //   89: ifeq +81 -> 170
    //   92: aload 29
    //   94: invokevirtual 189	java/io/File:delete	()Z
    //   97: pop
    //   98: new 185	java/io/FileOutputStream
    //   101: dup
    //   102: aload 29
    //   104: iconst_1
    //   105: invokespecial 244	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   108: astore 7
    //   110: iload_3
    //   111: ifeq +148 -> 259
    //   114: new 246	java/util/zip/InflaterInputStream
    //   117: dup
    //   118: aload_1
    //   119: invokeinterface 250 1 0
    //   124: invokespecial 253	java/util/zip/InflaterInputStream:<init>	(Ljava/io/InputStream;)V
    //   127: astore 33
    //   129: aload 33
    //   131: aload 5
    //   133: invokevirtual 256	java/io/InputStream:read	([B)I
    //   136: istore 40
    //   138: iload 40
    //   140: iconst_m1
    //   141: if_icmpne +133 -> 274
    //   144: aload 7
    //   146: invokevirtual 259	java/io/FileOutputStream:flush	()V
    //   149: aload 33
    //   151: ifnull +702 -> 853
    //   154: aload 33
    //   156: invokevirtual 260	java/io/InputStream:close	()V
    //   159: iconst_0
    //   160: istore 12
    //   162: aload 7
    //   164: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   167: iload 12
    //   169: ireturn
    //   170: new 91	java/io/File
    //   173: dup
    //   174: aload_0
    //   175: getfield 29	bth:k	Ljava/lang/String;
    //   178: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   181: invokevirtual 196	java/io/File:mkdirs	()Z
    //   184: pop
    //   185: aload 29
    //   187: invokevirtual 199	java/io/File:createNewFile	()Z
    //   190: pop
    //   191: new 185	java/io/FileOutputStream
    //   194: dup
    //   195: aload 29
    //   197: iconst_0
    //   198: invokespecial 244	java/io/FileOutputStream:<init>	(Ljava/io/File;Z)V
    //   201: astore 7
    //   203: goto -93 -> 110
    //   206: astore 26
    //   208: aconst_null
    //   209: astore 7
    //   211: aload 26
    //   213: invokevirtual 193	java/io/FileNotFoundException:printStackTrace	()V
    //   216: aload 4
    //   218: ifnull +673 -> 891
    //   221: aload 4
    //   223: invokevirtual 260	java/io/InputStream:close	()V
    //   226: sipush -7001
    //   229: istore 12
    //   231: aload 7
    //   233: ifnull -66 -> 167
    //   236: aload 7
    //   238: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   241: goto -74 -> 167
    //   244: astore 27
    //   246: aload 27
    //   248: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   251: sipush -7000
    //   254: istore 12
    //   256: goto -89 -> 167
    //   259: aload_1
    //   260: invokeinterface 250 1 0
    //   265: astore 32
    //   267: aload 32
    //   269: astore 33
    //   271: goto -142 -> 129
    //   274: aload_0
    //   275: aload_0
    //   276: getfield 43	bth:o	J
    //   279: iload 40
    //   281: i2l
    //   282: ladd
    //   283: putfield 43	bth:o	J
    //   286: aload_2
    //   287: ldc 241
    //   289: aload_0
    //   290: getfield 43	bth:o	J
    //   293: invokevirtual 239	android/os/Bundle:putLong	(Ljava/lang/String;J)V
    //   296: aload_0
    //   297: iconst_2
    //   298: aload_2
    //   299: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   302: aload 7
    //   304: aload 5
    //   306: iconst_0
    //   307: iload 40
    //   309: invokevirtual 204	java/io/FileOutputStream:write	([BII)V
    //   312: goto -183 -> 129
    //   315: astore 39
    //   317: aload 33
    //   319: astore 4
    //   321: aload 39
    //   323: astore 26
    //   325: goto -114 -> 211
    //   328: astore 28
    //   330: aload 28
    //   332: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   335: sipush -7000
    //   338: istore 12
    //   340: goto -109 -> 231
    //   343: astore 22
    //   345: aconst_null
    //   346: astore 7
    //   348: new 152	java/lang/StringBuilder
    //   351: dup
    //   352: ldc_w 265
    //   355: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   358: aload 22
    //   360: invokevirtual 266	java/net/SocketException:getMessage	()Ljava/lang/String;
    //   363: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   366: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: pop
    //   370: aload 22
    //   372: invokevirtual 267	java/net/SocketException:printStackTrace	()V
    //   375: aload 4
    //   377: ifnull +506 -> 883
    //   380: aload 4
    //   382: invokevirtual 260	java/io/InputStream:close	()V
    //   385: sipush -5054
    //   388: istore 12
    //   390: aload 7
    //   392: ifnull -225 -> 167
    //   395: aload 7
    //   397: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   400: goto -233 -> 167
    //   403: astore 24
    //   405: aload 24
    //   407: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   410: sipush -7000
    //   413: istore 12
    //   415: goto -248 -> 167
    //   418: astore 25
    //   420: aload 25
    //   422: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   425: sipush -7000
    //   428: istore 12
    //   430: goto -40 -> 390
    //   433: astore 18
    //   435: aconst_null
    //   436: astore 7
    //   438: new 152	java/lang/StringBuilder
    //   441: dup
    //   442: ldc_w 269
    //   445: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   448: aload 18
    //   450: invokevirtual 270	java/net/SocketTimeoutException:getMessage	()Ljava/lang/String;
    //   453: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   456: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   459: pop
    //   460: aload 18
    //   462: invokevirtual 271	java/net/SocketTimeoutException:printStackTrace	()V
    //   465: aload 4
    //   467: ifnull +408 -> 875
    //   470: aload 4
    //   472: invokevirtual 260	java/io/InputStream:close	()V
    //   475: sipush -5055
    //   478: istore 12
    //   480: aload 7
    //   482: ifnull -315 -> 167
    //   485: aload 7
    //   487: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   490: goto -323 -> 167
    //   493: astore 20
    //   495: aload 20
    //   497: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   500: sipush -7000
    //   503: istore 12
    //   505: goto -338 -> 167
    //   508: astore 21
    //   510: aload 21
    //   512: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   515: sipush -7000
    //   518: istore 12
    //   520: goto -40 -> 480
    //   523: astore 15
    //   525: aconst_null
    //   526: astore 7
    //   528: aload 15
    //   530: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   533: aload 4
    //   535: ifnull +332 -> 867
    //   538: aload 4
    //   540: invokevirtual 260	java/io/InputStream:close	()V
    //   543: sipush -5056
    //   546: istore 12
    //   548: aload 7
    //   550: ifnull -383 -> 167
    //   553: aload 7
    //   555: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   558: goto -391 -> 167
    //   561: astore 16
    //   563: aload 16
    //   565: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   568: sipush -7000
    //   571: istore 12
    //   573: goto -406 -> 167
    //   576: astore 17
    //   578: aload 17
    //   580: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   583: sipush -7000
    //   586: istore 12
    //   588: goto -40 -> 548
    //   591: astore 10
    //   593: aconst_null
    //   594: astore 7
    //   596: aload 10
    //   598: invokevirtual 272	java/lang/Exception:toString	()Ljava/lang/String;
    //   601: pop
    //   602: aload 10
    //   604: invokevirtual 205	java/lang/Exception:printStackTrace	()V
    //   607: aload 4
    //   609: ifnull +250 -> 859
    //   612: aload 4
    //   614: invokevirtual 260	java/io/InputStream:close	()V
    //   617: sipush -5000
    //   620: istore 12
    //   622: aload 7
    //   624: ifnull -457 -> 167
    //   627: aload 7
    //   629: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   632: goto -465 -> 167
    //   635: astore 13
    //   637: aload 13
    //   639: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   642: sipush -7000
    //   645: istore 12
    //   647: goto -480 -> 167
    //   650: astore 14
    //   652: aload 14
    //   654: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   657: sipush -7000
    //   660: istore 12
    //   662: goto -40 -> 622
    //   665: astore 6
    //   667: aconst_null
    //   668: astore 7
    //   670: aload 4
    //   672: ifnull +8 -> 680
    //   675: aload 4
    //   677: invokevirtual 260	java/io/InputStream:close	()V
    //   680: aload 7
    //   682: ifnull +8 -> 690
    //   685: aload 7
    //   687: invokevirtual 186	java/io/FileOutputStream:close	()V
    //   690: aload 6
    //   692: athrow
    //   693: astore 9
    //   695: aload 9
    //   697: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   700: goto -20 -> 680
    //   703: astore 8
    //   705: aload 8
    //   707: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   710: goto -20 -> 690
    //   713: astore 42
    //   715: aload 42
    //   717: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   720: sipush -7000
    //   723: istore 12
    //   725: goto -563 -> 162
    //   728: astore 41
    //   730: aload 41
    //   732: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   735: sipush -7000
    //   738: istore 12
    //   740: goto -573 -> 167
    //   743: astore 6
    //   745: goto -75 -> 670
    //   748: astore 38
    //   750: aload 33
    //   752: astore 4
    //   754: aload 38
    //   756: astore 6
    //   758: goto -88 -> 670
    //   761: astore 10
    //   763: aconst_null
    //   764: astore 4
    //   766: goto -170 -> 596
    //   769: astore 37
    //   771: aload 33
    //   773: astore 4
    //   775: aload 37
    //   777: astore 10
    //   779: goto -183 -> 596
    //   782: astore 15
    //   784: aconst_null
    //   785: astore 4
    //   787: goto -259 -> 528
    //   790: astore 36
    //   792: aload 33
    //   794: astore 4
    //   796: aload 36
    //   798: astore 15
    //   800: goto -272 -> 528
    //   803: astore 18
    //   805: aconst_null
    //   806: astore 4
    //   808: goto -370 -> 438
    //   811: astore 35
    //   813: aload 33
    //   815: astore 4
    //   817: aload 35
    //   819: astore 18
    //   821: goto -383 -> 438
    //   824: astore 22
    //   826: aconst_null
    //   827: astore 4
    //   829: goto -481 -> 348
    //   832: astore 34
    //   834: aload 33
    //   836: astore 4
    //   838: aload 34
    //   840: astore 22
    //   842: goto -494 -> 348
    //   845: astore 26
    //   847: aconst_null
    //   848: astore 4
    //   850: goto -639 -> 211
    //   853: iconst_0
    //   854: istore 12
    //   856: goto -694 -> 162
    //   859: sipush -5000
    //   862: istore 12
    //   864: goto -242 -> 622
    //   867: sipush -5056
    //   870: istore 12
    //   872: goto -324 -> 548
    //   875: sipush -5055
    //   878: istore 12
    //   880: goto -400 -> 480
    //   883: sipush -5054
    //   886: istore 12
    //   888: goto -498 -> 390
    //   891: sipush -7001
    //   894: istore 12
    //   896: goto -665 -> 231
    //
    // Exception table:
    //   from	to	target	type
    //   10	110	206	java/io/FileNotFoundException
    //   170	203	206	java/io/FileNotFoundException
    //   236	241	244	java/io/IOException
    //   129	149	315	java/io/FileNotFoundException
    //   274	312	315	java/io/FileNotFoundException
    //   221	226	328	java/io/IOException
    //   10	110	343	java/net/SocketException
    //   170	203	343	java/net/SocketException
    //   395	400	403	java/io/IOException
    //   380	385	418	java/io/IOException
    //   10	110	433	java/net/SocketTimeoutException
    //   170	203	433	java/net/SocketTimeoutException
    //   485	490	493	java/io/IOException
    //   470	475	508	java/io/IOException
    //   10	110	523	java/io/IOException
    //   170	203	523	java/io/IOException
    //   553	558	561	java/io/IOException
    //   538	543	576	java/io/IOException
    //   10	110	591	java/lang/Exception
    //   170	203	591	java/lang/Exception
    //   627	632	635	java/io/IOException
    //   612	617	650	java/io/IOException
    //   10	110	665	finally
    //   170	203	665	finally
    //   675	680	693	java/io/IOException
    //   685	690	703	java/io/IOException
    //   154	159	713	java/io/IOException
    //   162	167	728	java/io/IOException
    //   114	129	743	finally
    //   211	216	743	finally
    //   259	267	743	finally
    //   348	375	743	finally
    //   438	465	743	finally
    //   528	533	743	finally
    //   596	607	743	finally
    //   129	149	748	finally
    //   274	312	748	finally
    //   114	129	761	java/lang/Exception
    //   259	267	761	java/lang/Exception
    //   129	149	769	java/lang/Exception
    //   274	312	769	java/lang/Exception
    //   114	129	782	java/io/IOException
    //   259	267	782	java/io/IOException
    //   129	149	790	java/io/IOException
    //   274	312	790	java/io/IOException
    //   114	129	803	java/net/SocketTimeoutException
    //   259	267	803	java/net/SocketTimeoutException
    //   129	149	811	java/net/SocketTimeoutException
    //   274	312	811	java/net/SocketTimeoutException
    //   114	129	824	java/net/SocketException
    //   259	267	824	java/net/SocketException
    //   129	149	832	java/net/SocketException
    //   274	312	832	java/net/SocketException
    //   114	129	845	java/io/FileNotFoundException
    //   259	267	845	java/io/FileNotFoundException
  }

  // ERROR //
  public final void a(String paramString, boolean paramBoolean)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: new 235	android/os/Bundle
    //   5: dup
    //   6: invokespecial 276	android/os/Bundle:<init>	()V
    //   9: astore 4
    //   11: aload_0
    //   12: getfield 279	btf:a	Lorg/apache/http/params/HttpParams;
    //   15: ifnonnull +14 -> 29
    //   18: aload_0
    //   19: new 281	org/apache/http/params/BasicHttpParams
    //   22: dup
    //   23: invokespecial 282	org/apache/http/params/BasicHttpParams:<init>	()V
    //   26: putfield 279	btf:a	Lorg/apache/http/params/HttpParams;
    //   29: aload_0
    //   30: getfield 279	btf:a	Lorg/apache/http/params/HttpParams;
    //   33: sipush 10000
    //   36: invokestatic 288	org/apache/http/params/HttpConnectionParams:setConnectionTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   39: aload_0
    //   40: getfield 279	btf:a	Lorg/apache/http/params/HttpParams;
    //   43: sipush 20000
    //   46: invokestatic 291	org/apache/http/params/HttpConnectionParams:setSoTimeout	(Lorg/apache/http/params/HttpParams;I)V
    //   49: aload_0
    //   50: getfield 279	btf:a	Lorg/apache/http/params/HttpParams;
    //   53: sipush 4096
    //   56: invokestatic 294	org/apache/http/params/HttpConnectionParams:setSocketBufferSize	(Lorg/apache/http/params/HttpParams;I)V
    //   59: aload_0
    //   60: getfield 279	btf:a	Lorg/apache/http/params/HttpParams;
    //   63: iconst_1
    //   64: invokestatic 300	org/apache/http/client/params/HttpClientParams:setRedirecting	(Lorg/apache/http/params/HttpParams;Z)V
    //   67: new 302	org/apache/http/impl/client/DefaultHttpClient
    //   70: dup
    //   71: aload_0
    //   72: getfield 279	btf:a	Lorg/apache/http/params/HttpParams;
    //   75: invokespecial 305	org/apache/http/impl/client/DefaultHttpClient:<init>	(Lorg/apache/http/params/HttpParams;)V
    //   78: astore 6
    //   80: aload_0
    //   81: getfield 131	btf:b	Z
    //   84: ifeq +38 -> 122
    //   87: new 307	org/apache/http/HttpHost
    //   90: dup
    //   91: aload_0
    //   92: getfield 125	btf:c	Ljava/lang/String;
    //   95: aload_0
    //   96: getfield 128	btf:d	I
    //   99: invokespecial 310	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   102: astore 19
    //   104: aload 6
    //   106: invokeinterface 316 1 0
    //   111: ldc_w 318
    //   114: aload 19
    //   116: invokeinterface 324 3 0
    //   121: pop
    //   122: aload_0
    //   123: aload_1
    //   124: invokespecial 326	bth:a	(Ljava/lang/String;)I
    //   127: istore 21
    //   129: iload 21
    //   131: istore 7
    //   133: iload 7
    //   135: ifeq +43 -> 178
    //   138: aload 6
    //   140: ifnull +15 -> 155
    //   143: aload 6
    //   145: invokeinterface 330 1 0
    //   150: invokeinterface 335 1 0
    //   155: iload 7
    //   157: ifeq +20 -> 177
    //   160: aload 4
    //   162: ldc_w 337
    //   165: iload 7
    //   167: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   170: aload_0
    //   171: iconst_1
    //   172: aload 4
    //   174: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   177: return
    //   178: aload_0
    //   179: getfield 27	bth:j	Lorg/apache/http/client/methods/HttpGet;
    //   182: invokevirtual 344	org/apache/http/client/methods/HttpGet:getURI	()Ljava/net/URI;
    //   185: ifnull +251 -> 436
    //   188: aload_1
    //   189: invokestatic 349	btd:a	(Ljava/lang/String;)Ljava/lang/String;
    //   192: astore 22
    //   194: aload_0
    //   195: new 152	java/lang/StringBuilder
    //   198: dup
    //   199: aload 22
    //   201: invokestatic 156	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   204: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   207: ldc_w 351
    //   210: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   213: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   216: putfield 33	bth:l	Ljava/lang/String;
    //   219: aload_0
    //   220: getfield 35	bth:g	Ljava/lang/String;
    //   223: ifnonnull +9 -> 232
    //   226: aload_0
    //   227: aload 22
    //   229: putfield 35	bth:g	Ljava/lang/String;
    //   232: new 91	java/io/File
    //   235: dup
    //   236: new 152	java/lang/StringBuilder
    //   239: dup
    //   240: aload_0
    //   241: getfield 29	bth:k	Ljava/lang/String;
    //   244: invokestatic 156	java/lang/String:valueOf	(Ljava/lang/Object;)Ljava/lang/String;
    //   247: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   250: getstatic 160	java/io/File:separator	Ljava/lang/String;
    //   253: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   256: aload_0
    //   257: getfield 33	bth:l	Ljava/lang/String;
    //   260: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   263: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   266: invokespecial 94	java/io/File:<init>	(Ljava/lang/String;)V
    //   269: astore 23
    //   271: aload 23
    //   273: invokevirtual 97	java/io/File:exists	()Z
    //   276: ifeq +48 -> 324
    //   279: aload_0
    //   280: aload 23
    //   282: invokevirtual 354	java/io/File:length	()J
    //   285: putfield 43	bth:o	J
    //   288: aload_0
    //   289: getfield 27	bth:j	Lorg/apache/http/client/methods/HttpGet;
    //   292: ldc_w 356
    //   295: new 152	java/lang/StringBuilder
    //   298: dup
    //   299: ldc_w 358
    //   302: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   305: aload_0
    //   306: getfield 43	bth:o	J
    //   309: invokevirtual 361	java/lang/StringBuilder:append	(J)Ljava/lang/StringBuilder;
    //   312: ldc_w 363
    //   315: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   318: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   321: invokevirtual 367	org/apache/http/client/methods/HttpGet:setHeader	(Ljava/lang/String;Ljava/lang/String;)V
    //   324: aload 6
    //   326: aload_0
    //   327: getfield 27	bth:j	Lorg/apache/http/client/methods/HttpGet;
    //   330: invokeinterface 371 2 0
    //   335: astore 24
    //   337: aload 24
    //   339: invokeinterface 377 1 0
    //   344: invokeinterface 382 1 0
    //   349: istore 25
    //   351: new 152	java/lang/StringBuilder
    //   354: dup
    //   355: ldc_w 384
    //   358: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   361: iload 25
    //   363: invokevirtual 387	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   366: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   369: pop
    //   370: iload 25
    //   372: sipush 200
    //   375: if_icmpeq +69 -> 444
    //   378: iload 25
    //   380: sipush 206
    //   383: if_icmpeq +61 -> 444
    //   386: sipush -3000
    //   389: iload 25
    //   391: isub
    //   392: istore 30
    //   394: aload 6
    //   396: ifnull +15 -> 411
    //   399: aload 6
    //   401: invokeinterface 330 1 0
    //   406: invokeinterface 335 1 0
    //   411: iload 30
    //   413: ifeq -236 -> 177
    //   416: aload 4
    //   418: ldc_w 337
    //   421: iload 30
    //   423: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   426: aload_0
    //   427: iconst_1
    //   428: aload 4
    //   430: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   433: goto -256 -> 177
    //   436: sipush -3053
    //   439: istore 7
    //   441: goto -303 -> 138
    //   444: aload 24
    //   446: invokeinterface 391 1 0
    //   451: astore 27
    //   453: aload 27
    //   455: ifnull +65 -> 520
    //   458: aload_0
    //   459: aload 27
    //   461: aload 4
    //   463: iload_2
    //   464: invokespecial 393	bth:a	(Lorg/apache/http/HttpEntity;Landroid/os/Bundle;Z)I
    //   467: istore 28
    //   469: iload 28
    //   471: istore 7
    //   473: iload 7
    //   475: ifeq +83 -> 558
    //   478: aload 6
    //   480: ifnull +15 -> 495
    //   483: aload 6
    //   485: invokeinterface 330 1 0
    //   490: invokeinterface 335 1 0
    //   495: iload 7
    //   497: ifeq -320 -> 177
    //   500: aload 4
    //   502: ldc_w 337
    //   505: iload 7
    //   507: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   510: aload_0
    //   511: iconst_1
    //   512: aload 4
    //   514: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   517: goto -340 -> 177
    //   520: aload 6
    //   522: ifnull +15 -> 537
    //   525: aload 6
    //   527: invokeinterface 330 1 0
    //   532: invokeinterface 335 1 0
    //   537: aload 4
    //   539: ldc_w 337
    //   542: sipush -4000
    //   545: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   548: aload_0
    //   549: iconst_1
    //   550: aload 4
    //   552: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   555: goto -378 -> 177
    //   558: aload_0
    //   559: invokespecial 395	bth:a	()I
    //   562: istore 29
    //   564: iload 29
    //   566: ifeq +462 -> 1028
    //   569: aload 6
    //   571: ifnull +15 -> 586
    //   574: aload 6
    //   576: invokeinterface 330 1 0
    //   581: invokeinterface 335 1 0
    //   586: iload 29
    //   588: ifeq -411 -> 177
    //   591: aload 4
    //   593: ldc_w 337
    //   596: iload 29
    //   598: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   601: aload_0
    //   602: iconst_1
    //   603: aload 4
    //   605: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   608: goto -431 -> 177
    //   611: astore 16
    //   613: new 152	java/lang/StringBuilder
    //   616: dup
    //   617: ldc_w 397
    //   620: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   623: aload 16
    //   625: invokevirtual 398	org/apache/http/client/ClientProtocolException:getMessage	()Ljava/lang/String;
    //   628: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   631: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   634: pop
    //   635: aload 16
    //   637: invokevirtual 399	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   640: aload_3
    //   641: ifnull +14 -> 655
    //   644: aload_3
    //   645: invokeinterface 330 1 0
    //   650: invokeinterface 335 1 0
    //   655: aload 4
    //   657: ldc_w 337
    //   660: sipush -3051
    //   663: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   666: aload_0
    //   667: iconst_1
    //   668: aload 4
    //   670: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   673: goto -496 -> 177
    //   676: astore 14
    //   678: aconst_null
    //   679: astore 6
    //   681: sipush -3054
    //   684: istore 7
    //   686: new 152	java/lang/StringBuilder
    //   689: dup
    //   690: ldc_w 265
    //   693: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   696: aload 14
    //   698: invokevirtual 266	java/net/SocketException:getMessage	()Ljava/lang/String;
    //   701: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   704: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   707: pop
    //   708: aload 14
    //   710: invokevirtual 267	java/net/SocketException:printStackTrace	()V
    //   713: aload 6
    //   715: ifnull +15 -> 730
    //   718: aload 6
    //   720: invokeinterface 330 1 0
    //   725: invokeinterface 335 1 0
    //   730: aload 4
    //   732: ldc_w 337
    //   735: sipush -3054
    //   738: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   741: aload_0
    //   742: iconst_1
    //   743: aload 4
    //   745: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   748: goto -571 -> 177
    //   751: astore 12
    //   753: aconst_null
    //   754: astore 6
    //   756: sipush -3055
    //   759: istore 7
    //   761: new 152	java/lang/StringBuilder
    //   764: dup
    //   765: ldc_w 269
    //   768: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   771: aload 12
    //   773: invokevirtual 270	java/net/SocketTimeoutException:getMessage	()Ljava/lang/String;
    //   776: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   779: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   782: pop
    //   783: aload 12
    //   785: invokevirtual 271	java/net/SocketTimeoutException:printStackTrace	()V
    //   788: aload 6
    //   790: ifnull +15 -> 805
    //   793: aload 6
    //   795: invokeinterface 330 1 0
    //   800: invokeinterface 335 1 0
    //   805: aload 4
    //   807: ldc_w 337
    //   810: sipush -3055
    //   813: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   816: aload_0
    //   817: iconst_1
    //   818: aload 4
    //   820: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   823: goto -646 -> 177
    //   826: astore 10
    //   828: aconst_null
    //   829: astore 6
    //   831: sipush -3056
    //   834: istore 7
    //   836: new 152	java/lang/StringBuilder
    //   839: dup
    //   840: ldc_w 401
    //   843: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   846: aload 10
    //   848: invokevirtual 402	java/io/IOException:getMessage	()Ljava/lang/String;
    //   851: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   854: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   857: pop
    //   858: aload 10
    //   860: invokevirtual 200	java/io/IOException:printStackTrace	()V
    //   863: aload 6
    //   865: ifnull +15 -> 880
    //   868: aload 6
    //   870: invokeinterface 330 1 0
    //   875: invokeinterface 335 1 0
    //   880: aload 4
    //   882: ldc_w 337
    //   885: sipush -3056
    //   888: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   891: aload_0
    //   892: iconst_1
    //   893: aload 4
    //   895: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   898: goto -721 -> 177
    //   901: astore 8
    //   903: aconst_null
    //   904: astore 6
    //   906: sipush -3000
    //   909: istore 7
    //   911: new 152	java/lang/StringBuilder
    //   914: dup
    //   915: ldc_w 404
    //   918: invokespecial 157	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   921: aload 8
    //   923: invokevirtual 405	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   926: invokevirtual 164	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   929: invokevirtual 167	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   932: pop
    //   933: aload 8
    //   935: invokevirtual 205	java/lang/Exception:printStackTrace	()V
    //   938: aload 6
    //   940: ifnull +15 -> 955
    //   943: aload 6
    //   945: invokeinterface 330 1 0
    //   950: invokeinterface 335 1 0
    //   955: aload 4
    //   957: ldc_w 337
    //   960: sipush -3000
    //   963: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   966: aload_0
    //   967: iconst_1
    //   968: aload 4
    //   970: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   973: goto -796 -> 177
    //   976: astore 5
    //   978: aconst_null
    //   979: astore 6
    //   981: sipush -3000
    //   984: istore 7
    //   986: aload 6
    //   988: ifnull +15 -> 1003
    //   991: aload 6
    //   993: invokeinterface 330 1 0
    //   998: invokeinterface 335 1 0
    //   1003: iload 7
    //   1005: ifeq +20 -> 1025
    //   1008: aload 4
    //   1010: ldc_w 337
    //   1013: iload 7
    //   1015: invokevirtual 340	android/os/Bundle:putInt	(Ljava/lang/String;I)V
    //   1018: aload_0
    //   1019: iconst_1
    //   1020: aload 4
    //   1022: invokevirtual 263	bth:a	(ILandroid/os/Bundle;)V
    //   1025: aload 5
    //   1027: athrow
    //   1028: aload 6
    //   1030: ifnull -853 -> 177
    //   1033: aload 6
    //   1035: invokeinterface 330 1 0
    //   1040: invokeinterface 335 1 0
    //   1045: goto -868 -> 177
    //   1048: astore 5
    //   1050: sipush -3000
    //   1053: istore 7
    //   1055: goto -69 -> 986
    //   1058: astore 5
    //   1060: goto -74 -> 986
    //   1063: astore 5
    //   1065: aload_3
    //   1066: astore 17
    //   1068: sipush -3051
    //   1071: istore 7
    //   1073: aload 17
    //   1075: astore 6
    //   1077: goto -91 -> 986
    //   1080: astore 8
    //   1082: goto -176 -> 906
    //   1085: astore 10
    //   1087: goto -256 -> 831
    //   1090: astore 12
    //   1092: goto -336 -> 756
    //   1095: astore 14
    //   1097: goto -416 -> 681
    //   1100: astore 16
    //   1102: aload 6
    //   1104: astore_3
    //   1105: goto -492 -> 613
    //
    // Exception table:
    //   from	to	target	type
    //   11	122	611	org/apache/http/client/ClientProtocolException
    //   11	122	676	java/net/SocketException
    //   11	122	751	java/net/SocketTimeoutException
    //   11	122	826	java/io/IOException
    //   11	122	901	java/lang/Exception
    //   11	122	976	finally
    //   122	129	1048	finally
    //   178	370	1058	finally
    //   444	469	1058	finally
    //   558	564	1058	finally
    //   686	713	1058	finally
    //   761	788	1058	finally
    //   836	863	1058	finally
    //   911	938	1058	finally
    //   613	640	1063	finally
    //   122	129	1080	java/lang/Exception
    //   178	370	1080	java/lang/Exception
    //   444	469	1080	java/lang/Exception
    //   558	564	1080	java/lang/Exception
    //   122	129	1085	java/io/IOException
    //   178	370	1085	java/io/IOException
    //   444	469	1085	java/io/IOException
    //   558	564	1085	java/io/IOException
    //   122	129	1090	java/net/SocketTimeoutException
    //   178	370	1090	java/net/SocketTimeoutException
    //   444	469	1090	java/net/SocketTimeoutException
    //   558	564	1090	java/net/SocketTimeoutException
    //   122	129	1095	java/net/SocketException
    //   178	370	1095	java/net/SocketException
    //   444	469	1095	java/net/SocketException
    //   558	564	1095	java/net/SocketException
    //   122	129	1100	org/apache/http/client/ClientProtocolException
    //   178	370	1100	org/apache/http/client/ClientProtocolException
    //   444	469	1100	org/apache/http/client/ClientProtocolException
    //   558	564	1100	org/apache/http/client/ClientProtocolException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     bth
 * JD-Core Version:    0.6.2
 */