import android.content.Context;
import com.tencent.tccdb.LoginUtil;
import com.tencent.tmsecure.common.TMSApplication;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public final class mw
{
  public String a;
  public byte[] b;
  public String c;
  public String d;
  public boolean e = false;
  public LoginUtil f = new LoginUtil();
  private String g;
  private String h;
  private String i;
  private String j;
  private int k;
  private Context l = null;

  public mw()
  {
    a();
  }

  private void a()
  {
    this.a = "";
    this.b = null;
    this.c = "";
    this.g = TMSApplication.getStrFromEnvMap("login_host_url");
    this.h = ft.a(this.l);
    this.i = qx.a().d();
    this.j = "";
    this.k = 16;
  }

  public static byte[] a(String paramString)
  {
    byte[] arrayOfByte = null;
    if (paramString != null)
    {
      boolean bool = "".equals(paramString);
      arrayOfByte = null;
      if (!bool)
        break label21;
    }
    while (true)
    {
      return arrayOfByte;
      try
      {
        label21: MessageDigest localMessageDigest2 = MessageDigest.getInstance("MD5");
        localMessageDigest1 = localMessageDigest2;
      }
      catch (NoSuchAlgorithmException localNoSuchAlgorithmException)
      {
        try
        {
          while (true)
          {
            localMessageDigest1.update(paramString.getBytes("UTF-8"));
            arrayOfByte = localMessageDigest1.digest();
            break;
            localNoSuchAlgorithmException = localNoSuchAlgorithmException;
            localNoSuchAlgorithmException.printStackTrace();
            MessageDigest localMessageDigest1 = null;
          }
        }
        catch (UnsupportedEncodingException localUnsupportedEncodingException)
        {
          while (true)
            localUnsupportedEncodingException.printStackTrace();
        }
      }
    }
  }

  // ERROR //
  public final int a(String paramString, byte[] paramArrayOfByte)
  {
    // Byte code:
    //   0: aload_0
    //   1: iconst_0
    //   2: putfield 28	mw:e	Z
    //   5: aload_0
    //   6: aload_1
    //   7: putfield 46	mw:a	Ljava/lang/String;
    //   10: aload_0
    //   11: aload_2
    //   12: putfield 48	mw:b	[B
    //   15: aload_0
    //   16: getfield 28	mw:e	Z
    //   19: ifeq +11 -> 30
    //   22: sipush -1000
    //   25: istore 5
    //   27: goto +426 -> 453
    //   30: aload_0
    //   31: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   34: aload_0
    //   35: getfield 60	mw:g	Ljava/lang/String;
    //   38: aload_1
    //   39: aload_2
    //   40: aconst_null
    //   41: aload_0
    //   42: getfield 50	mw:c	Ljava/lang/String;
    //   45: aload_0
    //   46: getfield 67	mw:h	Ljava/lang/String;
    //   49: aload_0
    //   50: getfield 77	mw:i	Ljava/lang/String;
    //   53: aload_0
    //   54: getfield 79	mw:j	Ljava/lang/String;
    //   57: iconst_0
    //   58: aload_0
    //   59: getfield 81	mw:k	I
    //   62: invokevirtual 126	com/tencent/tccdb/LoginUtil:makeLoginRequestPackageMd5	(Ljava/lang/String;Ljava/lang/String;[B[BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    //   65: aload_0
    //   66: getfield 28	mw:e	Z
    //   69: ifeq +11 -> 80
    //   72: sipush -1000
    //   75: istore 5
    //   77: goto +376 -> 453
    //   80: aload_0
    //   81: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   84: invokevirtual 129	com/tencent/tccdb/LoginUtil:getPostUrl	()Ljava/lang/String;
    //   87: astore 6
    //   89: new 131	fk
    //   92: dup
    //   93: aload 6
    //   95: invokespecial 134	fk:<init>	(Ljava/lang/String;)V
    //   98: astore 7
    //   100: aload_0
    //   101: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   104: invokevirtual 137	com/tencent/tccdb/LoginUtil:getPostBody	()[B
    //   107: astore 12
    //   109: aload_0
    //   110: getfield 28	mw:e	Z
    //   113: istore 13
    //   115: iload 13
    //   117: ifeq +32 -> 149
    //   120: aload 7
    //   122: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   125: ifnull +17 -> 142
    //   128: aload 7
    //   130: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   133: invokevirtual 145	java/net/HttpURLConnection:disconnect	()V
    //   136: aload 7
    //   138: aconst_null
    //   139: putfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   142: bipush 156
    //   144: istore 5
    //   146: goto +307 -> 453
    //   149: aload 7
    //   151: iconst_0
    //   152: invokevirtual 148	fk:a	(I)V
    //   155: aload 7
    //   157: aload 12
    //   159: invokevirtual 151	fk:a	([B)I
    //   162: pop
    //   163: aload 7
    //   165: invokevirtual 154	fk:a	()I
    //   168: pop
    //   169: aload_0
    //   170: getfield 28	mw:e	Z
    //   173: istore 16
    //   175: iload 16
    //   177: ifeq +33 -> 210
    //   180: aload 7
    //   182: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   185: ifnull +17 -> 202
    //   188: aload 7
    //   190: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   193: invokevirtual 145	java/net/HttpURLConnection:disconnect	()V
    //   196: aload 7
    //   198: aconst_null
    //   199: putfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   202: sipush -1000
    //   205: istore 5
    //   207: goto +246 -> 453
    //   210: aload 7
    //   212: invokevirtual 156	fk:b	()[B
    //   215: astore 17
    //   217: aload 17
    //   219: astore 10
    //   221: aload 7
    //   223: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   226: ifnull +17 -> 243
    //   229: aload 7
    //   231: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   234: invokevirtual 145	java/net/HttpURLConnection:disconnect	()V
    //   237: aload 7
    //   239: aconst_null
    //   240: putfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   243: aload 10
    //   245: ifnonnull +104 -> 349
    //   248: aload_0
    //   249: invokespecial 42	mw:a	()V
    //   252: aload_0
    //   253: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   256: invokevirtual 159	com/tencent/tccdb/LoginUtil:clear	()V
    //   259: bipush 156
    //   261: istore 5
    //   263: goto +190 -> 453
    //   266: astore 8
    //   268: aconst_null
    //   269: astore 7
    //   271: aload 8
    //   273: invokevirtual 160	java/lang/Exception:printStackTrace	()V
    //   276: aload 7
    //   278: ifnull +169 -> 447
    //   281: aload 7
    //   283: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   286: ifnull +170 -> 456
    //   289: aload 7
    //   291: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   294: invokevirtual 145	java/net/HttpURLConnection:disconnect	()V
    //   297: aload 7
    //   299: aconst_null
    //   300: putfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   303: goto +153 -> 456
    //   306: aload 7
    //   308: ifnull +25 -> 333
    //   311: aload 7
    //   313: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   316: ifnull +17 -> 333
    //   319: aload 7
    //   321: getfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   324: invokevirtual 145	java/net/HttpURLConnection:disconnect	()V
    //   327: aload 7
    //   329: aconst_null
    //   330: putfield 140	fk:a	Ljava/net/HttpURLConnection;
    //   333: aload 9
    //   335: athrow
    //   336: astore_3
    //   337: aload_3
    //   338: invokevirtual 163	java/lang/Throwable:getMessage	()Ljava/lang/String;
    //   341: pop
    //   342: bipush 155
    //   344: istore 5
    //   346: goto +107 -> 453
    //   349: aload_0
    //   350: getfield 28	mw:e	Z
    //   353: ifeq +11 -> 364
    //   356: sipush -1000
    //   359: istore 5
    //   361: goto +92 -> 453
    //   364: aload_0
    //   365: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   368: aload 10
    //   370: aload 10
    //   372: arraylength
    //   373: invokevirtual 167	com/tencent/tccdb/LoginUtil:solveLoginResponPackge	([BI)I
    //   376: istore 5
    //   378: aload_0
    //   379: getfield 28	mw:e	Z
    //   382: ifeq +88 -> 470
    //   385: sipush -1000
    //   388: istore 5
    //   390: goto +63 -> 453
    //   393: aload_0
    //   394: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   397: invokevirtual 170	com/tencent/tccdb/LoginUtil:getKey	()Ljava/lang/String;
    //   400: pop
    //   401: aload_0
    //   402: aload_0
    //   403: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   406: invokevirtual 173	com/tencent/tccdb/LoginUtil:getWapSid	()Ljava/lang/String;
    //   409: putfield 175	mw:d	Ljava/lang/String;
    //   412: iload 5
    //   414: bipush 101
    //   416: if_icmpeq +37 -> 453
    //   419: iload 5
    //   421: sipush 209
    //   424: if_icmpeq +29 -> 453
    //   427: aload_0
    //   428: getfield 40	mw:f	Lcom/tencent/tccdb/LoginUtil;
    //   431: invokevirtual 159	com/tencent/tccdb/LoginUtil:clear	()V
    //   434: goto +19 -> 453
    //   437: astore 9
    //   439: goto -133 -> 306
    //   442: astore 8
    //   444: goto -173 -> 271
    //   447: aconst_null
    //   448: astore 10
    //   450: goto -207 -> 243
    //   453: iload 5
    //   455: ireturn
    //   456: aconst_null
    //   457: astore 10
    //   459: goto -216 -> 243
    //   462: astore 9
    //   464: aconst_null
    //   465: astore 7
    //   467: goto -161 -> 306
    //   470: iload 5
    //   472: ifeq -79 -> 393
    //   475: sipush 1003
    //   478: iload 5
    //   480: if_icmpne -68 -> 412
    //   483: goto -90 -> 393
    //
    // Exception table:
    //   from	to	target	type
    //   89	100	266	java/lang/Exception
    //   5	89	336	java/lang/Throwable
    //   120	142	336	java/lang/Throwable
    //   180	202	336	java/lang/Throwable
    //   221	259	336	java/lang/Throwable
    //   281	336	336	java/lang/Throwable
    //   349	434	336	java/lang/Throwable
    //   100	115	437	finally
    //   149	175	437	finally
    //   210	217	437	finally
    //   271	276	437	finally
    //   100	115	442	java/lang/Exception
    //   149	175	442	java/lang/Exception
    //   210	217	442	java/lang/Exception
    //   89	100	462	finally
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     mw
 * JD-Core Version:    0.6.2
 */