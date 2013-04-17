import android.content.Context;
import android.os.Handler;
import org.apache.http.client.HttpClient;

public final class dl
{
  do a = null;
  public Thread b = null;
  public String c = null;
  public byte[] d = null;
  public HttpClient e = null;
  public Context f = null;
  Handler g = new dm(this);

  public dl(do paramdo)
  {
    this.a = paramdo;
  }

  // ERROR //
  public final void a(org.apache.http.client.methods.HttpUriRequest paramHttpUriRequest, int paramInt)
  {
    // Byte code:
    //   0: sipush 200
    //   3: istore_3
    //   4: aload_0
    //   5: new 51	org/apache/http/impl/client/DefaultHttpClient
    //   8: dup
    //   9: invokespecial 52	org/apache/http/impl/client/DefaultHttpClient:<init>	()V
    //   12: putfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   15: aload_0
    //   16: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   19: invokeinterface 58 1 0
    //   24: ldc 60
    //   26: sipush 2000
    //   29: invokestatic 66	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   32: invokeinterface 72 3 0
    //   37: pop
    //   38: aload_0
    //   39: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   42: invokeinterface 58 1 0
    //   47: ldc 74
    //   49: sipush 30000
    //   52: invokestatic 66	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   55: invokeinterface 72 3 0
    //   60: pop
    //   61: aload_0
    //   62: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   65: invokeinterface 58 1 0
    //   70: ldc 76
    //   72: iconst_0
    //   73: invokeinterface 80 3 0
    //   78: pop
    //   79: iload_2
    //   80: iconst_3
    //   81: if_icmpne +60 -> 141
    //   84: aload_0
    //   85: getfield 35	dl:f	Landroid/content/Context;
    //   88: invokestatic 86	android/net/Proxy:getHost	(Landroid/content/Context;)Ljava/lang/String;
    //   91: astore 33
    //   93: aload_0
    //   94: getfield 35	dl:f	Landroid/content/Context;
    //   97: invokestatic 90	android/net/Proxy:getPort	(Landroid/content/Context;)I
    //   100: istore 34
    //   102: aload 33
    //   104: ifnull +37 -> 141
    //   107: iconst_m1
    //   108: iload 34
    //   110: if_icmpeq +31 -> 141
    //   113: aload_0
    //   114: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   117: invokeinterface 58 1 0
    //   122: ldc 92
    //   124: new 94	org/apache/http/HttpHost
    //   127: dup
    //   128: aload 33
    //   130: iload 34
    //   132: invokespecial 97	org/apache/http/HttpHost:<init>	(Ljava/lang/String;I)V
    //   135: invokeinterface 72 3 0
    //   140: pop
    //   141: aload_0
    //   142: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   145: aload_1
    //   146: invokeinterface 101 2 0
    //   151: astore 22
    //   153: aload 22
    //   155: invokeinterface 107 1 0
    //   160: invokeinterface 113 1 0
    //   165: istore 23
    //   167: iload 23
    //   169: istore 24
    //   171: aconst_null
    //   172: astore 25
    //   174: iload_3
    //   175: iload 24
    //   177: if_icmpne +24 -> 201
    //   180: aload 22
    //   182: invokeinterface 117 1 0
    //   187: astore 32
    //   189: aload 32
    //   191: astore 25
    //   193: aload 25
    //   195: ifnonnull +6 -> 201
    //   198: iconst_5
    //   199: istore 24
    //   201: aload_0
    //   202: getfield 42	dl:g	Landroid/os/Handler;
    //   205: iload 24
    //   207: iconst_0
    //   208: iconst_0
    //   209: aload 25
    //   211: invokevirtual 123	android/os/Handler:obtainMessage	(IIILjava/lang/Object;)Landroid/os/Message;
    //   214: astore 26
    //   216: aload_0
    //   217: getfield 42	dl:g	Landroid/os/Handler;
    //   220: aload 26
    //   222: invokevirtual 127	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   225: pop
    //   226: aload_0
    //   227: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   230: invokeinterface 131 1 0
    //   235: invokeinterface 136 1 0
    //   240: return
    //   241: astore 18
    //   243: aload 18
    //   245: invokevirtual 140	org/apache/http/client/ClientProtocolException:getMessage	()Ljava/lang/String;
    //   248: pop
    //   249: aload 18
    //   251: invokevirtual 143	org/apache/http/client/ClientProtocolException:printStackTrace	()V
    //   254: aload_0
    //   255: getfield 42	dl:g	Landroid/os/Handler;
    //   258: iconst_1
    //   259: iconst_0
    //   260: iconst_0
    //   261: aconst_null
    //   262: invokevirtual 123	android/os/Handler:obtainMessage	(IIILjava/lang/Object;)Landroid/os/Message;
    //   265: astore 20
    //   267: aload_0
    //   268: getfield 42	dl:g	Landroid/os/Handler;
    //   271: aload 20
    //   273: invokevirtual 127	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   276: pop
    //   277: aload_0
    //   278: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   281: invokeinterface 131 1 0
    //   286: invokeinterface 136 1 0
    //   291: goto -51 -> 240
    //   294: astore 14
    //   296: aload 14
    //   298: invokevirtual 144	java/io/IOException:getMessage	()Ljava/lang/String;
    //   301: pop
    //   302: aload 14
    //   304: invokevirtual 145	java/io/IOException:printStackTrace	()V
    //   307: aload_0
    //   308: getfield 42	dl:g	Landroid/os/Handler;
    //   311: iconst_2
    //   312: iconst_0
    //   313: iconst_0
    //   314: aconst_null
    //   315: invokevirtual 123	android/os/Handler:obtainMessage	(IIILjava/lang/Object;)Landroid/os/Message;
    //   318: astore 16
    //   320: aload_0
    //   321: getfield 42	dl:g	Landroid/os/Handler;
    //   324: aload 16
    //   326: invokevirtual 127	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   329: pop
    //   330: aload_0
    //   331: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   334: invokeinterface 131 1 0
    //   339: invokeinterface 136 1 0
    //   344: goto -104 -> 240
    //   347: astore 10
    //   349: aload 10
    //   351: invokevirtual 146	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   354: pop
    //   355: aload_0
    //   356: getfield 42	dl:g	Landroid/os/Handler;
    //   359: iconst_3
    //   360: iconst_0
    //   361: iconst_0
    //   362: aconst_null
    //   363: invokevirtual 123	android/os/Handler:obtainMessage	(IIILjava/lang/Object;)Landroid/os/Message;
    //   366: astore 12
    //   368: aload_0
    //   369: getfield 42	dl:g	Landroid/os/Handler;
    //   372: aload 12
    //   374: invokevirtual 127	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   377: pop
    //   378: aload_0
    //   379: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   382: invokeinterface 131 1 0
    //   387: invokeinterface 136 1 0
    //   392: goto -152 -> 240
    //   395: astore 7
    //   397: aload_0
    //   398: getfield 42	dl:g	Landroid/os/Handler;
    //   401: iload_3
    //   402: iconst_0
    //   403: iconst_0
    //   404: aconst_null
    //   405: invokevirtual 123	android/os/Handler:obtainMessage	(IIILjava/lang/Object;)Landroid/os/Message;
    //   408: astore 8
    //   410: aload_0
    //   411: getfield 42	dl:g	Landroid/os/Handler;
    //   414: aload 8
    //   416: invokevirtual 127	android/os/Handler:sendMessage	(Landroid/os/Message;)Z
    //   419: pop
    //   420: aload_0
    //   421: getfield 33	dl:e	Lorg/apache/http/client/HttpClient;
    //   424: invokeinterface 131 1 0
    //   429: invokeinterface 136 1 0
    //   434: aload 7
    //   436: athrow
    //   437: astore 31
    //   439: iload 24
    //   441: istore_3
    //   442: aload 31
    //   444: astore 7
    //   446: goto -49 -> 397
    //   449: astore 7
    //   451: iconst_1
    //   452: istore_3
    //   453: goto -56 -> 397
    //   456: astore 7
    //   458: iconst_2
    //   459: istore_3
    //   460: goto -63 -> 397
    //   463: astore 30
    //   465: iload 24
    //   467: istore_3
    //   468: aload 30
    //   470: astore 10
    //   472: goto -123 -> 349
    //   475: astore 29
    //   477: iload 24
    //   479: istore_3
    //   480: aload 29
    //   482: astore 14
    //   484: goto -188 -> 296
    //   487: astore 28
    //   489: iload 24
    //   491: istore_3
    //   492: aload 28
    //   494: astore 18
    //   496: goto -253 -> 243
    //
    // Exception table:
    //   from	to	target	type
    //   141	167	241	org/apache/http/client/ClientProtocolException
    //   141	167	294	java/io/IOException
    //   141	167	347	java/lang/Exception
    //   141	167	395	finally
    //   243	249	395	finally
    //   296	302	395	finally
    //   349	355	395	finally
    //   180	189	437	finally
    //   249	254	449	finally
    //   302	307	456	finally
    //   180	189	463	java/lang/Exception
    //   180	189	475	java/io/IOException
    //   180	189	487	org/apache/http/client/ClientProtocolException
  }
}

/* Location:           C:\Users\sandrocheng.21KUNPENG\Desktop\classes_dex2jar.jar
 * Qualified Name:     dl
 * JD-Core Version:    0.6.2
 */